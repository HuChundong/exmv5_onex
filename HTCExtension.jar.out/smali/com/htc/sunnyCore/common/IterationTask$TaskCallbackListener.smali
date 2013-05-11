.class public interface abstract Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;
.super Ljava/lang/Object;
.source "IterationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/common/IterationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskCallbackListener"
.end annotation


# virtual methods
.method public abstract onTaskCancel(Lcom/htc/sunnyCore/common/IterationTask;)V
.end method

.method public abstract onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunnyCore/common/IterationTask;)V
.end method

.method public abstract onTaskStart(Lcom/htc/sunnyCore/common/IterationTask;)V
.end method
