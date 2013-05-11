.class Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridItemAlignAction"
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GridItemAlignAction"


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "host"

    .prologue
    .line 4064
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 4065
    const-string v0, "GridItemAlignAction"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4066
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 4094
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 6
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4071
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->update()V

    .line 4072
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    .line 4073
    .local v0, pos:I
    if-eqz v0, :cond_2

    .line 4075
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v1, :cond_1

    .line 4076
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3, v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 4081
    :goto_0
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GridItemAlignAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Gridview][GridItemAlignAction]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    return v1

    .line 4079
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0

    .line 4085
    :cond_2
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 4087
    goto :goto_2
.end method
