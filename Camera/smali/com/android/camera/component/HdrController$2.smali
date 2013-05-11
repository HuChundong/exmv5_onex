.class Lcom/android/camera/component/HdrController$2;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


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


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    iput-object p2, p0, Lcom/android/camera/component/HdrController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/HdrController$2;->val$handle:Lcom/android/camera/CaptureHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$200(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPEG call-back timeout"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/HdrController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/android/camera/component/HdrController;->access$302(Lcom/android/camera/component/HdrController;Lcom/android/camera/CaptureHandle;)Lcom/android/camera/CaptureHandle;

    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    const-string v1, "HDR JPEG"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$400(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$400(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/component/HdrController$2;->val$handle:Lcom/android/camera/CaptureHandle;

    aput-object v4, v5, v3

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HdrController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$500(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
