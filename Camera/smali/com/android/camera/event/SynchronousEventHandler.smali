.class public abstract Lcom/android/camera/event/SynchronousEventHandler;
.super Ljava/lang/Object;
.source "SynchronousEventHandler.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEventArgs:",
        "Lcom/android/camera/event/EventArgs;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<TTEventArgs;>;"
    }
.end annotation


# instance fields
.field public final eventHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<TTEventArgs;>;"
        }
    .end annotation
.end field

.field public final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/event/SynchronousEventHandler;-><init>(Landroid/os/Handler;Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/camera/event/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/android/camera/event/EventHandler",
            "<TTEventArgs;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "handler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/event/SynchronousEventHandler;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/camera/event/SynchronousEventHandler;->eventHandler:Lcom/android/camera/event/EventHandler;

    return-void
.end method


# virtual methods
.method public final onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;",
            "Ljava/lang/Object;",
            "TTEventArgs;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/event/SynchronousEventHandler;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/event/SynchronousEventHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/event/SynchronousEventHandler$1;-><init>(Lcom/android/camera/event/SynchronousEventHandler;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onEventReceivedSync(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;",
            "Ljava/lang/Object;",
            "TTEventArgs;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/event/SynchronousEventHandler;->eventHandler:Lcom/android/camera/event/EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/event/SynchronousEventHandler;->eventHandler:Lcom/android/camera/event/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/event/EventHandler;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_0
    return-void
.end method
