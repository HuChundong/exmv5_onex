.class public Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
.super Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;
.source "FadeInAndCollapsedAnimation.java"


# instance fields
.field private mTargetChildIdx:I

.field private mView:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;II)V
    .locals 6
    .parameter "v"
    .parameter "targetChildIdx"
    .parameter "nDuration"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 22
    iput p2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTargetChildIdx:I

    .line 24
    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAlphaAnimation(II)V

    .line 26
    iget-object v2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v1

    .line 27
    .local v1, startPos:Lcom/htc/sunnyCore/view/Vector3F;
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    .line 28
    .local v0, endPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v2, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v3, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    const/high16 v5, -0x3c6a

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 31
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setFillAfter(Z)V

    .line 32
    int-to-long v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setDuration(J)V

    .line 33
    sget-object v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 35
    return-void
.end method

.method private onPlayFolderCollapse()V
    .locals 24

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTargetChildIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v12

    .line 64
    .local v12, mTargetChildView:Lcom/htc/sunnyCore/view/SView;
    instance-of v0, v12, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object v11, v12

    .line 65
    check-cast v11, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 67
    .local v11, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getFolderItemCount()I

    move-result v13

    .line 68
    .local v13, nImageCount:I
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalPosition()[Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v16

    .line 69
    .local v16, positions:[Lcom/htc/sunnyCore/view/Vector3F;
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalRotation()[Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v17

    .line 70
    .local v17, rotations:[Lcom/htc/sunnyCore/view/Vector3F;
    if-eqz v16, :cond_0

    if-eqz v17, :cond_0

    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v13, v0, :cond_1

    .line 110
    .end local v11           #item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    .end local v13           #nImageCount:I
    .end local v16           #positions:[Lcom/htc/sunnyCore/view/Vector3F;
    .end local v17           #rotations:[Lcom/htc/sunnyCore/view/Vector3F;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v11       #item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    .restart local v13       #nImageCount:I
    .restart local v16       #positions:[Lcom/htc/sunnyCore/view/Vector3F;
    .restart local v17       #rotations:[Lcom/htc/sunnyCore/view/Vector3F;
    :cond_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 76
    .local v14, num:I
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 78
    const/16 v6, 0x12c

    .line 79
    .local v6, duration:I
    sget-object v10, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    .line 80
    .local v10, intpolator:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;
    const/16 v5, 0x190

    .line 81
    .local v5, delay:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v14, :cond_2

    .line 84
    new-instance v4, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 85
    .local v4, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 86
    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 87
    invoke-virtual {v4, v10}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 88
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 90
    aget-object v7, v16, v9

    .line 91
    .local v7, endPos:Lcom/htc/sunnyCore/view/Vector3F;
    sget-object v20, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_POSTION_OFFSET:[Lcom/htc/sunnyCore/view/Vector3F;

    aget-object v15, v20, v9

    .line 92
    .local v15, off:Lcom/htc/sunnyCore/view/Vector3F;
    new-instance v18, Lcom/htc/sunnyCore/view/Vector3F;

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    .line 95
    .local v18, startPos:Lcom/htc/sunnyCore/view/Vector3F;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 97
    aget-object v8, v17, v9

    .line 98
    .local v8, endRote:Lcom/htc/sunnyCore/view/Vector3F;
    sget-object v20, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_ROTATION_OFFSET:[Lcom/htc/sunnyCore/view/Vector3F;

    aget-object v15, v20, v9

    .line 99
    new-instance v19, Lcom/htc/sunnyCore/view/Vector3F;

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-direct/range {v19 .. v22}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    .line 102
    .local v19, startRot:Lcom/htc/sunnyCore/view/Vector3F;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 103
    const/16 v20, 0x0

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 105
    invoke-virtual {v11, v9, v4}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setupSpriteAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 108
    .end local v4           #controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v7           #endPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v8           #endRote:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v15           #off:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v18           #startPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v19           #startRot:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_2
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->startAnimation()V

    goto/16 :goto_0
.end method


# virtual methods
.method public animate()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->animate()V

    .line 40
    iget-wide v1, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mOffset:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTotalTime:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 41
    .local v0, ratio:F
    const/high16 v1, 0x3e80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 44
    :cond_0
    return-void
.end method

.method protected isValidAnimation()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t prepare the FadeInAndCollapsedAnimation for null GridView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    .line 59
    return-void
.end method
