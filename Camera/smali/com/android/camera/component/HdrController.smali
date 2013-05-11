.class public final Lcom/android/camera/component/HdrController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "HdrController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;


# static fields
.field static final MSG_ENTER_HDR:I = 0x2711

.field static final MSG_EXIT_HDR:I = 0x2712

.field static final MSG_LINK:I = 0x2710

.field public static final NAME:Ljava/lang/String; = "HDR Controller"

.field private static final TIMEOUT_JPEG_CALLBACK:J = 0x4e20L


# instance fields
.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private m_HdrUI:Lcom/android/camera/component/HdrUI;

.field private m_IsEntered:Z

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;

.field private m_ShutterSoundHandle:Lcom/android/camera/Handle;

.field private m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "HDR Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HdrController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HdrController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraController;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/HdrController;->setCaptureMode(Lcom/android/camera/CameraController;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/HdrController;)Lcom/android/camera/debug/IOperationTimeoutController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/HdrController;Lcom/android/camera/CaptureHandle;)Lcom/android/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/HdrController;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

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

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onEnterHdr()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/component/HdrController;->m_IsEntered:Z

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v1, v4}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v3}, Lcom/android/camera/component/HdrController;->setCaptureMode(Lcom/android/camera/CameraController;Z)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onEnterHdr() - Restart preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraThread;->startPreviewSilently(Z)Lcom/android/camera/CameraPreviewStartResult;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onEnterHdr() - Cannot set capture mode to hdr because there is no camera controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExitHdr()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v3}, Lcom/android/camera/component/HdrController;->setCaptureMode(Lcom/android/camera/CameraController;Z)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExitHdr() - Restart preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->startPreviewSilently(Z)Lcom/android/camera/CameraPreviewStartResult;

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/component/HdrController;->m_IsEntered:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot set capture mode to normal because there is no camera controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureMode(Lcom/android/camera/CameraController;Z)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Set capture mode to HDR"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "capture-mode"

    const-string v1, "hdr"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Set capture mode to normal"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "capture-mode"

    const-string v1, "zsl"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "capture-mode"

    const-string v1, "normal"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No camera controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->onEnterHdr()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->onExitHdr()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/HdrUI;

    iput-object v0, p0, Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    const-class v0, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectController;

    iput-object v0, p0, Lcom/android/camera/component/HdrController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const-class v0, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ISceneController;

    iput-object v0, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/HdrController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/HdrController$1;-><init>(Lcom/android/camera/component/HdrController;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/HdrController;->m_IsEntered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/IAudioManager;

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v0, :cond_1

    const v0, 0x7f060005

    invoke-interface {v7, v0}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-nez v0, :cond_2

    const-class v0, Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object v0, p0, Lcom/android/camera/component/HdrController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "HDR JPEG call-back"

    const-wide/16 v2, 0x4e20

    new-instance v4, Lcom/android/camera/component/HdrController$2;

    invoke-direct {v4, p0, v8, p1}, Lcom/android/camera/component/HdrController$2;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    :goto_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    new-instance v0, Lcom/android/camera/component/HdrController$3;

    invoke-direct {v0, p0, p1, v8, v7}, Lcom/android/camera/component/HdrController$3;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraThread;Lcom/android/camera/IAudioManager;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/HdrController$4;

    invoke-direct {v2, p0, p1, v10, v8}, Lcom/android/camera/component/HdrController$4;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CaptureHandle;Lcom/android/camera/Handle;Lcom/android/camera/CameraThread;)V

    invoke-virtual {p3, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :catch_0
    move-exception v9

    iput-object v6, p0, Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v10, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_5
    throw v9
.end method
