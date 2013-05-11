.class Lcom/android/camera/CameraThread$6;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$302(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$400(Lcom/android/camera/CameraThread;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    const-string v1, "Shutter"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread$6;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/CameraThread;->handleCommonJpegCallback([BLandroid/hardware/Camera;Z)V

    goto :goto_0
.end method
