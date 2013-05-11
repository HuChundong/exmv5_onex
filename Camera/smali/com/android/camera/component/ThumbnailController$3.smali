.class Lcom/android/camera/component/ThumbnailController$3;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailController;->initializeOverride()V
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
        "Lcom/android/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$3;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CaptureEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$3;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v1, p3, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    #calls: Lcom/android/camera/component/ThumbnailController;->onMediaCaptureStarted(Lcom/android/camera/CaptureHandle;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailController;->access$400(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/CaptureHandle;)V

    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ThumbnailController$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CaptureEventArgs;)V

    return-void
.end method
