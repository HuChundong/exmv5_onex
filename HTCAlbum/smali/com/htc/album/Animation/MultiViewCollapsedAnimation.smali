.class public Lcom/htc/album/Animation/MultiViewCollapsedAnimation;
.super Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;
.source "MultiViewCollapsedAnimation.java"


# static fields
.field private static final mNearFirst:Z = true


# instance fields
.field private mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

.field private mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field private mXPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mYPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 4
    .parameter "v"
    .parameter "startPosition"

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    .line 17
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    .line 18
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    .line 28
    iput-object p1, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 29
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iput-object p2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    goto :goto_0
.end method

.method private collapse()V
    .locals 17

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v14}, Ljava/util/TreeSet;->size()I

    move-result v12

    .line 142
    .local v12, xPosCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v14}, Ljava/util/TreeSet;->size()I

    move-result v13

    .line 144
    .local v13, yPosCount:I
    add-int v14, v12, v13

    add-int/lit8 v1, v14, -0x1

    .line 145
    .local v1, batchTime:I
    const-wide/16 v4, 0x0

    .line 146
    .local v4, delayTimeUnit:J
    const/4 v14, 0x1

    if-le v1, v14, :cond_0

    .line 147
    const/4 v14, 0x6

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 148
    .local v8, minBatchTime:I
    const/16 v14, 0x12c

    add-int/lit8 v15, v8, -0x1

    div-int/2addr v14, v15

    int-to-long v4, v14

    .line 151
    .end local v8           #minBatchTime:I
    :cond_0
    const/4 v10, 0x0

    .line 153
    .local v10, tempSView:Lcom/htc/sunnyCore/view/SView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 154
    .local v6, endPos:Lcom/htc/sunnyCore/view/Vector3F;
    const/4 v14, 0x0

    iget v15, v6, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-static {v14, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-nez v14, :cond_1

    .line 155
    const/high16 v14, -0x3d38

    iput v14, v6, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 158
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v1, :cond_5

    .line 159
    int-to-long v14, v7

    mul-long v2, v14, v4

    .line 161
    .local v2, delayTime:J
    const/4 v11, 0x0

    .local v11, x:I
    :goto_1
    if-ge v11, v1, :cond_4

    sub-int v14, v7, v11

    if-ltz v14, :cond_4

    .line 162
    if-ge v11, v12, :cond_2

    sub-int v14, v7, v11

    if-lt v14, v13, :cond_3

    .line 161
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 167
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    add-int/lit8 v15, v13, -0x1

    sub-int v16, v7, v11

    sub-int v15, v15, v16

    aget-object v14, v14, v15

    add-int/lit8 v15, v12, -0x1

    sub-int/2addr v15, v11

    aget-object v10, v14, v15

    .line 171
    if-eqz v10, :cond_2

    .line 172
    invoke-virtual {v10}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v9

    .line 173
    .local v9, startPos:Lcom/htc/sunnyCore/view/Vector3F;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v2, v3}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->exitGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;J)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_2

    .line 158
    .end local v9           #startPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 177
    .end local v2           #delayTime:J
    .end local v11           #x:I
    :cond_5
    return-void
.end method

.method private exitGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;J)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 4
    .parameter "startPos"
    .parameter "endPos"
    .parameter "delayTime"

    .prologue
    const/high16 v2, 0x3f80

    const v3, 0x3dcccccd

    .line 180
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 182
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 183
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 184
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 187
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 188
    invoke-virtual {v0, p3, p4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 189
    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 190
    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 192
    return-object v0
.end method

.method private prepare()V
    .locals 21

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 58
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Can\'t prepare the ExpandOutAnimation for null GridView"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 61
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->clear()V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->clear()V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v9

    .line 65
    .local v9, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v6

    .line 66
    .local v6, last:I
    move v4, v9

    .local v4, i:I
    :goto_0
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    if-ge v4, v0, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    sub-int v19, v4, v9

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v2

    .line 68
    .local v2, child:Lcom/htc/sunnyCore/view/SView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mSViewList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Float;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Float;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v2           #child:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->size()I

    move-result v19

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    const-class v19, Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    .line 75
    const/4 v13, 0x0

    .line 76
    .local v13, xPosArray:[Ljava/lang/Float;
    const/16 v16, 0x0

    .line 78
    .local v16, yPosArray:[Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 84
    .local v7, originalStartPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    .line 116
    :cond_2
    :goto_1
    array-length v14, v13

    .line 117
    .local v14, xPosCount:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 118
    .local v17, yPosCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mSViewList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunnyCore/view/SView;

    .line 119
    .local v3, childView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v8

    .line 121
    .local v8, pos:Lcom/htc/sunnyCore/view/Vector3F;
    const/4 v10, 0x0

    .local v10, tempX:I
    const/4 v11, 0x0

    .line 123
    .local v11, tempY:I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_3
    if-ge v12, v14, :cond_3

    .line 124
    aget-object v18, v13, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_8

    .line 125
    move v10, v12

    .line 130
    :cond_3
    const/4 v15, 0x0

    .local v15, y:I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 131
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_9

    .line 132
    move v11, v15

    .line 136
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    aput-object v3, v18, v10

    goto :goto_2

    .line 93
    .end local v3           #childView:Lcom/htc/sunnyCore/view/SView;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #pos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v10           #tempX:I
    .end local v11           #tempY:I
    .end local v12           #x:I
    .end local v14           #xPosCount:I
    .end local v15           #y:I
    .end local v17           #yPosCount:I
    :cond_5
    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_6

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 102
    :cond_6
    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_7

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 111
    :cond_7
    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mXPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v13, v18

    check-cast v13, [Ljava/lang/Float;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mYPosSet:Ljava/util/TreeSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Float;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Float;

    goto/16 :goto_1

    .line 123
    .restart local v3       #childView:Lcom/htc/sunnyCore/view/SView;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #pos:Lcom/htc/sunnyCore/view/Vector3F;
    .restart local v10       #tempX:I
    .restart local v11       #tempY:I
    .restart local v12       #x:I
    .restart local v14       #xPosCount:I
    .restart local v17       #yPosCount:I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 130
    .restart local v15       #y:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 138
    .end local v3           #childView:Lcom/htc/sunnyCore/view/SView;
    .end local v8           #pos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v10           #tempX:I
    .end local v11           #tempY:I
    .end local v12           #x:I
    .end local v15           #y:I
    :cond_a
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 40
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 41
    .local v1, start:I
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v0

    .line 42
    .local v0, last:I
    if-eq v1, v3, :cond_0

    if-ne v0, v3, :cond_2

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->reset()V

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_2
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    .line 52
    invoke-direct {p0}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->prepare()V

    .line 53
    invoke-direct {p0}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->collapse()V

    goto :goto_0
.end method
