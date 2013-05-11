.class Lcom/android/camera/component/NewMediaBroadcaster$1;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/NewMediaBroadcaster;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/NewMediaBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/camera/component/NewMediaBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
    .locals 3
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

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    new-instance v1, Lcom/android/camera/component/NewMediaBroadcaster$1$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/component/NewMediaBroadcaster$1$1;-><init>(Lcom/android/camera/component/NewMediaBroadcaster$1;Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/NewMediaBroadcaster;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/NewMediaBroadcaster;->access$300(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/NewMediaBroadcaster$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method
