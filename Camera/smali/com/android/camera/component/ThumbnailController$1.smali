.class Lcom/android/camera/component/ThumbnailController$1;
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

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CaptureEventArgs;)V
    .locals 4
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

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$000(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p3, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$100(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$000(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$200(Lcom/android/camera/component/ThumbnailController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailController;->access$100(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;

    move-result-object v2

    const/16 v3, 0x2712

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ThumbnailController$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CaptureEventArgs;)V

    return-void
.end method
