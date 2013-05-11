.class Lcom/android/camera/component/PanoramaController$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear Scalado resources timeout"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraThreadBlockReason;->BlockedIn3rdPartyLibrary:Lcom/android/camera/CameraThreadBlockReason;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->notifyCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V

    return-void
.end method
