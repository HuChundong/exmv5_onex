.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickInfoGetter"
.end annotation


# instance fields
.field public itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 105
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 123
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    .line 118
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->positionOffset:F

    .line 119
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->zoomFactor:F

    goto :goto_0
.end method
