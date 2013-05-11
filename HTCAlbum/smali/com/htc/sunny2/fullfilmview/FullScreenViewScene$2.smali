.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;
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
    .line 655
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x3

    return v0
.end method

.method public getItemLength(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x1

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public getTopBouncePosition()I
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public getViewPortLength()I
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method
