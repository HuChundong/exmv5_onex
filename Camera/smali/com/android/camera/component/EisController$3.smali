.class Lcom/android/camera/component/EisController$3;
.super Ljava/lang/Object;
.source "EisController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/EisController;Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    iput-object p2, p0, Lcom/android/camera/component/EisController$3;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-object p3, p0, Lcom/android/camera/component/EisController$3;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    #setter for: Lcom/android/camera/component/EisController;->m_IsUiNeeded:Z
    invoke-static {v0, v3}, Lcom/android/camera/component/EisController;->access$302(Lcom/android/camera/component/EisController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$400(Lcom/android/camera/component/EisController;)Lcom/android/camera/component/EisUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    iget-object v1, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/component/EisController;->m_EisUI:Lcom/android/camera/component/EisUI;
    invoke-static {v1}, Lcom/android/camera/component/EisController;->access$400(Lcom/android/camera/component/EisController;)Lcom/android/camera/component/EisUI;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/component/EisController$3;->val$handle:Lcom/android/camera/CaptureHandle;

    aput-object v4, v5, v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v8

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/EisController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    #setter for: Lcom/android/camera/component/EisController;->m_IsTakingPicture:Z
    invoke-static {v0, v3}, Lcom/android/camera/component/EisController;->access$102(Lcom/android/camera/component/EisController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$700(Lcom/android/camera/component/EisController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPictureTaken() - Set capture mode to normal"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "capture-mode"

    const-string v1, "zsl"

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->val$cameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/component/EisController$3;->val$handle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    new-instance v7, Lcom/android/camera/io/SaveImageTask;

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v7, v0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-object v0, v7, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$600(Lcom/android/camera/component/EisController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "capture-mode"

    const-string v1, "normal"

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/EisController$3;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$800(Lcom/android/camera/component/EisController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot set capture mode to normal because there is no camera controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
