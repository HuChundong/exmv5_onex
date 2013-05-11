.class public Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;
.super Lcom/htc/sunnyCore/view/animation/SAnimationController;
.source "MultiViewAnimationSet.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mAnimationEndCount:I

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
    .line 33
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 35
    return-void
.end method


# virtual methods
.method protected addSView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
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
    .line 104
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/sunnyCore/view/SView;>;"
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-void
.end method

.method public animate()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->animate()V

    .line 77
    :cond_0
    return-void
.end method

.method public isEnded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    .line 66
    :cond_0
    return v0
.end method

.method protected isValidAnimation()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mAnimationEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 53
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mAnimationEndCount:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 56
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mAnimationEndCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 45
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->start()V

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 90
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    .line 91
    return-void
.end method
