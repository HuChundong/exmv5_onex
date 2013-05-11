.class final Lcom/android/camera/CameraThread$ErrorListener;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder Error, what is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3d0

    if-ne p2, v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "*********** HtcWrapMediaRecorder.CAMERA_STEREO_PROHIBIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$1400(Lcom/android/camera/CameraThread;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$MainHandler;

    move-result-object v0

    const/16 v1, 0x2726

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "*********** Other Errors"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
