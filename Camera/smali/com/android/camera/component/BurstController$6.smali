.class Lcom/android/camera/component/BurstController$6;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;

.field final synthetic val$cameraController:Lcom/android/camera/CameraController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$6;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-object p4, p0, Lcom/android/camera/component/BurstController$6;->val$cameraController:Lcom/android/camera/CameraController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG Callback["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v4}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "], JPEG-data size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    array-length v0, p1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v2, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)I

    move-result v2

    #calls: Lcom/android/camera/component/BurstController;->createPostviewImage(ILandroid/hardware/Camera;)V
    invoke-static {v0, v2, p2}, Lcom/android/camera/component/BurstController;->access$1400(Lcom/android/camera/component/BurstController;ILandroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1204(Lcom/android/camera/component/BurstController;)I

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CaptureCount:I
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$200(Lcom/android/camera/component/BurstController;)I

    move-result v2

    if-lt v0, v2, :cond_3

    move v6, v1

    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    :cond_0
    new-instance v7, Lcom/android/camera/component/BurstController$SaveBurstImageTask;

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-direct {v7, v0, p1}, Lcom/android/camera/component/BurstController$SaveBurstImageTask;-><init>(Lcom/android/camera/component/BurstController;[B)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-object v0, v7, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/component/BurstController;->access$1500()Lcom/android/camera/io/DCFInfo;

    move-result-object v0

    :goto_2
    iput-object v0, v7, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iput-boolean v6, v7, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->isLastMedia:Z

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->val$cameraController:Lcom/android/camera/CameraController;

    const-string v2, "picture-count"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->val$cameraController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->val$handle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v5, p0, Lcom/android/camera/component/BurstController$6;->val$handle:Lcom/android/camera/CaptureHandle;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    const/4 v0, 0x0

    check-cast v0, [[B

    #setter for: Lcom/android/camera/component/BurstController;->m_postviewData:[[B
    invoke-static {v1, v0}, Lcom/android/camera/component/BurstController;->access$1102(Lcom/android/camera/component/BurstController;[[B)[[B

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1600(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPEG Callback end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v3

    goto/16 :goto_0

    :cond_3
    move v6, v3

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    goto :goto_2
.end method
