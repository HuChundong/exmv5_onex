.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;
.super Ljava/lang/Object;
.source "FullScreenViewScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupScene(Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 3

    .prologue
    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-int v1, v1

    .line 630
    :goto_0
    return v1

    .line 627
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FullScreenViewScene"

    const-string v2, "scroller_x getFirstVisibleItemOffset(): error, return 0"

    invoke-static {v1, v2, v0}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/IMediaList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 615
    const-string v0, "FullScreenViewScene"

    const-string v1, "scroller_x getItemCount(): null media list, return 0"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x0

    .line 618
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/IMediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemLength(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public getTopBouncePosition()I
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public getViewPortLength()I
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method
