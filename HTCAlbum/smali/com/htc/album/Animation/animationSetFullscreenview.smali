.class public Lcom/htc/album/Animation/animationSetFullscreenview;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetFullscreenview.java"


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

    iput v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->touchedGridViewItemIndex:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->listener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    .line 22
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x2bc

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->showFullFilmView()V

    .line 125
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 5
    .parameter "nAnimState"

    .prologue
    const/16 v4, 0x5a

    const/4 v3, 0x0

    .line 44
    iput p1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 48
    iget v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    return-object v0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_WIDTH"

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_HEIGHT"

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 54
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_X"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_Y"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "ANIMATION_STATE"

    iget v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "DURATION"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideFullFilmView()V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_WIDTH"

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 63
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_HEIGHT"

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 64
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_X"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_Y"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "ANIMATION_STATE"

    iget v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "DURATION"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 7
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    const/4 v4, -0x1

    const/high16 v2, 0x3f80

    .line 76
    iget v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 81
    const-string v0, "thumb_animation_click_pos"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/view/Vector3F;

    .line 82
    .local v6, vector3F:Lcom/htc/sunnyCore/view/Vector3F;
    if-nez v6, :cond_1

    .line 92
    .end local v6           #vector3F:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    goto :goto_0

    .line 88
    .restart local v6       #vector3F:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_1
    const-string v0, "FROM_X"

    iget v1, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v0, "FROM_Y"

    iget v1, v6, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 95
    .end local v6           #vector3F:Lcom/htc/sunnyCore/view/Vector3F;
    :pswitch_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 97
    const-string v0, "thumb_animation_click_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/view/Vector3F;

    .line 98
    .restart local v6       #vector3F:Lcom/htc/sunnyCore/view/Vector3F;
    if-eqz v6, :cond_2

    const-string v0, "thumb_animation_click_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_WIDTH"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 102
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_HEIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 112
    .end local v6           #vector3F:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v4, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->touchedGridViewItemIndex:I

    iget-object v5, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->listener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    goto :goto_0

    .line 106
    .restart local v6       #vector3F:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_4
    const-string v0, "TO_X"

    iget v1, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v0, "TO_Y"

    iget v1, v6, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v0, "GRID_VIEW_ITEM_INDEX"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->touchedGridViewItemIndex:I

    .line 109
    const-string v0, "SCENE_ANIMATION_END_IRT_LISTENER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->listener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    goto :goto_2

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    packed-switch p1, :pswitch_data_0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    move v0, v2

    .line 39
    :goto_0
    return v0

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    move v0, v1

    .line 31
    goto :goto_0

    .line 33
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    move v0, v1

    .line 34
    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
