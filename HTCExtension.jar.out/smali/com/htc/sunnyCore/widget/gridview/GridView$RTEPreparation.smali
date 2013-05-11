.class Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTEPreparation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 2996
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 2997
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2998
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 3014
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3002
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    .line 3004
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v0, v3, v1, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 3007
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    .line 3009
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    .line 3011
    :cond_1
    return-void
.end method
