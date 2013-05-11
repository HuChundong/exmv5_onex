.class public abstract Lcom/htc/sunnyCore/RenderThreadTask;
.super Ljava/lang/Object;
.source "RenderThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field alwaysNeedRenderAfterProcess:Z

.field alwaysRequestRenderThreadRunningAfterProcess:Z

.field private host:Ljava/lang/Object;

.field isInRenderThreadQueue:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadTask;->host:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadTask;->name:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    .line 32
    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadTask;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public GetHost()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadTask;->host:Ljava/lang/Object;

    return-object v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public free()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadTask;->host:Ljava/lang/Object;

    .line 58
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadTask;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public abstract onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
.end method

.method public onRemovedIRT()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public reset(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "name"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/sunnyCore/RenderThreadTask;->host:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThreadTask;->name:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setAlwaysNeedRenderAfterProcess(Z)V
    .locals 0
    .parameter "needRender"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    return-void
.end method

.method public setAlwaysRequestRenderThreadRunningAfterProcess(Z)V
    .locals 0
    .parameter "requestRunning"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    return-void
.end method
