.class Lcom/android/camera/component/PanoramaController$11;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController;->takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$11;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/PanoramaController$11;->val$handle:Lcom/android/camera/CaptureHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$5400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaladoCamera.JpegCallback"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3800(Lcom/android/camera/component/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PANORAMA"

    invoke-static {v0}, Lcom/android/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$5500(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$5502(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11;->val$cameraThread:Lcom/android/camera/CameraThread;

    new-instance v1, Lcom/android/camera/component/PanoramaController$11$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/PanoramaController$11$1;-><init>(Lcom/android/camera/component/PanoramaController$11;[B)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
