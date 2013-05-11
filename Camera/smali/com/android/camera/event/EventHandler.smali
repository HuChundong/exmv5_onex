.class public interface abstract Lcom/android/camera/event/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEventArgs:",
        "Lcom/android/camera/event/EventArgs;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;",
            "Ljava/lang/Object;",
            "TTEventArgs;)V"
        }
    .end annotation
.end method
