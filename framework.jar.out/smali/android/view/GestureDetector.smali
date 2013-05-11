.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityTrackerStrategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 214
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 215
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.gesture.verbose"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    .line 47
    const-string v0, "GestureDetector"

    iput-object v0, p0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    .line 259
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_1
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 368
    if-eqz p3, :cond_3

    .line 369
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 373
    :goto_2
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 374
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 375
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 377
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 378
    return-void

    .restart local p2
    :cond_1
    move v0, v1

    .line 46
    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 371
    :cond_3
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "unused"

    .prologue
    .line 394
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 320
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/GestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 711
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 716
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 717
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 718
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 719
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 720
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 721
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 724
    :cond_0
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GestureDetector"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_1
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 731
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 733
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 734
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 735
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 736
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 739
    :cond_0
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GestureDetector"

    const-string v1, "cancelTaps()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_1
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 762
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GestureDetector"

    const-string v1, "GestureHandler LONG_PRESS: dispatchLongPress(), onLongPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 765
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 398
    iget-object v4, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    .line 399
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 405
    if-nez p1, :cond_1

    .line 407
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 408
    .local v3, touchSlop:I
    move v2, v3

    .line 409
    .local v2, doubleTapTouchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 411
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 412
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 421
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 422
    mul-int v4, v2, v2

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 423
    mul-int v4, v1, v1

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 424
    return-void

    .line 414
    .end local v1           #doubleTapSlop:I
    .end local v2           #doubleTapTouchSlop:I
    .end local v3           #touchSlop:I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 415
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 416
    .restart local v3       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 417
    .restart local v2       #doubleTapTouchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 418
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 419
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v2, 0x0

    .line 745
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v2

    .line 749
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 754
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 755
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .parameter "ev"

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    const-string v27, "GestureDetector"

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 506
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 508
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 516
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 518
    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    const/16 v28, 0x6

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    .line 520
    .local v18, pointerUp:Z
    :goto_1
    if-eqz v18, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 523
    .local v21, skipIndex:I
    :goto_2
    const/16 v22, 0x0

    .local v22, sumX:F
    const/16 v23, 0x0

    .line 524
    .local v23, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 525
    .local v6, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v6, :cond_7

    .line 526
    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 525
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 511
    .end local v6           #count:I
    .end local v16           #i:I
    .end local v18           #pointerUp:Z
    .end local v21           #skipIndex:I
    .end local v22           #sumX:F
    .end local v23           #sumY:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 518
    :cond_4
    const/16 v18, 0x0

    goto :goto_1

    .line 520
    .restart local v18       #pointerUp:Z
    :cond_5
    const/16 v21, -0x1

    goto :goto_2

    .line 527
    .restart local v6       #count:I
    .restart local v16       #i:I
    .restart local v21       #skipIndex:I
    .restart local v22       #sumX:F
    .restart local v23       #sumY:F
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    add-float v22, v22, v27

    .line 528
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    add-float v23, v23, v27

    goto :goto_4

    .line 530
    :cond_7
    if-eqz v18, :cond_a

    add-int/lit8 v11, v6, -0x1

    .line 531
    .local v11, div:I
    :goto_5
    int-to-float v0, v11

    move/from16 v27, v0

    div-float v12, v22, v27

    .line 532
    .local v12, focusX:F
    int-to-float v0, v11

    move/from16 v27, v0

    div-float v13, v23, v27

    .line 534
    .local v13, focusY:F
    const/4 v15, 0x0

    .line 536
    .local v15, handled:Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 704
    :cond_8
    :goto_6
    :pswitch_0
    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 707
    :cond_9
    return v15

    .end local v11           #div:I
    .end local v12           #focusX:F
    .end local v13           #focusY:F
    .end local v15           #handled:Z
    :cond_a
    move v11, v6

    .line 530
    goto :goto_5

    .line 538
    .restart local v11       #div:I
    .restart local v12       #focusX:F
    .restart local v13       #focusY:F
    .restart local v15       #handled:Z
    :pswitch_1
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 539
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 541
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 543
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_POINTER_DOWN: mDownFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mLastFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", focusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 548
    :pswitch_2
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 549
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 551
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_POINTER_UP: mDownFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mLastFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", focusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 556
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    .line 558
    .local v14, hadTapMessage:Z
    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 562
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 565
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_DOWN: onDoubleTap()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 570
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_DOWN: onDoubleTapEvent()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 579
    .end local v14           #hadTapMessage:Z
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 580
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 582
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_DOWN: mDownFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mLastFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", focusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 587
    :cond_10
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 588
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 589
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 590
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 591
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 593
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v29

    sget v31, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    sget v31, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 598
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v29

    sget v31, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_12

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_DOWN: onDown()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 603
    goto/16 :goto_6

    .line 575
    .restart local v14       #hadTapMessage:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    sget v29, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 606
    .end local v14           #hadTapMessage:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v27, v0

    if-nez v27, :cond_8

    .line 609
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v27, v0

    sub-float v19, v27, v12

    .line 610
    .local v19, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v27, v0

    sub-float v20, v27, v13

    .line 611
    .local v20, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_14

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_MOVE: onDoubleTapEvent()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    goto/16 :goto_6

    .line 617
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v27, v0

    sub-float v27, v12, v27

    move/from16 v0, v27

    float-to-int v8, v0

    .line 619
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    move/from16 v27, v0

    sub-float v27, v13, v27

    move/from16 v0, v27

    float-to-int v9, v0

    .line 620
    .local v9, deltaY:I
    mul-int v27, v8, v8

    mul-int v28, v9, v9

    add-int v10, v27, v28

    .line 621
    .local v10, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v10, v0, :cond_17

    .line 623
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_MOVE: onScroll(), mAlwaysInTapRegion="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "->false"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v15

    .line 626
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 627
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 628
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v10, v0, :cond_8

    .line 634
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_6

    .line 636
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    .end local v10           #distance:I
    :cond_18
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-gez v27, :cond_19

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_8

    .line 638
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1a

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_MOVE: onScroll()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v15

    .line 641
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 642
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_MOVE: mDownFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mLastFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", focusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 650
    .end local v19           #scrollX:F
    .end local v20           #scrollY:F
    :pswitch_5
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 651
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 652
    .local v7, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1f

    .line 655
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_UP: onDoubleTapEvent()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 683
    :cond_1c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1d

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 687
    :cond_1d
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1e

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/VelocityTracker;->recycle()V

    .line 692
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 694
    :cond_1e
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_6

    .line 658
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_20

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_8

    .line 661
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v27, v0

    if-eqz v27, :cond_22

    .line 663
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_UP: onSingleTapUp()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v15

    goto/16 :goto_8

    .line 669
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 670
    .local v24, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 671
    .local v17, pointerId:I
    const/16 v27, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 672
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    .line 673
    .local v26, velocityY:F
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v25

    .line 675
    .local v25, velocityX:F
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-gtz v27, :cond_23

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_1c

    .line 678
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_24

    const-string v27, "GestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") MotionEvent.ACTION_UP: onFling()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v15

    goto/16 :goto_8

    .line 700
    .end local v7           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v17           #pointerId:I
    .end local v24           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v25           #velocityX:F
    .end local v26           #velocityY:F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_6

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .parameter "isLongpressEnabled"

    .prologue
    .line 476
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 477
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 463
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 464
    return-void
.end method

.method public setVelocityTrackerDegree(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 434
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 435
    const-string v0, "int1"

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 436
    const-string v0, "GestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set VelocityTracker strategy \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-void
.end method

.method public setVelocityTrackerStrategy(Ljava/lang/String;)V
    .locals 3
    .parameter "strategy"

    .prologue
    .line 447
    if-eqz p1, :cond_0

    .line 448
    iput-object p1, p0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 449
    const-string v0, "GestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set VelocityTracker strategy \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    return-void
.end method
