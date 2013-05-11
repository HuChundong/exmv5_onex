.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
.super Ljava/lang/Object;
.source "FullScreenViewScroller.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/IViewScroller;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final MAX_VELOCITY:F = 0.0f

.field private static final TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final deceleration:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final ppi:F = 0.0f

.field private static final ppiBaseInPyramid:F = 240.0f


# instance fields
.field private final PAN_ANIMATION_FRAME_COUNT:I

.field private final PAN_ANIMATION_FRAME_COUNT_TO_HANDLE_MULTIPLE_SCROLL_EVENT:I

.field private bMultiOnScrollBeforeUpdateHandling:Z

.field private currentFlingingDuration:J

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentFlingingTravelledDistance:I

.field private currentMovedDistance:I

.field private deviceFPS:I

.field private initialVelocity:F

.field private isOnBouncingBack:Z

.field private final isOnborderThreshold:I

.field private isStartPanningOnItemLeftBorder:Z

.field private isStartPanningOnItemRightBorder:Z

.field private isStartPanningOnListLeftBorder:Z

.field private isStartPanningOnListRightBorder:Z

.field private itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

.field private item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

.field private lastPositionDifference:I

.field private mBouncingDuration:I

.field private mMultiOnScrollBeforeUpdateDistanceLeft:I

.field private mMultiOnScrollBeforeUpdateHandlingSteps:I

.field private mName:Ljava/lang/String;

.field private mOutRatioY:F

.field private onScrollReceivedBeforeUpdate:I

.field private onScrollRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private panAnimationFramesCount:I

.field private panTargetDistance:I

.field private relativeMovement:I

.field private status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    .line 50
    const/high16 v0, 0x447a

    sget v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    .line 51
    const v0, 0x43c0e9ba

    sget v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 19
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 20
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    .line 22
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 23
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    .line 24
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 25
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    .line 26
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 27
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    .line 28
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    .line 29
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .line 30
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 31
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 32
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 33
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 35
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnborderThreshold:I

    .line 36
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->PAN_ANIMATION_FRAME_COUNT:I

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->PAN_ANIMATION_FRAME_COUNT_TO_HANDLE_MULTIPLE_SCROLL_EVENT:I

    .line 39
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    .line 44
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnBouncingBack:Z

    .line 45
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mBouncingDuration:I

    .line 46
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mName:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 58
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .line 60
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    .line 61
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method public static adjustForTwoAxisUsage(FF[F)Z
    .locals 10
    .parameter "xVelocity"
    .parameter "yVelocity"
    .parameter "ret"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/high16 v8, 0x447a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    if-nez p2, :cond_0

    .line 197
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][FullScreenViewScroller][adjustForTwoAxisUsage]input array is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return v2

    .line 201
    :cond_0
    array-length v4, p2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 203
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][FullScreenViewScroller][adjustForTwoAxisUsage]input array size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_1
    cmpl-float v4, p0, v6

    if-eqz v4, :cond_2

    cmpl-float v4, p1, v6

    if-nez v4, :cond_3

    .line 209
    :cond_2
    aput p0, p2, v2

    .line 210
    aput p1, p2, v3

    .line 211
    sget v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    aput v2, p2, v9

    .line 212
    const/4 v2, 0x3

    sget v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    aput v4, p2, v2

    :goto_1
    move v2, v3

    .line 223
    goto :goto_0

    .line 216
    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 217
    .local v0, limitRatio:F
    div-float v4, p0, v0

    aput v4, p2, v2

    .line 218
    div-float v4, p1, v0

    aput v4, p2, v3

    .line 219
    aget v4, p2, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aget v5, p2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v8

    sget v5, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 220
    .local v1, projectedDuration:F
    aget v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v1

    aput v2, p2, v9

    .line 221
    const/4 v2, 0x3

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v8

    div-float/2addr v4, v1

    aput v4, p2, v2

    goto :goto_1
.end method

.method private easeFunction(FFF)F
    .locals 4
    .parameter "currentProgress"
    .parameter "deltaPosition"
    .parameter "totalProgress"

    .prologue
    .line 403
    div-float/2addr p1, p3

    .line 404
    mul-float v1, p1, p1

    .line 405
    .local v1, ts:F
    mul-float v0, v1, p1

    .line 406
    .local v0, tc:F
    const/high16 v2, 0x3f80

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x3f60

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    return v2
.end method

.method private limitedMovement(I)V
    .locals 4
    .parameter "positionDifference"

    .prologue
    const/4 v3, -0x1

    .line 235
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 283
    :goto_0
    return-void

    .line 243
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_3

    if-gez p1, :cond_3

    .line 248
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 254
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 257
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_5

    if-gez p1, :cond_5

    .line 259
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 261
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 265
    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 268
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_7

    if-lez p1, :cond_7

    .line 270
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 272
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 276
    :cond_6
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 281
    :cond_7
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkStartPanningOnBorder()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    .line 107
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    .line 108
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    .line 109
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    .line 111
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v1

    .line 114
    .local v1, currentItemIndex:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v2

    .line 115
    .local v2, itemCount:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v3

    int-to-float v0, v3

    .line 116
    .local v0, centerFrameCenter:F
    cmpl-float v3, v0, v4

    if-eqz v3, :cond_1

    .line 118
    if-nez v1, :cond_0

    cmpg-float v3, v0, v4

    if-gez v3, :cond_0

    .line 120
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    .line 122
    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_1

    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 124
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    .line 141
    .end local v0           #centerFrameCenter:F
    .end local v1           #currentItemIndex:I
    .end local v2           #itemCount:I
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][FullScreenViewScroller][checkStartPanningOnBorder]itemInfoGetter is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    .line 86
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 87
    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRelativeMovement()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    return v0
.end method

.method public getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3
    .parameter "item_align_mode"
    .parameter "itemInfoGetter"

    .prologue
    const/4 v0, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 69
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewScroller][init]item_align_mode is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 81
    :goto_0
    return v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 75
    if-nez p2, :cond_1

    .line 76
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewScroller][init]itemInfoGetter is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    goto :goto_0

    .line 80
    :cond_1
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(F)V
    .locals 3
    .parameter "initialVelocity"

    .prologue
    .line 160
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 161
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 162
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 164
    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    sget v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    .line 165
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    sget v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    .line 166
    return-void
.end method

.method public onFling(FF)V
    .locals 2
    .parameter "adjustedVelocity"
    .parameter "adjustedDeceleration"

    .prologue
    .line 176
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 177
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 178
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 180
    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    .line 181
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    .line 182
    return-void
.end method

.method public onTouchDown(I)V
    .locals 2
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 91
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 92
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    .line 93
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .line 94
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 95
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 97
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->checkStartPanningOnBorder()V

    .line 102
    return-void
.end method

.method public onTouchMove(I)V
    .locals 3
    .parameter "touchPositionOnViewport"

    .prologue
    .line 147
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    .line 148
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    .line 151
    .local v0, newPanTargetDistance:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    .line 152
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 153
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    if-eq v0, v1, :cond_0

    .line 154
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 157
    :cond_0
    return-void
.end method

.method public onTouchUp(I)V
    .locals 0
    .parameter "touchPositionOnViewport"

    .prologue
    .line 144
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 414
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    .line 415
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 416
    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    .line 417
    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 418
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    .line 419
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 420
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    .line 421
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    .line 422
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .line 423
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 424
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 425
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 426
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 427
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnBouncingBack:Z

    .line 428
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    .line 429
    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 286
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_1

    .line 287
    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_c

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, positionDifference:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    if-le v6, v8, :cond_7

    .line 293
    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    .line 294
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 296
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    if-nez v6, :cond_5

    .line 298
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v1, v6, v7

    .line 304
    .local v1, newPanTargetDistance:I
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v8, v6

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .line 307
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    if-lez v6, :cond_6

    .line 309
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    div-int v3, v6, v7

    .line 310
    .local v3, thisMove:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    rem-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 314
    :cond_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 322
    :goto_2
    add-int/2addr v1, v3

    .line 323
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .line 324
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    if-eq v1, v6, :cond_3

    .line 326
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 328
    :cond_3
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int v2, v6, v7

    .line 363
    .end local v1           #newPanTargetDistance:I
    .end local v3           #thisMove:I
    :goto_3
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    if-nez v6, :cond_4

    .line 365
    iput-boolean v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    .line 367
    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->limitedMovement(I)V

    .line 368
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .line 370
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 371
    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    goto/16 :goto_0

    .line 302
    :cond_5
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .restart local v1       #newPanTargetDistance:I
    goto :goto_1

    .line 318
    :cond_6
    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 319
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .restart local v3       #thisMove:I
    goto :goto_2

    .line 330
    .end local v1           #newPanTargetDistance:I
    .end local v3           #thisMove:I
    :cond_7
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    if-eqz v6, :cond_b

    .line 332
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 334
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .line 335
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 339
    :cond_8
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    if-lez v6, :cond_a

    .line 341
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    div-int v3, v6, v7

    .line 342
    .restart local v3       #thisMove:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    rem-int/2addr v6, v7

    if-eqz v6, :cond_9

    .line 344
    add-int/lit8 v3, v3, 0x1

    .line 346
    :cond_9
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 354
    :goto_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 355
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .line 356
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int v2, v6, v7

    .line 357
    goto :goto_3

    .line 350
    .end local v3           #thisMove:I
    :cond_a
    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    .line 351
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    .restart local v3       #thisMove:I
    goto :goto_4

    .line 360
    .end local v3           #thisMove:I
    :cond_b
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int v2, v6, v7

    goto :goto_3

    .line 374
    .end local v2           #positionDifference:I
    :cond_c
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_0

    .line 375
    const/16 v6, 0x3e8

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    div-int/2addr v6, v7

    int-to-long v4, v6

    .line 376
    .local v4, updateTimeDifference:J
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 377
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 378
    .local v0, lastCurrentFlingingTravelledDistance:I
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    long-to-float v6, v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    int-to-float v7, v7

    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    long-to-float v8, v8

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->easeFunction(FFF)F

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 379
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    sub-int v2, v6, v0

    .line 380
    .restart local v2       #positionDifference:I
    if-lez v2, :cond_e

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-lez v6, :cond_e

    .line 381
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-le v2, v6, :cond_d

    .line 382
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 389
    :cond_d
    :goto_5
    invoke-direct {p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->limitedMovement(I)V

    .line 390
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-nez v6, :cond_f

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_f

    .line 394
    :goto_6
    if-nez v2, :cond_0

    .line 395
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 396
    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 397
    sget-object v6, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    goto/16 :goto_0

    .line 384
    :cond_e
    if-gez v2, :cond_d

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-gez v6, :cond_d

    .line 385
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-ge v2, v6, :cond_d

    .line 386
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    goto :goto_5

    .line 392
    :cond_f
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    goto :goto_6
.end method
