.class Lcom/android/camera/component/HdrController$3;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrController;->takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrController;

.field final synthetic val$audioManager:Lcom/android/camera/IAudioManager;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraThread;Lcom/android/camera/IAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    iput-object p2, p0, Lcom/android/camera/component/HdrController$3;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-object p3, p0, Lcom/android/camera/component/HdrController$3;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p4, p0, Lcom/android/camera/component/HdrController$3;->val$audioManager:Lcom/android/camera/IAudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HdrController$3;->val$handle:Lcom/android/camera/CaptureHandle;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$600(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid capture handle, ignore shutter call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HDR"

    invoke-static {v0}, Lcom/android/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->val$audioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$700(Lcom/android/camera/component/HdrController;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->val$audioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$700(Lcom/android/camera/component/HdrController;)Lcom/android/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v3, v2}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$400(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$400(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HdrController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/HdrController$3;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$800(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PROCESSING_PHOTO"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
