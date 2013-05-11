.class final Lcom/android/camera/effect/SceneController;
.super Lcom/android/camera/effect/ISceneController;
.source "SceneController.java"


# static fields
.field private static final MSG_SET_SCENE:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Scene Controller"


# instance fields
.field private m_Scene:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3

    const-string v0, "Scene Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/effect/ISceneController;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/effect/SceneController;->m_Scene:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/SceneController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/SceneController;->m_Scene:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/effect/SceneController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/SceneController;->m_Scene:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/effect/SceneController;->setScene(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/ISceneController;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/effect/ISceneController;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/effect/SceneController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/SceneController$1;-><init>(Lcom/android/camera/effect/SceneController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/effect/SceneController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/SceneController$2;-><init>(Lcom/android/camera/effect/SceneController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method public setScene(Ljava/lang/String;Z)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setScene("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Called from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2711

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    move-object v0, p0

    move-object v1, p0

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/SceneController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/SceneController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "auto"

    :cond_3
    iput-object p1, p0, Lcom/android/camera/effect/SceneController;->m_Scene:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v7}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method
