.class Lcom/android/camera/component/RecordingLimitController$3;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingLimitController;->initializeOverride()V
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
        "Lcom/android/camera/io/MediaSaveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingLimitController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController$3;->this$0:Lcom/android/camera/component/RecordingLimitController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/RecordingLimitController$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/io/MediaSaveEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, v0, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$3;->this$0:Lcom/android/camera/component/RecordingLimitController;

    iget-object v1, p3, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    #setter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/camera/component/RecordingLimitController;->access$102(Lcom/android/camera/component/RecordingLimitController;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_0
    return-void
.end method
