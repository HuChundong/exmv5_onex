.class public interface abstract Lcom/htc/sunnyCore/common/Timer$Listener;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/common/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onTimerCancelledIRT(ILcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
.end method

.method public abstract onTimerIRT(I)V
.end method
