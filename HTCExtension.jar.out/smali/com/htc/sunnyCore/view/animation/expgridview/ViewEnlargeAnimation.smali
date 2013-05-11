.class public Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;
.super Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;
.source "ViewEnlargeAnimation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 2
    .parameter "v"
    .parameter "startPosition"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->addSView(Lcom/htc/sunnyCore/view/SView;)V

    .line 30
    if-nez p2, :cond_0

    .line 31
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    goto :goto_0
.end method

.method private enlargeAnimationController(Lcom/htc/sunnyCore/view/Vector3F;)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 4
    .parameter "viewPos"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 72
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 75
    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 77
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 78
    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method enlarge()V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    .line 61
    .local v1, tempSView:Lcom/htc/sunnyCore/view/SView;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v2

    .line 63
    .local v2, viewPos:Lcom/htc/sunnyCore/view/Vector3F;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 64
    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->enlargeAnimationController(Lcom/htc/sunnyCore/view/Vector3F;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 58
    .end local v2           #viewPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v1           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->reset()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->onStart()V

    .line 51
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->enlarge()V

    goto :goto_0
.end method
