.class Lcom/htc/sunnyCore/common/CommonView$ReLayout;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/common/CommonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReLayout"
.end annotation


# static fields
.field static final ACTION_NAME:Ljava/lang/String; = "ReLayout"


# instance fields
.field private isLayoutRequest:Z

.field final synthetic this$0:Lcom/htc/sunnyCore/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/common/CommonView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    .line 40
    const-string v0, "ReLayout"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->setAlwaysNeedRenderAfterProcess(Z)V

    .line 42
    iput-boolean v1, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->isLayoutRequest:Z

    .line 43
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 44
    return-void
.end method

.method private processLayoutRequest()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-boolean v0, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->isLayoutRequest:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->isLayoutRequest:Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 62
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget v1, v1, Lcom/htc/sunnyCore/common/CommonView;->mGLViewWidth:I

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget v2, v2, Lcom/htc/sunnyCore/common/CommonView;->mGLViewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/common/CommonView;->layoutIRT(II)V

    .line 63
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    goto :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 66
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 1
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->processLayoutRequest()V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method requestLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->isLayoutRequest:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 49
    return-void
.end method
