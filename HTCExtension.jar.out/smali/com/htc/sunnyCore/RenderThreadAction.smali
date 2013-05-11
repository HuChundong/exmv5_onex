.class public abstract Lcom/htc/sunnyCore/RenderThreadAction;
.super Lcom/htc/sunnyCore/RenderThreadTask;
.source "RenderThreadAction.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected firstFrameIndex:I

.field protected firstFrameTimeMillis:J

.field protected needLockCPU:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadTask;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput v2, p0, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameIndex:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameTimeMillis:J

    .line 20
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThreadAction;->needLockCPU:Z

    .line 27
    return-void
.end method


# virtual methods
.method public abstract onDoActionIRT(IJ)Z
.end method
