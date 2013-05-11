.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripViewAnimateToFullScreenViewAction"
.end annotation


# instance fields
.field private mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mPastFrames:I

.field private mScale:F

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 604
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    .line 600
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 605
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 606
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 608
    .local v0, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    if-lez v1, :cond_0

    .line 610
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mScale:F

    .line 617
    :goto_0
    const/4 v0, 0x0

    .line 618
    return-void

    .line 615
    :cond_0
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mScale:F

    goto :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 672
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 673
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$1002(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    .line 674
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 675
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xf

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v8, 0x3f80

    .line 622
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mScale:F

    sub-float/2addr v6, v8

    invoke-static {v3, v8, v6, v9}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v1

    .line 624
    .local v1, newScale:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v3

    invoke-static {v3, v1, v1, v8}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 627
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsVideo()Z

    move-result v3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsCorrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getSpriteIndicator()I

    move-result v0

    .local v0, indicator:I
    if-eqz v0, :cond_0

    cmpl-float v3, v1, v10

    if-eqz v3, :cond_0

    .line 631
    div-float v3, v8, v1

    div-float v6, v8, v1

    invoke-static {v0, v3, v6, v8}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 635
    .end local v0           #indicator:I
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getGalleryRight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v3, v10, v6, v9}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v2

    .line 638
    .local v2, newSpacing:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    float-to-int v6, v2

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->relayoutWithCenterSpacing(I)V

    .line 639
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZZ)V

    .line 641
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    .line 643
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    if-ge v3, v9, :cond_2

    move v3, v4

    :goto_0
    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v6, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$1002(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    .line 645
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$1000(Lcom/htc/sunny2/fullfilmview/Animator;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 647
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    if-ne v3, v4, :cond_1

    .line 648
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 666
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$1000(Lcom/htc/sunny2/fullfilmview/Animator;)Z

    move-result v3

    return v3

    :cond_2
    move v3, v5

    .line 643
    goto :goto_0

    .line 652
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    .line 653
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    .line 654
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 655
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 656
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsVideo()Z

    move-result v3

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsCorrupted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 659
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getSpriteIndicator()I

    move-result v0

    .restart local v0       #indicator:I
    if-eqz v0, :cond_4

    .line 660
    invoke-static {v0, v8, v8, v8}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 663
    .end local v0           #indicator:I
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_1
.end method
