.class Lcom/android/camera/component/HdrController$4;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;

.field final synthetic val$timerHandle:Lcom/android/camera/Handle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CaptureHandle;Lcom/android/camera/Handle;Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    iput-object p2, p0, Lcom/android/camera/component/HdrController$4;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-object p3, p0, Lcom/android/camera/component/HdrController$4;->val$timerHandle:Lcom/android/camera/Handle;

    iput-object p4, p0, Lcom/android/camera/component/HdrController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HdrController$4;->val$handle:Lcom/android/camera/CaptureHandle;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$900(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid capture handle, ignore JPEG call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/android/camera/component/HdrController;->access$302(Lcom/android/camera/component/HdrController;Lcom/android/camera/CaptureHandle;)Lcom/android/camera/CaptureHandle;

    const-string v0, "HDR"

    invoke-static {v0}, Lcom/android/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->val$timerHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$1000(Lcom/android/camera/component/HdrController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HdrController$4;->val$timerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$400(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$400(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/component/HdrController$4;->val$handle:Lcom/android/camera/CaptureHandle;

    aput-object v4, v5, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HdrController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$4;->val$handle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    new-instance v6, Lcom/android/camera/io/SaveImageTask;

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v6, v0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-object v0, v6, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$1100(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
