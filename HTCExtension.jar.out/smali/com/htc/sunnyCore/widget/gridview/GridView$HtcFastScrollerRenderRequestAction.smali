.class Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcFastScrollerRenderRequestAction"
.end annotation


# instance fields
.field private requestRenderFramesCount:I

.field private shouldAddToRenderThread:Z

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4102
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 4103
    const-string v0, "HtcFastScrollerRenderRequestAction"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4099
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    .line 4100
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    .line 4104
    return-void
.end method


# virtual methods
.method public needAddedToRenderThread()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4119
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    if-eqz v1, :cond_0

    .line 4120
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    .line 4121
    const/4 v0, 0x1

    .line 4123
    :cond_0
    return v0
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 4137
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 1
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 4128
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    if-lez v0, :cond_0

    .line 4129
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    .line 4130
    const/4 v0, 0x1

    .line 4132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFastScrollerState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4116
    return-void
.end method
