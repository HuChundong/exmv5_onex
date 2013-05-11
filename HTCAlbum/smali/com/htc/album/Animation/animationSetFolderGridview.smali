.class public Lcom/htc/album/Animation/animationSetFolderGridview;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetFolderGridview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/animation/animationSetBase",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFocusIndex:I

.field private mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunnyCore/view/SView;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    .line 18
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    .line 23
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x258

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 187
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 5
    .parameter "nAnimState"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 44
    iput p1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    .line 45
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 50
    iget v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    .line 112
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    return-object v2

    .line 56
    :pswitch_0
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    if-nez v2, :cond_1

    .line 57
    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_2

    .line 62
    iget v3, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v1, v3, v2

    .line 63
    .local v1, idx:I
    if-le v1, v4, :cond_2

    .line 65
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 66
    .local v0, child:Lcom/htc/sunnyCore/view/SView;
    if-eqz v0, :cond_2

    .line 67
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 71
    .end local v0           #child:Lcom/htc/sunnyCore/view/SView;
    .end local v1           #idx:I
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    if-nez v2, :cond_3

    .line 80
    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_4

    .line 85
    iget v3, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v1, v3, v2

    .line 86
    .restart local v1       #idx:I
    if-le v1, v4, :cond_4

    .line 88
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 89
    .restart local v0       #child:Lcom/htc/sunnyCore/view/SView;
    if-eqz v0, :cond_4

    .line 90
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 94
    .end local v0           #child:Lcom/htc/sunnyCore/view/SView;
    .end local v1           #idx:I
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPlayAnimPopOut(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 169
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 170
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 171
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 172
    invoke-virtual {v0, p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 173
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 174
    return-void
.end method

.method protected onPlayAnimPushIn(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 163
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    .line 164
    .local v0, controller:Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;
    invoke-virtual {v0, p3}, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 165
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 166
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 5
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    const/16 v4, 0x258

    const/16 v3, 0x12c

    .line 119
    iget v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 124
    :pswitch_0
    new-instance v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;II)V

    .line 125
    .local v0, controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 126
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    .line 131
    .end local v0           #controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    :pswitch_1
    new-instance v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;II)V

    .line 132
    .restart local v0       #controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 133
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    .line 138
    .end local v0           #controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    :pswitch_2
    new-instance v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;II)V

    .line 139
    .local v0, controller:Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 140
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    .line 145
    .end local v0           #controller:Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
    :pswitch_3
    new-instance v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;II)V

    .line 146
    .restart local v0       #controller:Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 147
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 32
    const/4 v0, 0x1

    .line 37
    .local v0, bResult:Z
    return v0
.end method

.method public setFocused(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    .line 28
    return-void
.end method
