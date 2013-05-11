.class public Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;
.super Lcom/htc/sunnyCore/view/animation/SAnimationController;
.source "MultiViewAnimationSet.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAnimationEndCount:I

.field protected mSViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/view/SView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 31
    return-void
.end method


# virtual methods
.method protected addSView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method protected addSView(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/sunnyCore/view/SView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/sunnyCore/view/SView;>;"
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    return-void
.end method

.method public animate()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->animate()V

    .line 73
    :cond_0
    return-void
.end method

.method public isEnded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    .line 62
    :cond_0
    return v0
.end method

.method protected isValidAnimation()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 49
    iget v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 52
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 41
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 82
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->start()V

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 86
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->onStart()V

    .line 87
    return-void
.end method
