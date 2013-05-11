.class Lcom/android/camera/component/HdrController$1;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/HdrController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController$1;->this$0:Lcom/android/camera/component/HdrController;

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

    iget-object v0, p0, Lcom/android/camera/component/HdrController$1;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_IsEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$000(Lcom/android/camera/component/HdrController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$1;->this$0:Lcom/android/camera/component/HdrController;

    iget-object v1, p3, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/component/HdrController;->setCaptureMode(Lcom/android/camera/CameraController;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/HdrController;->access$100(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraController;Z)V

    invoke-virtual {p3}, Lcom/android/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/HdrController$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
