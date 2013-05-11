.class public abstract Lcom/htc/sunnyCore/common/IterationTask;
.super Ljava/lang/Object;
.source "IterationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;,
        Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mIdx:I

.field protected mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

.field private mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/sunnyCore/common/IterationTask;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    .line 46
    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mBundle:Landroid/os/Bundle;

    .line 51
    sget-object v0, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->NOT_SETUP:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mIdx:I

    return-void
.end method


# virtual methods
.method public getTaskIndex()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mIdx:I

    return v0
.end method

.method public getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    return-object v0
.end method

.method public isTaskFinished()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    sget-object v1, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->FINISH:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onEnd()V
.end method

.method public abstract onIterate()Z
.end method

.method public abstract onSetup()V
.end method

.method public onTaskCancel()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/IterationTask;->onCancel()V

    .line 92
    sget-object v0, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->CANCEL:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    .line 93
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    invoke-interface {v0, p0}, Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;->onTaskCancel(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onTaskEnd()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/IterationTask;->onEnd()V

    .line 81
    sget-object v0, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->FINISH:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    .line 82
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/IterationTask;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1, p0}, Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;->onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onTaskIterate()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/IterationTask;->onIterate()Z

    move-result v0

    return v0
.end method

.method public onTaskSetup()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->SETUP:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    .line 63
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/IterationTask;->onSetup()V

    .line 64
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    invoke-interface {v0, p0}, Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;->onTaskStart(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 67
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->NOT_SETUP:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTask;->mStatus:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    .line 117
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/sunnyCore/common/IterationTask;->mBundle:Landroid/os/Bundle;

    .line 124
    return-void
.end method

.method public setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V
    .locals 0
    .parameter "taskCallbackListener"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/sunnyCore/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;

    .line 41
    return-void
.end method

.method public setTaskIndex(I)V
    .locals 0
    .parameter "idx"

    .prologue
    .line 130
    iput p1, p0, Lcom/htc/sunnyCore/common/IterationTask;->mIdx:I

    .line 131
    return-void
.end method
