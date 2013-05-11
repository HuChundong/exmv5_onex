.class public Lcom/htc/album/Animation/animationSetTagEditor;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetTagEditor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/animation/animationSetBase",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

.field private touchedGridViewItemIndex:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunnyCore/view/SView;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/Animation/animationSetTagEditor;->touchedGridViewItemIndex:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetTagEditor;->listener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    .line 22
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x2bc

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 60
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 32
    iput p1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    .line 33
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 36
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 6
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    const/4 v4, -0x1

    .line 41
    iget v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    goto :goto_0

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v5, p0, Lcom/htc/album/Animation/animationSetTagEditor;->listener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
