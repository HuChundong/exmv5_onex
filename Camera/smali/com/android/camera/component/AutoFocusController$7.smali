.class Lcom/android/camera/component/AutoFocusController$7;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->initializeOverride()V
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
        "Lcom/android/camera/CameraParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v1}, Lcom/android/camera/component/AutoFocusController;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/android/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    return-void

    :cond_1
    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/AutoFocusController$7;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
