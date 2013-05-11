.class Lcom/android/camera/component/ThumbnailController$5;
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
        "Lcom/android/camera/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/MediaEventArgs;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$500(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/MediaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$600(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown media is deleted, clear cache"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailController;->access$700(Lcom/android/camera/component/ThumbnailController;Z)V

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p3, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z
    invoke-static {v0, v3}, Lcom/android/camera/component/ThumbnailController;->access$202(Lcom/android/camera/component/ThumbnailController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$900(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    const/16 v1, 0x2711

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$500(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/MediaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v1, p3, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$800(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latest media is deleted, clear cache"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailController;->access$700(Lcom/android/camera/component/ThumbnailController;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$5;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$1000(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ThumbnailController$5;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method
