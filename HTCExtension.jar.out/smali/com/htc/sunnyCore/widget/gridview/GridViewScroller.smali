.class public Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;
.super Ljava/lang/Object;
.source "GridViewScroller.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/IViewScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private MAX_VELOCITY:F

.field private final SCROLLER_DEBUG_FLAG:Z

.field private TAG:Ljava/lang/String;

.field private actuallButtomBorder:F

.field private currentFlingingDuration:J

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentFlingingTravelledDistance:I

.field private currentMovedDistance:I

.field private deceleration:F

.field private deviceFPS:I

.field private initialVelocity:F

.field private final isOnBorderThreshold:I

.field private isOnBouncingBack:Z

.field private isStartPanningOnButtomBorder:Z

.field private isStartPanningOnTopBorder:Z

.field private itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

.field private item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

.field private lastPositionDifference:I

.field private mBouncingDuration:I

.field private mOutRatioY:F

.field private panAnimationFramesCount:I

.field private panTargetDistance:I

.field private ppi:F

.field private final ppiBaseInPyramid:F

.field private relativeMovement:I

.field private shouldLockPanningOnePage:Z

.field private shouldLockPanning_PannedDown:Z

.field private shouldLockPanning_PannedUp:Z

.field private status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x4516

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "GridViewScroller"

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 30
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 31
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    .line 33
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 35
    iput-wide v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 36
    iput-wide v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 37
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 38
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 39
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deviceFPS:I

    .line 40
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    .line 41
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentMovedDistance:I

    .line 42
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panTargetDistance:I

    .line 43
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    .line 44
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 45
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBorderThreshold:I

    .line 56
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 57
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->mBouncingDuration:I

    .line 58
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->mOutRatioY:F

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->SCROLLER_DEBUG_FLAG:Z

    .line 65
    const/high16 v0, 0x4370

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->ppiBaseInPyramid:F

    .line 66
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->ppi:F

    .line 67
    sget v0, Lcom/htc/sunnyCore/common/LayoutConstants;->GRID_VIEW_MAX_VELOCITY_RATIO_TO_QHD:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->MAX_VELOCITY:F

    .line 74
    sget v0, Lcom/htc/sunnyCore/common/LayoutConstants;->GRID_VIEW_MAX_VELOCITY_RATIO_TO_QHD:F

    mul-float v1, v3, v0

    sget v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const v0, 0x3fb33333

    :goto_0
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->MAX_VELOCITY:F

    .line 75
    const v0, 0x47b4db1e

    sget v1, Lcom/htc/sunnyCore/common/LayoutConstants;->GRID_VIEW_MAX_VELOCITY_RATIO_TO_QHD:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deceleration:F

    .line 80
    return-void

    .line 74
    :cond_0
    const v0, 0x3fa66666

    goto :goto_0
.end method

.method private checkStartPanningOnBorder()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 138
    iget-boolean v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    if-eqz v7, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    .line 144
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    .line 145
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    .line 146
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    .line 148
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    .line 149
    .local v1, itemCount:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemsInASet()I

    move-result v4

    .line 150
    .local v4, itemsInASet:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v7

    iget-object v10, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v10

    sub-int/2addr v7, v10

    iget-object v10, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v10

    sub-int v0, v7, v10

    .line 151
    .local v0, gridViewLength:I
    const/4 v6, 0x0

    .line 152
    .local v6, numberofSets:I
    const/4 v5, 0x0

    .line 153
    .local v5, itemsTotalLength:I
    if-lez v4, :cond_5

    .line 155
    div-int v10, v1, v4

    rem-int v7, v1, v4

    if-nez v7, :cond_4

    move v7, v8

    :goto_1
    add-int v6, v10, v7

    .line 157
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v10, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v10

    invoke-interface {v7, v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v2

    .line 158
    .local v2, itemLength:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemSpacing()I

    move-result v3

    .line 159
    .local v3, itemSpacing:I
    add-int v7, v2, v3

    mul-int/2addr v7, v6

    sub-int v5, v7, v3

    .line 160
    if-ge v5, v0, :cond_2

    move v8, v9

    :cond_2
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    .line 169
    .end local v2           #itemLength:I
    .end local v3           #itemSpacing:I
    :goto_2
    iget-boolean v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-eqz v7, :cond_7

    .line 171
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v7

    add-int/2addr v7, v5

    int-to-float v7, v7

    iput v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    .line 193
    :goto_3
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v8}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v8

    neg-int v8, v8

    add-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_3

    .line 195
    iput-boolean v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    .line 198
    :cond_3
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v1, :cond_0

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v10, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v10

    invoke-interface {v8, v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    neg-float v8, v8

    const/high16 v10, 0x4000

    sub-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 200
    iput-boolean v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    goto/16 :goto_0

    :cond_4
    move v7, v9

    .line 155
    goto :goto_1

    .line 164
    :cond_5
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLayoutHeight()I

    move-result v5

    .line 165
    if-ge v5, v0, :cond_6

    move v8, v9

    :cond_6
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    goto :goto_2

    .line 175
    :cond_7
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v8}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    goto :goto_3
.end method

.method private easeFunction(FFF)F
    .locals 10
    .parameter "currentProgress"
    .parameter "deltaPosition"
    .parameter "totalProgress"

    .prologue
    .line 659
    div-float/2addr p1, p3

    .line 660
    mul-float v1, p1, p1

    .line 661
    .local v1, ts:F
    mul-float v0, v1, p1

    .line 662
    .local v0, tc:F
    float-to-double v2, p2

    const-wide v4, -0x3ffd333333333333L

    float-to-double v6, v0

    mul-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide v6, 0x4018f5c28f5c28f6L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4013147ae147ae14L

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3feae147ae147ae1L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4005c28f5c28f5c3L

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private limitedMovement(I)V
    .locals 4
    .parameter "positionDifference"

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 523
    :goto_0
    return-void

    .line 403
    :cond_0
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 406
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-lez p1, :cond_3

    .line 409
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-lez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 417
    :cond_2
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 423
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    if-eqz v0, :cond_4

    .line 426
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 428
    :cond_4
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-eqz v0, :cond_d

    .line 435
    if-lez p1, :cond_8

    .line 437
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_5

    .line 440
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 442
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    if-eqz v0, :cond_6

    .line 445
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-ltz v0, :cond_7

    .line 450
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 451
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 456
    :cond_7
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 459
    :cond_8
    if-gez p1, :cond_c

    .line 461
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_9

    .line 464
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 465
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 467
    :cond_9
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    if-eqz v0, :cond_a

    .line 470
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 472
    :cond_a
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_b

    .line 475
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 480
    :cond_b
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 485
    :cond_c
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 488
    :cond_d
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_f

    .line 490
    if-ltz p1, :cond_e

    .line 493
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 498
    :cond_e
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 499
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 502
    :cond_f
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-lt v0, v1, :cond_11

    .line 504
    if-gtz p1, :cond_10

    .line 507
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 512
    :cond_10
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 513
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 519
    :cond_11
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    .line 118
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 119
    return-void
.end method

.method public flingByDistance(ILcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;)V
    .locals 4
    .parameter "distance"
    .parameter "durationTuner"

    .prologue
    .line 530
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->mBouncingDuration:I

    .line 531
    .local v1, duration:I
    move v0, p1

    .line 532
    .local v0, distanceToGo:I
    invoke-interface {p2, v1, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;->getDuration(II)I

    move-result v1

    .line 533
    sget-object v2, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 534
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 535
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 536
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 537
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 538
    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRelativeMovement()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    return v0
.end method

.method public getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3
    .parameter "item_align_mode"
    .parameter "itemInfoGetter"

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] item_align_mode is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deInit()V

    .line 109
    .end local p2
    :goto_0
    return v0

    .line 93
    .restart local p2
    :cond_0
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 95
    if-nez p2, :cond_1

    .line 97
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] itemInfoGetter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deInit()V

    goto :goto_0

    .line 101
    :cond_1
    instance-of v1, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] itemInfoGetter is not GridViewItemInfoGetter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deInit()V

    goto :goto_0

    .line 108
    :cond_2
    check-cast p2, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    .end local p2
    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStartPanningOnButtomBorder()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    return v0
.end method

.method public isStartPanningOnTopBorder()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    return v0
.end method

.method public onFling(F)V
    .locals 3
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 349
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 350
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 353
    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 356
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    goto :goto_0
.end method

.method public onTouchDown(I)V
    .locals 1
    .parameter "touchPositionOnViewport"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->checkStartPanningOnBorder()V

    .line 129
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->reset()V

    .line 130
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 131
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    .line 133
    return-void
.end method

.method public onTouchMove(I)V
    .locals 6
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, newPanTargetDistance:I
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    .line 259
    .local v1, viewportLength:I
    if-lez p1, :cond_7

    .line 262
    const/4 p1, 0x0

    .line 274
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    if-nez v2, :cond_2

    .line 276
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-lez v2, :cond_1

    .line 278
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    .line 280
    :cond_1
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_2

    .line 282
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    .line 286
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v3

    neg-int v3, v3

    if-lt v2, v3, :cond_3

    .line 288
    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    .line 291
    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 293
    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    .line 298
    :cond_4
    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_8

    .line 327
    :cond_5
    :goto_1
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panTargetDistance:I

    if-eq v0, v2, :cond_6

    .line 329
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panTargetDistance:I

    .line 330
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    .line 334
    :cond_6
    return-void

    .line 264
    :cond_7
    neg-int v2, v1

    if-ge p1, v2, :cond_0

    .line 267
    neg-int p1, v1

    goto :goto_0

    .line 306
    :cond_8
    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v3

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gtz v2, :cond_5

    .line 313
    :cond_9
    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-nez v2, :cond_5

    .line 323
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v2

    .line 324
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->mOutRatioY:F

    goto :goto_1
.end method

.method public onTouchUp(I)V
    .locals 4
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v3, 0x1

    .line 228
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 231
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 246
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 237
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 677
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 678
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 679
    iput-wide v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 680
    iput-wide v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 681
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 682
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 683
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    .line 684
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentMovedDistance:I

    .line 685
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panTargetDistance:I

    .line 686
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    .line 687
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 688
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 689
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 690
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->mOutRatioY:F

    .line 691
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->checkStartPanningOnBorder()V

    .line 692
    return-void
.end method

.method public scrollExpGridViewByDistance(ILcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;IZ)V
    .locals 4
    .parameter "distance"
    .parameter "durationTuner"
    .parameter "duration"
    .parameter "forceBouncingBack"

    .prologue
    const/4 v3, 0x1

    .line 549
    move v0, p1

    .line 550
    .local v0, distanceToGo:I
    invoke-interface {p2, p3, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;->getDuration(II)I

    move-result p3

    .line 551
    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 552
    int-to-float v1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 553
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 554
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 555
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 557
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    .line 559
    if-eqz p4, :cond_0

    .line 560
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 562
    :cond_0
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 569
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_1

    .line 571
    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_4

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, positionDifference:I
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    if-nez v4, :cond_3

    .line 579
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentMovedDistance:I

    sub-int v1, v4, v5

    .line 586
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->limitedMovement(I)V

    .line 587
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentMovedDistance:I

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentMovedDistance:I

    goto :goto_0

    .line 581
    :cond_3
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    if-lez v4, :cond_2

    .line 583
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentMovedDistance:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    div-int v1, v4, v5

    .line 584
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto :goto_1

    .line 589
    .end local v1           #positionDifference:I
    :cond_4
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_0

    .line 592
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->deviceFPS:I

    div-int/2addr v4, v5

    int-to-long v2, v4

    .line 593
    .local v2, updateTimeDifference:J
    iget-wide v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 596
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 597
    .local v0, lastCurrentFlingingTravelledDistance:I
    iget-wide v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    long-to-float v4, v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    long-to-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->easeFunction(FFF)F

    move-result v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 600
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    sub-int v1, v4, v0

    .line 606
    .restart local v1       #positionDifference:I
    if-lez v1, :cond_9

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-lez v4, :cond_9

    .line 608
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-le v1, v4, :cond_5

    .line 610
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 625
    :cond_5
    :goto_2
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-nez v4, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_6

    .line 627
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 631
    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-wide v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    iget-wide v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a

    .line 633
    :cond_7
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 634
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    sub-int v1, v4, v0

    .line 644
    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->limitedMovement(I)V

    .line 646
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->relativeMovement:I

    if-nez v4, :cond_0

    .line 648
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 649
    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 650
    sget-object v4, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 651
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto/16 :goto_0

    .line 613
    :cond_9
    if-gez v1, :cond_5

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-gez v4, :cond_5

    .line 615
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-ge v1, v4, :cond_5

    .line 617
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->lastPositionDifference:I

    goto :goto_2

    .line 637
    :cond_a
    if-nez v1, :cond_8

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 640
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v1, v4

    .line 641
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    goto :goto_3
.end method
