.class Lcom/android/camera/component/ContinuousBurstController$2;
.super Ljava/lang/Object;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController$2;->this$0:Lcom/android/camera/component/ContinuousBurstController;

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

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$2;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    iget-object v1, p3, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    #calls: Lcom/android/camera/component/ContinuousBurstController;->setupParamsBeforeTakingPicture(Lcom/android/camera/CameraController;)Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->access$700(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CameraController;)Z

    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ContinuousBurstController$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
