.class public final Lcom/android/camera/component/EisController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "EisController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;


# static fields
.field public static final KEY_CAPTURE_MODE:Ljava/lang/String; = "capture-mode"

.field static final MSG_ENTER_EIS:I = 0x2711

.field static final MSG_EXIT_EIS:I = 0x2712

.field static final MSG_LINK:I = 0x2710

.field public static final NAME:Ljava/lang/String; = "Eis Controller"

.field public static final VALUE_SET_EIS_MODE:Ljava/lang/String; = "eis"


# instance fields
.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private m_EisUI:Lcom/android/camera/component/EisUI;

.field private m_IsEntered:Z

.field private m_IsTakingPicture:Z

.field private m_IsUiNeeded:Z

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Eis Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/EisController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/EisController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/EisController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/EisController;->m_IsTakingPicture:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/EisController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/EisController;->m_IsTakingPicture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/EisController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/EisController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/EisController;->m_IsUiNeeded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/EisController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/EisController;->m_IsUiNeeded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/EisController;)Lcom/android/camera/component/EisUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/EisController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/EisController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/EisController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/EisController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onEnterEis()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/EisController;->m_IsEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/EisController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/EisController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/camera/component/EisController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/EisController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/EisController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onExitEis()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/EisController;->m_IsEntered:Z

    return-void
.end method

.method private setupEventHandlers()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/EisController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/EisController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/EisController$1;-><init>(Lcom/android/camera/component/EisController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
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
    invoke-direct {p0}, Lcom/android/camera/component/EisController;->onEnterEis()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/EisController;->onExitEis()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/EisUI;

    iput-object v0, p0, Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    const-class v0, Lcom/android/camera/component/EisUI;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/EisController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/EisUI;

    iput-object v0, p0, Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;

    iget-object v0, p0, Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;

    const/4 v2, 0x3

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/EisController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    const-class v0, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/EisController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectController;

    iput-object v0, p0, Lcom/android/camera/component/EisController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const-class v0, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/EisController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ISceneController;

    iput-object v0, p0, Lcom/android/camera/component/EisController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    iput-boolean v3, p0, Lcom/android/camera/component/EisController;->m_IsTakingPicture:Z

    iput-boolean v3, p0, Lcom/android/camera/component/EisController;->m_IsUiNeeded:Z

    invoke-direct {p0}, Lcom/android/camera/component/EisController;->setupEventHandlers()V

    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 5

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/camera/component/EisController;->m_IsEntered:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "takePicture() - Set capture mode to Eis"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "capture-mode"

    const-string v3, "eis"

    invoke-virtual {p2, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/EisController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    sget-object v2, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->Start()V

    iput-boolean v1, p0, Lcom/android/camera/component/EisController;->m_IsTakingPicture:Z

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/camera/component/EisController$2;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/component/EisController$2;-><init>(Lcom/android/camera/component/EisController;Lcom/android/camera/CameraThread;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/camera/component/EisController$3;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/camera/component/EisController$3;-><init>(Lcom/android/camera/component/EisController;Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraThread;)V

    invoke-virtual {p3, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "takePicture() - Cannot set capture mode to eis because there is no camera controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
