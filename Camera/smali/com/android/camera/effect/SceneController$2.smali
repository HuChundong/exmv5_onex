.class Lcom/android/camera/effect/SceneController$2;
.super Ljava/lang/Object;
.source "SceneController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/SceneController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/effect/SceneController;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/SceneController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/SceneController$2;->this$0:Lcom/android/camera/effect/SceneController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V
    .locals 2
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

    iget-object v0, p0, Lcom/android/camera/effect/SceneController$2;->this$0:Lcom/android/camera/effect/SceneController;

    #getter for: Lcom/android/camera/effect/SceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/SceneController;->access$000(Lcom/android/camera/effect/SceneController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/SceneController$2;->this$0:Lcom/android/camera/effect/SceneController;

    #getter for: Lcom/android/camera/effect/SceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/SceneController;->access$000(Lcom/android/camera/effect/SceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    iget-object v1, p0, Lcom/android/camera/effect/SceneController$2;->this$0:Lcom/android/camera/effect/SceneController;

    #getter for: Lcom/android/camera/effect/SceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/SceneController;->access$000(Lcom/android/camera/effect/SceneController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/SceneController$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
