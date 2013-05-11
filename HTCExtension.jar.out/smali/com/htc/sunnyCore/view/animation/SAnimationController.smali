.class public Lcom/htc/sunnyCore/view/animation/SAnimationController;
.super Ljava/lang/Object;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/view/animation/SAnimationController$1;,
        Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;,
        Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;,
        Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

.field protected mCurrentTime:J

.field protected mDelayTime:J

.field protected mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

.field protected mEndTime:J

.field private mHasMore:Z

.field protected mInterpolator:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

.field private mIsAlphaAnimation:Z

.field private mIsEnded:Z

.field protected mIsFileAfter:Z

.field protected mIsFileBefore:Z

.field private mIsPosAnimation:Z

.field private mIsReady:Z

.field private mIsRotateAnimation:Z

.field private mIsScaleAnimation:Z

.field private mIsStarted:Z

.field protected mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field protected mOffset:J

.field protected mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

.field protected mStartTime:J

.field protected mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 77
    sget-object v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    .line 83
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsReady:Z

    .line 84
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsStarted:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsEnded:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mHasMore:Z

    .line 88
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsPosAnimation:Z

    .line 89
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    .line 90
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsScaleAnimation:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsRotateAnimation:Z

    .line 96
    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartTime:J

    .line 100
    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    .line 104
    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndTime:J

    .line 108
    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mDelayTime:J

    .line 112
    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    .line 116
    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentTime:J

    .line 121
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsFileBefore:Z

    .line 125
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsFileAfter:Z

    .line 130
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    .line 134
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    .line 138
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    .line 145
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentTime:J

    .line 447
    iget-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mDelayTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 452
    iput-boolean v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mHasMore:Z

    .line 454
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->animationEnd()V

    .line 456
    iput-boolean v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsStarted:Z

    .line 457
    iput-boolean v8, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsEnded:Z

    .line 458
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 464
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsStarted:Z

    if-nez v2, :cond_4

    .line 465
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_3

    .line 466
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 468
    :cond_3
    iput-boolean v8, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsStarted:Z

    .line 471
    :cond_4
    iget-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mDelayTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    .line 473
    iget-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsPosAnimation:Z

    if-ne v8, v2, :cond_5

    .line 474
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 475
    .local v1, start:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 477
    .local v0, end:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 478
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 479
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 482
    .end local v0           #end:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v1           #start:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsScaleAnimation:Z

    if-ne v8, v2, :cond_6

    .line 483
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    .line 484
    .restart local v1       #start:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    .line 486
    .restart local v0       #end:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 487
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 488
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 491
    .end local v0           #end:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v1           #start:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_6
    iget-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsRotateAnimation:Z

    if-ne v8, v2, :cond_7

    .line 492
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 493
    .restart local v1       #start:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 495
    .restart local v0       #end:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 496
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 497
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 500
    .end local v0           #end:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v1           #start:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_7
    iget-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    if-ne v8, v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget v1, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 502
    .local v1, start:I
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget v0, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 504
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-wide v3, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    int-to-float v4, v1

    sub-int v5, v0, v1

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected animationEnd()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 513
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 514
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 515
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 516
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->reset()V

    .line 412
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->animationEnd()V

    .line 414
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 417
    :cond_0
    return-void
.end method

.method public final getCurrentAlpha()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    return v0
.end method

.method public final getCurrentPosition()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method public final getCurrentRotation()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method public final getCurrentScale()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    return-wide v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mHasMore:Z

    return v0
.end method

.method protected interpolate(FFFF)F
    .locals 12
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    .line 522
    const/4 v8, 0x0

    cmpl-float v8, v8, p4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    .line 564
    :goto_0
    return v4

    .line 524
    :cond_0
    const/4 v4, 0x0

    .line 525
    .local v4, nRes:F
    const/4 v7, 0x0

    .local v7, ts:F
    const/4 v6, 0x0

    .line 526
    .local v6, tc:F
    move v5, p1

    .line 527
    .local v5, t:F
    move v0, p2

    .line 528
    .local v0, b:F
    move v1, p3

    .line 529
    .local v1, c:F
    move/from16 v2, p4

    .line 531
    .local v2, d:F
    sget-object v8, Lcom/htc/sunnyCore/view/animation/SAnimationController$1;->$SwitchMap$com$htc$sunnyCore$view$animation$SAnimationController$INTERPOLATOR:[I

    iget-object v9, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 533
    :pswitch_0
    div-float v8, v1, v2

    mul-float/2addr v8, v5

    add-float v4, v8, v0

    .line 534
    goto :goto_0

    .line 536
    :pswitch_1
    div-float/2addr v5, v2

    .line 537
    mul-float v7, v5, v5

    .line 538
    mul-float v6, v7, v5

    .line 539
    const/high16 v8, 0x3f80

    mul-float/2addr v8, v6

    mul-float/2addr v8, v7

    const/high16 v9, -0x3f60

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x4120

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    const/high16 v9, -0x3ee0

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 540
    goto :goto_0

    .line 543
    :pswitch_2
    div-float v8, v5, v2

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 544
    goto :goto_0

    .line 546
    :pswitch_3
    div-float/2addr v5, v2

    .line 547
    mul-float v7, v5, v5

    .line 548
    mul-float v6, v7, v5

    .line 549
    mul-float v8, v6, v7

    const/high16 v9, -0x3f60

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x4120

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    const/high16 v9, -0x3ee0

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 550
    goto :goto_0

    .line 552
    :pswitch_4
    div-float/2addr v5, v2

    .line 553
    mul-float v7, v5, v5

    .line 554
    mul-float v6, v7, v5

    .line 555
    mul-float v8, v6, v7

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 556
    goto :goto_0

    .line 558
    :pswitch_5
    div-float v3, p1, p4

    .line 559
    .local v3, input:F
    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    sub-float/2addr v9, v3

    const/high16 v10, 0x3f80

    sub-float/2addr v10, v3

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v8, p3

    add-float v4, p2, v8

    .line 560
    goto/16 :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isAlphaAnimation()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsEnded:Z

    return v0
.end method

.method public isFillAfter()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsFileAfter:Z

    return v0
.end method

.method public isFillBefore()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsFileBefore:Z

    return v0
.end method

.method public isPositionAnimation()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsPosAnimation:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsReady:Z

    return v0
.end method

.method public isRotateAnimation()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsRotateAnimation:Z

    return v0
.end method

.method public isScaleAnimation()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsScaleAnimation:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsStarted:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsEnded:Z

    .line 400
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsStarted:Z

    .line 401
    iget-wide v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndTime:J

    iput-wide v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentTime:J

    .line 402
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mHasMore:Z

    .line 403
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsReady:Z

    .line 404
    return-void
.end method

.method public setAlphaAnimation(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iput p1, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 231
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iput p2, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    .line 234
    return-void
.end method

.method public setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 170
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .parameter "nMilliseconds"

    .prologue
    .line 297
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iput-wide p1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    .line 301
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .parameter "bFillAfter"

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsFileAfter:Z

    .line 335
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .parameter "bFillBefore"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsFileBefore:Z

    .line 323
    return-void
.end method

.method public setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    .line 285
    return-void
.end method

.method public setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 183
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsPosAnimation:Z

    .line 186
    return-void
.end method

.method public setReady()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsReady:Z

    .line 152
    return-void
.end method

.method public setRotationAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 199
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsRotateAnimation:Z

    .line 202
    return-void
.end method

.method public setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 215
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsScaleAnimation:Z

    .line 218
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .parameter "nMilliseconds"

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mDelayTime:J

    .line 246
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsReady:Z

    .line 384
    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsEnded:Z

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mIsStarted:Z

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mHasMore:Z

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartTime:J

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mTotalTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mDelayTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mEndTime:J

    .line 389
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 390
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 391
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 392
    iget-object v0, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 393
    return-void
.end method
