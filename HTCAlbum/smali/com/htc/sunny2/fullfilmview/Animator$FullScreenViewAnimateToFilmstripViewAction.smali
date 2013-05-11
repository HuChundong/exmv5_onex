.class Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenViewAnimateToFilmstripViewAction"
.end annotation


# instance fields
.field private mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mPastFrames:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x41f0

    const/high16 v6, 0x3f80

    .line 457
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 458
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    .line 454
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, mItemWidth:I
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 461
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 462
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    if-lez v3, :cond_2

    .line 464
    iget v3, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$602(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    .line 465
    iget v2, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    .line 471
    :goto_0
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_3

    .line 473
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v3

    div-float/2addr v3, v7

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {p1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$702(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    .line 481
    :goto_1
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 486
    :cond_0
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {p1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$802(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    .line 487
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$800(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 488
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout()V

    .line 489
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 491
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 492
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v3

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v5

    invoke-static {v3, v4, v5, v6}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 493
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsVideo()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsCorrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 496
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getSpriteIndicator()I

    move-result v0

    .local v0, indicator:I
    if-eqz v0, :cond_1

    .line 497
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v3

    div-float v3, v6, v3

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    div-float v4, v6, v4

    invoke-static {v0, v3, v4, v6}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 500
    .end local v0           #indicator:I
    :cond_1
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    .line 502
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$800(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v3

    div-float/2addr v3, v7

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacingDifference:F
    invoke-static {p1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$902(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    .line 503
    return-void

    .line 469
    :cond_2
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$602(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    goto/16 :goto_0

    .line 477
    :cond_3
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v3

    sub-float v3, v6, v3

    neg-float v3, v3

    div-float/2addr v3, v7

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {p1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$702(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    goto/16 :goto_1
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 591
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 592
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, currentSpacing:F
    const/4 v0, 0x0

    .line 509
    .local v0, currentScale:F
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/Animator;->access$700(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float v0, v8, v9

    .line 510
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$700(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    const/high16 v8, 0x3f80

    cmpl-float v8, v0, v8

    if-lez v8, :cond_6

    .line 512
    const/high16 v0, 0x3f80

    .line 518
    :cond_0
    :goto_0
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_7

    .line 520
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v8

    int-to-float v1, v8

    .line 526
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    .line 527
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 529
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v8

    const/high16 v9, 0x3f80

    invoke-static {v8, v0, v0, v9}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 530
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsVideo()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsCorrupted()Z

    move-result v8

    if-nez v8, :cond_1

    .line 533
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getSpriteIndicator()I

    move-result v7

    .local v7, indicator:I
    if-eqz v7, :cond_1

    .line 534
    const/high16 v8, 0x3f80

    div-float/2addr v8, v0

    const/high16 v9, 0x3f80

    div-float/2addr v9, v0

    const/high16 v10, 0x3f80

    invoke-static {v7, v8, v9, v10}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 538
    .end local v7           #indicator:I
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v6

    .line 539
    .local v6, filmstripViewSelectedItemPosition:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v4

    .line 540
    .local v4, filmstripViewSelectedItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    const/4 v2, 0x0

    .line 541
    .local v2, filmstripViewFirstItemIndex:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    iget v8, v8, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v3, v8, -0x1

    .line 542
    .local v3, filmstripViewLastItemIndex:I
    const/4 v5, 0x0

    .line 543
    .local v5, filmstripViewSelectedItemCenter:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_8

    .line 545
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->cacheSpecialSpecialSpacing()V

    .line 546
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 547
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 548
    if-eqz v4, :cond_4

    .line 550
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v5

    .line 551
    if-ne v6, v2, :cond_2

    if-gtz v5, :cond_3

    :cond_2
    if-ne v6, v3, :cond_4

    if-gez v5, :cond_4

    .line 554
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    neg-int v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 557
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->deCacheSpecialSpacing()V

    .line 558
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v9

    iget v9, v9, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 559
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsVideo()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getIsCorrupted()Z

    move-result v8

    if-nez v8, :cond_5

    .line 562
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getSpriteIndicator()I

    move-result v7

    .restart local v7       #indicator:I
    if-eqz v7, :cond_5

    .line 563
    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    invoke-static {v7, v8, v9, v10}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 565
    .end local v7           #indicator:I
    :cond_5
    const/4 v8, 0x0

    .line 584
    :goto_2
    return v8

    .line 514
    .end local v2           #filmstripViewFirstItemIndex:I
    .end local v3           #filmstripViewLastItemIndex:I
    .end local v4           #filmstripViewSelectedItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v5           #filmstripViewSelectedItemCenter:I
    .end local v6           #filmstripViewSelectedItemPosition:I
    :cond_6
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$700(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/high16 v8, 0x3f80

    cmpg-float v8, v0, v8

    if-gez v8, :cond_0

    .line 516
    const/high16 v0, 0x3f80

    goto/16 :goto_0

    .line 524
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$800(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacingDifference:F
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/Animator;->access$900(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float v1, v8, v9

    goto/16 :goto_1

    .line 569
    .restart local v2       #filmstripViewFirstItemIndex:I
    .restart local v3       #filmstripViewLastItemIndex:I
    .restart local v4       #filmstripViewSelectedItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .restart local v5       #filmstripViewSelectedItemCenter:I
    .restart local v6       #filmstripViewSelectedItemPosition:I
    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->cacheSpecialSpecialSpacing()V

    .line 570
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    div-float v9, v1, v0

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 571
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 572
    if-eqz v4, :cond_b

    .line 574
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v5

    .line 575
    if-ne v6, v2, :cond_9

    if-gtz v5, :cond_a

    :cond_9
    if-ne v6, v3, :cond_b

    if-gez v5, :cond_b

    .line 578
    :cond_a
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v8

    neg-int v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 581
    :cond_b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 582
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 584
    :cond_c
    const/4 v8, 0x1

    goto :goto_2
.end method
