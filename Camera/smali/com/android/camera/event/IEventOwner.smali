.class public interface abstract Lcom/android/camera/event/IEventOwner;
.super Ljava/lang/Object;
.source "IEventOwner.java"


# virtual methods
.method public abstract getEvent(Ljava/lang/String;)Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/event/EventArgs;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/event/Event",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getEventNames()[Ljava/lang/String;
.end method
