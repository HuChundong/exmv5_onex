.class public Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.super Ljava/lang/Object;
.source "animationSetBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunnyCore/view/SView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;"
    }
.end annotation


# instance fields
.field protected mAnimationState:I

.field protected mBundle:Landroid/os/Bundle;

.field protected mMainView:Lcom/htc/sunnyCore/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVIEW;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    .local p1, view:Lcom/htc/sunnyCore/view/SView;,"TVIEW;"
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .line 12
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    .line 17
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    .line 19
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAnimationState()I
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 43
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 26
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 31
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 22
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartAnimation(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 35
    .local p0, this:Lcom/htc/sunny2/frameworks/animation/animationSetBase;,"Lcom/htc/sunny2/frameworks/animation/animationSetBase<TVIEW;>;"
    return-void
.end method
