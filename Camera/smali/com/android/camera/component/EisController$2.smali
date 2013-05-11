.class Lcom/android/camera/component/EisController$2;
.super Ljava/lang/Object;
.source "EisController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/EisController;->takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/EisController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/EisController;Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/EisController$2;->this$0:Lcom/android/camera/component/EisController;

    iput-object p2, p0, Lcom/android/camera/component/EisController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/EisController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/EisController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    :cond_0
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v0, p0, Lcom/android/camera/component/EisController$2;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/component/EisController;->m_IsUiNeeded:Z
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$300(Lcom/android/camera/component/EisController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/EisController$2;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$400(Lcom/android/camera/component/EisController;)Lcom/android/camera/component/EisUI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/EisController$2;->this$0:Lcom/android/camera/component/EisController;

    iget-object v1, p0, Lcom/android/camera/component/EisController$2;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;
    invoke-static {v1}, Lcom/android/camera/component/EisController;->access$400(Lcom/android/camera/component/EisController;)Lcom/android/camera/component/EisUI;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/EisController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/EisController$2;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$500(Lcom/android/camera/component/EisController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PROCESSING_PHOTO"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
