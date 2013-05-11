.class public Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;
.super Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;
.source "ViewShrinkAnimation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MOVE_DIRECTION_X:I = 0x0

.field public static final MOVE_DIRECTION_Y:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildRootSViewGroupIndex:I

.field private mDistance:F

.field mEndPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

.field private mMoveDirection:I

.field private mMoveItemsCount:I

.field private mShrinkItemsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/view/Vector3F;F)V
    .locals 1
    .parameter "v"
    .parameter "itemEndPosition"
    .parameter "distance"

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/view/Vector3F;FI)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/view/Vector3F;FI)V
    .locals 3
    .parameter "v"
    .parameter "itemEndPosition"
    .parameter "distance"
    .parameter "moveDirection"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 31
    iput v2, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 32
    iput v2, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mChildRootSViewGroupIndex:I

    .line 52
    iput-object p1, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 61
    :goto_0
    iput p3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mDistance:F

    .line 62
    iput p4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mMoveDirection:I

    .line 63
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, p2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(Lcom/htc/sunnyCore/view/Vector3F;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunnyCore/view/Vector3F;

    goto :goto_0
.end method

.method private move()V
    .locals 9

    .prologue
    .line 198
    new-instance v3, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    .line 200
    .local v3, newPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v6, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    iget v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    .line 201
    .local v2, moveItemsCount:I
    :goto_0
    const/4 v5, 0x0

    .line 203
    .local v5, tempSView:Lcom/htc/sunnyCore/view/SView;
    iget v6, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 205
    iget-object v6, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    iget v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tempSView:Lcom/htc/sunnyCore/view/SView;
    check-cast v5, Lcom/htc/sunnyCore/view/SView;

    .line 206
    .restart local v5       #tempSView:Lcom/htc/sunnyCore/view/SView;
    if-eqz v5, :cond_1

    .line 207
    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    .line 208
    .local v4, originalPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iput v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 209
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mDistance:F

    add-float/2addr v6, v7

    iput v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 210
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iput v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 212
    invoke-direct {p0, v4, v3}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->moveViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v1

    .line 213
    .local v1, moveController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    invoke-virtual {v5, v1}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 204
    .end local v1           #moveController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v4           #originalPos:Lcom/htc/sunnyCore/view/Vector3F;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0           #i:I
    .end local v2           #moveItemsCount:I
    .end local v5           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_0
    iget-object v6, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    sub-int v2, v6, v7

    goto :goto_0

    .line 216
    .restart local v0       #i:I
    .restart local v2       #moveItemsCount:I
    .restart local v5       #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    sget-object v6, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tempSView is null!, Y, i: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 221
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v2, :cond_4

    .line 222
    iget-object v6, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    iget v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tempSView:Lcom/htc/sunnyCore/view/SView;
    check-cast v5, Lcom/htc/sunnyCore/view/SView;

    .line 223
    .restart local v5       #tempSView:Lcom/htc/sunnyCore/view/SView;
    if-eqz v5, :cond_3

    .line 224
    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    .line 225
    .restart local v4       #originalPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mDistance:F

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 226
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iput v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 227
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iput v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 229
    invoke-direct {p0, v4, v3}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->moveViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v1

    .line 230
    .restart local v1       #moveController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    invoke-virtual {v5, v1}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 221
    .end local v1           #moveController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v4           #originalPos:Lcom/htc/sunnyCore/view/Vector3F;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 233
    :cond_3
    sget-object v6, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tempSView is null!, X, i: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 237
    :cond_4
    return-void
.end method

.method private moveViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 3
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 241
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 243
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 244
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 245
    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 246
    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 248
    return-object v0
.end method

.method private prepareMove()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 174
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v2

    .line 175
    .local v2, lastParent:I
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v1

    .line 177
    .local v1, lastChild:I
    if-eq v1, v5, :cond_1

    if-eq v2, v5, :cond_1

    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, tempSView:Lcom/htc/sunnyCore/view/SView;
    add-int/lit8 v0, v1, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_2

    .line 180
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getGridViewItem(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v3

    .line 181
    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->addSView(Lcom/htc/sunnyCore/view/SView;)V

    .line 183
    iget v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    .line 179
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    sget-object v4, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    const-string v5, "prepareMove, tempSView is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v0           #i:I
    .end local v3           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    sget-object v4, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMove, no mvoe items, lastChild: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastParent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    return-void
.end method

.method private shrinkAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 4
    .parameter "viewPos"
    .parameter "endPos"
    .parameter "alphaEnd"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    .line 154
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 155
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 156
    if-ltz p3, :cond_0

    .line 157
    const/16 v1, 0xff

    invoke-virtual {v0, v1, p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 159
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 161
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 162
    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 163
    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 165
    return-object v0
.end method


# virtual methods
.method protected onStart()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->onStart()V

    .line 78
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->prepareShrink()V

    .line 79
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->prepareMove()V

    .line 84
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->reset()V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->shrink()V

    .line 93
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->move()V

    goto :goto_0
.end method

.method prepareShrink()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 104
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildFirstVisiblePosition()I

    move-result v0

    .line 106
    .local v0, firstChild:I
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v2

    .line 108
    .local v2, lastChild:I
    if-eq v0, v5, :cond_3

    if-eq v2, v5, :cond_3

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, tempSView:Lcom/htc/sunnyCore/view/SView;
    move v1, v0

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 111
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getGridViewItem(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->addSView(Lcom/htc/sunnyCore/view/SView;)V

    .line 114
    iget v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildRootSViewGroup()Lcom/htc/sunnyCore/view/SView;

    move-result-object v3

    .line 119
    if-eqz v3, :cond_2

    .line 120
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->addSView(Lcom/htc/sunnyCore/view/SView;)V

    .line 121
    iget v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    iput v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mChildRootSViewGroupIndex:I

    .line 122
    iget v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 129
    .end local v0           #firstChild:I
    .end local v1           #i:I
    .end local v2           #lastChild:I
    .end local v3           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_2
    :goto_1
    return-void

    .line 126
    .restart local v0       #firstChild:I
    .restart local v2       #lastChild:I
    :cond_3
    sget-object v4, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareShrink, no shrink items, firstChild: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastChild: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method shrink()V
    .locals 6

    .prologue
    .line 135
    iget v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    iget-object v5, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_1

    iget v1, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 137
    .local v1, shrinkItemsCount:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 138
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/view/SView;

    .line 140
    .local v2, tempSView:Lcom/htc/sunnyCore/view/SView;
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    .line 142
    .local v3, viewPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mChildRootSViewGroupIndex:I

    if-ne v0, v4, :cond_2

    .line 143
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v5, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->shrinkAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 137
    .end local v3           #viewPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0           #i:I
    .end local v1           #shrinkItemsCount:I
    .end local v2           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 146
    .restart local v0       #i:I
    .restart local v1       #shrinkItemsCount:I
    .restart local v2       #tempSView:Lcom/htc/sunnyCore/view/SView;
    .restart local v3       #viewPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunnyCore/view/Vector3F;

    const/16 v5, 0x80

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->shrinkAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_2

    .line 150
    .end local v2           #tempSView:Lcom/htc/sunnyCore/view/SView;
    .end local v3           #viewPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_3
    return-void
.end method
