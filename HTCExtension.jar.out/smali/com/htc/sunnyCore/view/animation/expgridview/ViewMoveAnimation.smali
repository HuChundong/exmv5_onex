.class public Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;
.super Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;
.source "ViewMoveAnimation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MOVE_DIRECTION_BOTTOM:I = 0x1

.field public static final MOVE_DIRECTION_LEFT:I = 0x3

.field public static final MOVE_DIRECTION_RIGHT:I = 0x2

.field public static final MOVE_DIRECTION_TOP:I


# instance fields
.field private mDistance:F

.field private mMoveDirection:I

.field private mMoveDown:Z

.field private mView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;FI)V
    .locals 0
    .parameter "v"
    .parameter "distance"
    .parameter "moveDirection"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 46
    iput p2, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mDistance:F

    .line 47
    iput p3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mMoveDirection:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;FZ)V
    .locals 0
    .parameter "v"
    .parameter "distance"
    .parameter "moveDown"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;-><init>()V

    .line 59
    return-void
.end method

.method private move()V
    .locals 9

    .prologue
    .line 94
    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    .line 96
    .local v2, newPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v8, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 98
    .local v4, size:I
    if-nez v4, :cond_2

    .line 99
    iget-object v8, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v8, :cond_0

    .line 100
    iget-object v8, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->reset()V

    .line 136
    :cond_1
    return-void

    .line 106
    :cond_2
    const/4 v6, 0x0

    .local v6, xDist:F
    const/4 v7, 0x0

    .line 108
    .local v7, yDist:F
    iget v8, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mMoveDirection:I

    packed-switch v8, :pswitch_data_0

    .line 124
    :goto_0
    const/4 v5, 0x0

    .line 125
    .local v5, tempSView:Lcom/htc/sunnyCore/view/SView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 126
    iget-object v8, p0, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tempSView:Lcom/htc/sunnyCore/view/SView;
    check-cast v5, Lcom/htc/sunnyCore/view/SView;

    .line 127
    .restart local v5       #tempSView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    .line 128
    .local v3, originalPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v8, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v8, v6

    iput v8, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 129
    iget v8, v3, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float/2addr v8, v7

    iput v8, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 130
    iget v8, v3, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iput v8, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 132
    invoke-direct {p0, v3, v2}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->moveViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v1

    .line 133
    .local v1, moveController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    invoke-virtual {v5, v1}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    .end local v0           #i:I
    .end local v1           #moveController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v3           #originalPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v5           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :pswitch_0
    iget v7, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mDistance:F

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    iget v8, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mDistance:F

    neg-float v7, v8

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    iget v6, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mDistance:F

    .line 118
    goto :goto_0

    .line 120
    :pswitch_3
    iget v8, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mDistance:F

    neg-float v6, v8

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private moveViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 3
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 140
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 142
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 143
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 144
    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 145
    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 147
    return-object v0
.end method


# virtual methods
.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 65
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-nez v3, :cond_0

    .line 66
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t move null GridView"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v2

    .line 70
    .local v2, lastParent:I
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v1

    .line 72
    .local v1, lastChild:I
    if-eq v2, v4, :cond_1

    if-ne v1, v4, :cond_3

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->reset()V

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_4

    .line 81
    iget-object v3, p0, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getGridViewItem(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->addSView(Lcom/htc/sunnyCore/view/SView;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_4
    invoke-super {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewAnimationSet;->onStart()V

    .line 85
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->move()V

    goto :goto_0
.end method
