.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleTransitionAnimation"
.end annotation


# static fields
.field public static final DEFAULT:I


# instance fields
.field private final ALPHA_ADJUST:F

.field private ani_duration:J

.field private mCurrentTime:J

.field private mEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

.field private mEndTime:J

.field private mFirst:Z

.field private mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private mFromScaleX:F

.field private mFromScaleY:F

.field private mFromX:F

.field private mFromY:F

.field private mIsIn:Z

.field private mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

.field private mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field private mScale:Z

.field private mStartTime:J

.field private mToScaleX:F

.field private mToScaleY:F

.field private mToX:F

.field private mToY:F

.field private mTouchedGridViewItemIndex:I

.field private mTransition:Z

.field private mViewRoot:Lcom/htc/sunnyCore/view/SView;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;ZIILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V
    .locals 2
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "item"
    .parameter "listener"
    .parameter "viewRoot"
    .parameter "frame"
    .parameter "isIn"
    .parameter "duration"
    .parameter "touchedGridViewItemIndex"
    .parameter "endListener"

    .prologue
    .line 2510
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 2511
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2483
    const-wide/16 v0, 0xb

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    .line 2485
    const v0, 0x3f19999a

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ALPHA_ADJUST:F

    .line 2486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 2489
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    .line 2490
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    .line 2491
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    .line 2492
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    .line 2493
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    .line 2494
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    .line 2495
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    .line 2496
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    .line 2498
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    .line 2499
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    .line 2500
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 2501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFirst:Z

    .line 2504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunnyCore/view/SView;

    .line 2505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 2506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    .line 2507
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    .line 2508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    .line 2512
    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 2513
    iput-object p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 2514
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 2515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mScale:Z

    .line 2516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTransition:Z

    .line 2517
    iput-object p6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunnyCore/view/SView;

    .line 2518
    iput-object p7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 2519
    iput-boolean p8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    .line 2520
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    .line 2521
    iput p10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    .line 2522
    iput-object p11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    .line 2523
    return-void
.end method

.method private stepEaseInOutFunction(FFFF)F
    .locals 8
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 2658
    cmpl-float v7, v3, p4

    if-nez v7, :cond_0

    .line 2696
    :goto_0
    return v3

    .line 2660
    :cond_0
    const/4 v3, 0x0

    .line 2661
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 2662
    .local v5, tc:F
    move v4, p1

    .line 2663
    .local v4, t:F
    move v0, p2

    .line 2664
    .local v0, b:F
    move v1, p3

    .line 2665
    .local v1, c:F
    move v2, p4

    .line 2669
    .local v2, d:F
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 2696
    goto :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 5
    .parameter "cancelReason"

    .prologue
    .line 2649
    sget-object v0, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 2651
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setIndicatorSpriteVisibility(Z)V

    .line 2652
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 2653
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2655
    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 21
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 2541
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mScale:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTransition:Z

    if-nez v4, :cond_2

    .line 2543
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2544
    :cond_1
    const/4 v4, 0x0

    .line 2644
    :goto_0
    return v4

    .line 2546
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isReady()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-boolean v4, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_5

    .line 2548
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2549
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 2551
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFirst:Z

    if-eqz v4, :cond_16

    .line 2552
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 2553
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    .line 2554
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_6

    .line 2555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    .line 2556
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_7

    .line 2557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    .line 2559
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_8

    .line 2560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    .line 2561
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_9

    .line 2562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    .line 2564
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameWidth()F

    move-result v4

    float-to-int v0, v4

    move/from16 v16, v0

    .line 2565
    .local v16, screenW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameHeight()F

    move-result v4

    float-to-int v15, v4

    .line 2566
    .local v15, screenH:I
    div-int/lit8 v11, v16, 0x2

    .line 2567
    .local v11, adjustW:I
    div-int/lit8 v10, v15, 0x2

    .line 2569
    .local v10, adjustH:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_a

    .line 2570
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    int-to-float v0, v11

    move/from16 v17, v0

    sub-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    .line 2572
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_b

    .line 2573
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    int-to-float v0, v10

    move/from16 v17, v0

    add-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    .line 2576
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_c

    .line 2577
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    int-to-float v0, v11

    move/from16 v17, v0

    sub-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    .line 2579
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_d

    .line 2580
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    int-to-float v0, v10

    move/from16 v17, v0

    add-float v4, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    .line 2583
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 2584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setIndicatorSpriteVisibility(Z)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_e

    .line 2586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2587
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunnyCore/view/SView;

    if-eqz v4, :cond_f

    .line 2588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mViewRoot:Lcom/htc/sunnyCore/view/SView;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 2591
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFirst:Z

    .line 2596
    .end local v10           #adjustH:I
    .end local v11           #adjustW:I
    .end local v15           #screenH:I
    .end local v16           #screenW:I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    move-wide/from16 v19, v0

    cmp-long v4, v17, v19

    if-lez v4, :cond_10

    .line 2597
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    .line 2599
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mStartTime:J

    move-wide/from16 v19, v0

    sub-long v13, v17, v19

    .line 2600
    .local v13, offset:J
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v6

    .line 2601
    .local v6, currentWidth:F
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v7

    .line 2602
    .local v7, currentHeight:F
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v8

    .line 2603
    .local v8, currentX:F
    long-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->stepEaseInOutFunction(FFFF)F

    move-result v9

    .line 2605
    .local v9, currentY:F
    const/high16 v5, 0x3f80

    .line 2606
    .local v5, fitToScreenAspectRatio:F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-eqz v4, :cond_17

    .line 2607
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    move/from16 v17, v0

    div-float v5, v4, v17

    .line 2611
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdateWithUVAdjust(FFFFF)V

    .line 2613
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-eqz v4, :cond_18

    .line 2614
    const v4, 0x3f19999a

    long-to-float v0, v13

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    add-float v12, v4, v17

    .line 2618
    .local v12, alpha:F
    :goto_3
    const/high16 v4, 0x3f80

    cmpl-float v4, v12, v4

    if-lez v4, :cond_11

    .line 2619
    const/high16 v12, 0x3f80

    .line 2622
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4, v12}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onSetImageAlpha(F)V

    .line 2624
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndTime:J

    move-wide/from16 v19, v0

    cmp-long v4, v17, v19

    if-nez v4, :cond_19

    .line 2626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 2629
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-nez v4, :cond_12

    .line 2631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onSetImageAlpha(F)V

    .line 2634
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mIsIn:Z

    if-eqz v4, :cond_13

    .line 2635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setIndicatorSpriteVisibility(Z)V

    .line 2637
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2638
    :cond_14
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v4, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    if-eqz v4, :cond_15

    .line 2640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTouchedGridViewItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;->onSceneAnimationEndIRT(I)V

    .line 2642
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2593
    .end local v5           #fitToScreenAspectRatio:F
    .end local v6           #currentWidth:F
    .end local v7           #currentHeight:F
    .end local v8           #currentX:F
    .end local v9           #currentY:F
    .end local v12           #alpha:F
    .end local v13           #offset:J
    :cond_16
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mCurrentTime:J

    goto/16 :goto_1

    .line 2609
    .restart local v5       #fitToScreenAspectRatio:F
    .restart local v6       #currentWidth:F
    .restart local v7       #currentHeight:F
    .restart local v8       #currentX:F
    .restart local v9       #currentY:F
    .restart local v13       #offset:J
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    move/from16 v17, v0

    div-float v5, v4, v17

    goto/16 :goto_2

    .line 2616
    :cond_18
    const v4, 0x3fcccccd

    long-to-float v0, v13

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->ani_duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    sub-float v12, v4, v17

    .restart local v12       #alpha:F
    goto/16 :goto_3

    .line 2644
    :cond_19
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setScale(FFFF)V
    .locals 1
    .parameter "fromScaleX"
    .parameter "fromScaleY"
    .parameter "toScaleX"
    .parameter "toScaleY"

    .prologue
    .line 2525
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleX:F

    .line 2526
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromScaleY:F

    .line 2527
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleX:F

    .line 2528
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToScaleY:F

    .line 2529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mScale:Z

    .line 2530
    return-void
.end method

.method public setTransition(IIII)V
    .locals 1
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 2533
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromX:F

    .line 2534
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mFromY:F

    .line 2535
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToX:F

    .line 2536
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mToY:F

    .line 2537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->mTransition:Z

    .line 2538
    return-void
.end method
