.class Lcom/android/camera/component/HtcCallbackController$2;
.super Ljava/lang/Object;
.source "HtcCallbackController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HtcCallbackController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HtcCallbackController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HtcCallbackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HtcCallbackController$2;->this$0:Lcom/android/camera/component/HtcCallbackController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/HtcCallbackController$2;->this$0:Lcom/android/camera/component/HtcCallbackController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HtcCallbackController;->access$100(Lcom/android/camera/component/HtcCallbackController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup HTC call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/HtcCallbackController$2;->this$0:Lcom/android/camera/component/HtcCallbackController;

    invoke-virtual {v0}, Lcom/android/camera/component/HtcCallbackController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHtcWrapCamera()Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HtcCallbackController$2;->this$0:Lcom/android/camera/component/HtcCallbackController;

    invoke-virtual {v1}, Lcom/android/camera/component/HtcCallbackController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/HtcCallbackController$2;->this$0:Lcom/android/camera/component/HtcCallbackController;

    invoke-virtual {v0, v1, v2}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->setHtcCallback(Landroid/hardware/Camera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;)V

    return-void
.end method
