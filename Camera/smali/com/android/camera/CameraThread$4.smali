.class Lcom/android/camera/CameraThread$4;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->handleCommonJpegCallback([BLandroid/hardware/Camera;Z)V
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

    iput-object p1, p0, Lcom/android/camera/CameraThread$4;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraThread$4;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mProcessingDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "handleCommonJpegCallback() - hide WDR processing UI."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread$4;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraThread$4;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mProcessingDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraThread$4;->this$0:Lcom/android/camera/CameraThread;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mProcessingDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v1, v2}, Lcom/android/camera/CameraThread;->access$002(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    :cond_0
    return-void

    :cond_1
    const-string v1, "CameraThread"

    const-string v2, "handleCommonJpegCallback() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
