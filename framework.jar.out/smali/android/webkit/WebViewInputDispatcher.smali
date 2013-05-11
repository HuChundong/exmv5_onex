.class final Landroid/webkit/WebViewInputDispatcher;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewInputDispatcher$1;,
        Landroid/webkit/WebViewInputDispatcher$TouchStream;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEvent;,
        Landroid/webkit/WebViewInputDispatcher$WebKitHandler;,
        Landroid/webkit/WebViewInputDispatcher$UiHandler;,
        Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;,
        Landroid/webkit/WebViewInputDispatcher$UiCallbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final ENABLE_EVENT_BATCHING:Z = false

.field public static final EVENT_TYPE_CLICK:I = 0x4

.field public static final EVENT_TYPE_DOUBLE_TAP:I = 0x5

.field public static final EVENT_TYPE_HIT_TEST:I = 0x6

.field public static final EVENT_TYPE_HOVER:I = 0x1

.field public static final EVENT_TYPE_LONG_PRESS:I = 0x3

.field public static final EVENT_TYPE_SCROLL:I = 0x2

.field public static final EVENT_TYPE_TOUCH:I = 0x0

.field public static final FLAG_PRIVATE:I = 0x1

.field public static final FLAG_WEBKIT_IN_PROGRESS:I = 0x2

.field public static final FLAG_WEBKIT_TIMEOUT:I = 0x4

.field public static final FLAG_WEBKIT_TRANSFORMED_EVENT:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final LONG_PRESS_TIMEOUT:I = 0x0

.field private static final MAX_DISPATCH_EVENT_POOL_SIZE:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final PRESSED_STATE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WebViewInputDispatcher"

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:I = 0x0

.field private static final WEBKIT_TIMEOUT_MILLIS:J = 0xc8L

.field static final blacklist:[Ljava/lang/String;


# instance fields
.field byPassMoveEvent:Z

.field private mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field private mDispatchEventPoolSize:I

.field private mDoubleTapSlopSquared:F

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mIsDoubleTapCandidate:Z

.field private mIsTapCandidate:Z

.field private final mLock:Ljava/lang/Object;

.field private mPostClickScheduled:Z

.field private mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

.field private mPostHideTapHighlightScheduled:Z

.field private mPostLastWebKitScale:F

.field private mPostLastWebKitXOffset:I

.field private mPostLastWebKitYOffset:I

.field private mPostLongPressScheduled:Z

.field private mPostSendTouchEventsToWebKit:Z

.field private mPostShowTapHighlightScheduled:Z

.field private final mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private mTouchSlopSquared:F

.field private final mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

.field private final mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mUiDispatchScheduled:Z

.field private final mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

.field private final mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private final mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

.field private final mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mWebKitDispatchScheduled:Z

.field private final mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

.field private mWebKitTimeoutScheduled:Z

.field private mWebKitTimeoutTime:J

.field private final mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    const-class v0, Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    .line 140
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    .line 141
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    add-int/2addr v0, v2

    sput v0, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    .line 143
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    .line 144
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    .line 609
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V
    .locals 3
    .parameter "uiCallbacks"
    .parameter "webKitCallbacks"

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 122
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 123
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 131
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 132
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    .line 240
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    .line 241
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-interface {p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getUiLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    .line 243
    iput-object p2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    .line 244
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-interface {p2}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->getWebKitLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    .line 246
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 247
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 248
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 250
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 251
    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postLongPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postClick()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method private batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 1
    .parameter "in"
    .parameter "tail"

    .prologue
    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method private checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 493
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 494
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v2, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 498
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 499
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 500
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 501
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    goto :goto_0
.end method

.method private checkForSlopLocked(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    .line 531
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 535
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 536
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 538
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->getCnt(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 539
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v2, v4}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->acquireWebViewPerfWakeLock(I)V

    .line 541
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 542
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 543
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_0
.end method

.method private copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3
    .parameter "d"

    .prologue
    .line 1073
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1074
    .local v0, copy:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1077
    :cond_0
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1078
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1079
    iget-wide v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1080
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1081
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1082
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1083
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1084
    return-object v0
.end method

.method private dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 908
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 909
    return-void
.end method

.method private dispatchUiEvents(Z)V
    .locals 9
    .parameter "calledFromHandler"

    .prologue
    const/4 v8, 0x1

    .line 849
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 850
    :try_start_0
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v5}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v1

    .line 851
    .local v1, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v1, :cond_2

    .line 852
    iget-boolean v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-eqz v5, :cond_1

    .line 853
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 854
    if-nez p1, :cond_1

    .line 855
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 858
    :cond_1
    monitor-exit v6

    return-void

    .line 861
    :cond_2
    iget-object v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 862
    .local v2, event:Landroid/view/MotionEvent;
    if-eqz v2, :cond_3

    iget v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 863
    const/high16 v5, 0x3f80

    iget v7, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    div-float/2addr v5, v7

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->scale(F)V

    .line 864
    iget v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 865
    iget v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 868
    :cond_3
    iget v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 869
    .local v3, eventType:I
    if-nez v3, :cond_4

    .line 870
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v5, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 875
    if-eqz v1, :cond_4

    iget-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    .line 876
    iget-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 877
    .local v0, act:I
    if-ne v0, v8, :cond_4

    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->releaseWebViewPerfWakeLock(I)V

    .line 882
    .end local v0           #act:I
    :cond_4
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 884
    .local v4, flags:I
    iget-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-ne v2, v5, :cond_5

    .line 885
    const/4 v5, 0x0

    iput-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 887
    :cond_5
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 889
    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    .line 890
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 892
    :cond_6
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    if-eqz v2, :cond_0

    .line 896
    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 897
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 892
    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v2           #event:Landroid/view/MotionEvent;
    .end local v3           #eventType:I
    .end local v4           #flags:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z
    .locals 2
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 738
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->dispatchWebKitEvent(Landroid/webkit/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    .line 743
    .local v0, preventDefault:Z
    return v0
.end method

.method private dispatchWebKitEvents(Z)V
    .locals 13
    .parameter "calledFromHandler"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 630
    :goto_0
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 632
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->drainStaleWebKitEventsLocked()V

    .line 634
    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v1, v11, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 635
    .local v1, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v1, :cond_1

    .line 636
    iget-boolean v8, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-eqz v8, :cond_0

    .line 637
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 638
    if-nez p1, :cond_0

    .line 639
    iget-object v8, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->removeMessages(I)V

    .line 643
    :cond_0
    monitor-exit v10

    return-void

    .line 646
    :cond_1
    iget-object v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 647
    .local v2, event:Landroid/view/MotionEvent;
    if-eqz v2, :cond_2

    .line 648
    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    int-to-float v11, v11

    iget v12, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    int-to-float v12, v12

    invoke-virtual {v2, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 649
    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->scale(F)V

    .line 650
    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 653
    :cond_2
    iget v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 654
    .local v3, eventType:I
    if-nez v3, :cond_3

    .line 655
    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v11, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 661
    :cond_3
    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 662
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 663
    .local v4, flags:I
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 667
    if-nez v2, :cond_8

    .line 668
    const/4 v6, 0x0

    .line 674
    .local v6, preventDefault:Z
    :goto_1
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v10}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->isShowMagnifying()Z

    move-result v10

    if-nez v10, :cond_4

    .line 675
    iget-boolean v10, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    .line 676
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v5

    .line 679
    .local v5, overridePreventDefault:Z
    if-eqz v5, :cond_4

    .line 680
    const/4 v6, 0x0

    .line 685
    .end local v5           #overridePreventDefault:Z
    :cond_4
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 686
    :try_start_1
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 687
    and-int/lit8 v11, v4, -0x3

    iput v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 688
    iget-object v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eq v2, v11, :cond_9

    move v7, v8

    .line 690
    .local v7, recycleEvent:Z
    :goto_2
    and-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_a

    .line 692
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 721
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    if-eqz v7, :cond_6

    .line 722
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 725
    :cond_6
    const/4 v11, 0x4

    if-ne v3, v11, :cond_7

    .line 726
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 728
    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    .end local v7           #recycleEvent:Z
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 663
    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v2           #event:Landroid/view/MotionEvent;
    .end local v3           #eventType:I
    .end local v4           #flags:I
    .end local v6           #preventDefault:Z
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 670
    .restart local v1       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .restart local v2       #event:Landroid/view/MotionEvent;
    .restart local v3       #eventType:I
    .restart local v4       #flags:I
    :cond_8
    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z

    move-result v6

    .restart local v6       #preventDefault:Z
    goto :goto_1

    :cond_9
    move v7, v9

    .line 688
    goto :goto_2

    .line 695
    .restart local v7       #recycleEvent:Z
    :cond_a
    :try_start_3
    sget-boolean v11, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    if-nez v11, :cond_b

    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v11, v11, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eq v11, v1, :cond_b

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 696
    :cond_b
    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v11}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 698
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 700
    and-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_c

    .line 702
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_3

    .line 703
    :cond_c
    if-eqz v6, :cond_d

    .line 705
    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v11, :cond_5

    .line 706
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiCancelTouchEventIfNeededLocked()V

    .line 707
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 709
    if-eqz v1, :cond_5

    iget-object v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v11, :cond_5

    .line 710
    iget-object v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 711
    .local v0, act:I
    if-ne v0, v8, :cond_5

    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->releaseWebViewPerfWakeLock(I)V

    goto :goto_3

    .line 717
    .end local v0           #act:I
    :cond_d
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private drainStaleWebKitEventsLocked()V
    .locals 3

    .prologue
    .line 752
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 755
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v2}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 757
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 758
    move-object v0, v1

    .line 759
    goto :goto_0

    .line 760
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iput-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 761
    return-void
.end method

.method private enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 516
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 517
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 519
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 520
    return-void
.end method

.method private enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 912
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueHitTestLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 523
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->clearPreviousHitTest()V

    .line 524
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 525
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 527
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 528
    return-void
.end method

.method private enqueueUiCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1004
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1005
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 1007
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1009
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1020
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1027
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleUiDispatchLocked()V

    .line 1028
    return-void
.end method

.method private enqueueWebKitCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 946
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 947
    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 949
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 950
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 952
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 955
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 969
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 970
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleWebKitDispatchLocked()V

    .line 971
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 972
    return-void
.end method

.method private extendWebkitTimeoutLocked(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 1390
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1391
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1392
    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1393
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v3, 0x2

    iget-wide v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1394
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 1395
    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    .line 1399
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1400
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1401
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v1, :cond_1

    .line 1402
    iget-wide v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1404
    :cond_1
    move-object v0, v1

    .line 1405
    goto :goto_0

    .line 1406
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_2
    return-void
.end method

.method private handleWebKitTimeout()V
    .locals 7

    .prologue
    .line 771
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 772
    :try_start_0
    iget-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-nez v3, :cond_0

    .line 773
    monitor-exit v4

    .line 820
    :goto_0
    return-void

    .line 775
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 782
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v1, v3, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 783
    .local v1, head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    iget v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 788
    :cond_1
    const-wide/16 v5, 0xc8

    invoke-direct {p0, v5, v6}, Landroid/webkit/WebViewInputDispatcher;->extendWebkitTimeoutLocked(J)V

    .line 789
    monitor-exit v4

    goto :goto_0

    .line 819
    .end local v1           #head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 794
    .restart local v1       #head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeueList()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 798
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 799
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 800
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 801
    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 809
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 810
    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 811
    .local v2, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 812
    move-object v0, v2

    .line 813
    goto :goto_1

    .line 803
    .end local v2           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 804
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    goto :goto_1

    .line 818
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 819
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hideTapCandidateLocked()V
    .locals 2

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 400
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 401
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 402
    return-void
.end method

.method private isClickCandidateLocked(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 512
    :cond_1
    :goto_0
    return v2

    .line 511
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 512
    .local v0, downDuration:J
    sget v4, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 747
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 5
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    .line 1058
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1059
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iput-object p1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1060
    iput p2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1061
    iput p3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1062
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1063
    iput p4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1064
    iput p5, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1065
    iput p6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1069
    return-object v0
.end method

.method private obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1088
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1089
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1090
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1091
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1092
    iput-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1096
    :goto_0
    return-object v0

    .line 1094
    :cond_0
    new-instance v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {v0, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    goto :goto_0
.end method

.method private postClick()V
    .locals 10

    .prologue
    .line 469
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 470
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v0, :cond_0

    .line 471
    monitor-exit v9

    .line 490
    :goto_0
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 475
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 476
    .local v8, event:Landroid/view/MotionEvent;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 477
    :cond_1
    monitor-exit v9

    goto :goto_0

    .line 489
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 480
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->showTapCandidateLocked()V

    .line 481
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 482
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 484
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 487
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->checkHyperlinkClicked()V

    .line 489
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private postLongPress()V
    .locals 10

    .prologue
    .line 369
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 370
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-nez v0, :cond_0

    .line 371
    monitor-exit v9

    .line 396
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 375
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 376
    .local v8, event:Landroid/view/MotionEvent;
    if-nez v8, :cond_1

    .line 377
    monitor-exit v9

    goto :goto_0

    .line 395
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 380
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 387
    :pswitch_0
    monitor-exit v9

    goto :goto_0

    .line 390
    :pswitch_1
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 391
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 392
    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 394
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 395
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postShowTapHighlight(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 439
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    if-eqz p1, :cond_1

    .line 441
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-nez v0, :cond_0

    .line 442
    monitor-exit v1

    .line 453
    :goto_0
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 451
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 452
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 446
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-nez v0, :cond_2

    .line 447
    monitor-exit v1

    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 1100
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1102
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1105
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1106
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1107
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1108
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1110
    :cond_1
    return-void
.end method

.method private scheduleClickLocked()V
    .locals 4

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 458
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    sget v2, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 459
    return-void
.end method

.method private scheduleHideTapHighlightLocked()V
    .locals 4

    .prologue
    .line 425
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 427
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    sget v2, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    return-void
.end method

.method private scheduleLongPressLocked()V
    .locals 4

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 357
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    sget v2, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    return-void
.end method

.method private scheduleShowTapHighlightLocked()V
    .locals 4

    .prologue
    .line 411
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 413
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    return-void
.end method

.method private scheduleUiDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1031
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1037
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 1039
    :cond_0
    return-void
.end method

.method private scheduleWebKitDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 975
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 981
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 983
    :cond_0
    return-void
.end method

.method private shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 4
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 920
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 940
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 933
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 935
    goto :goto_0

    .line 937
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showTapCandidateLocked()V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 406
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 407
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 408
    return-void
.end method

.method private skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 823
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 824
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 825
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 830
    :goto_0
    return-void

    .line 827
    :cond_0
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 828
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private unscheduleClickLocked()V
    .locals 2

    .prologue
    .line 462
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 464
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 466
    :cond_0
    return-void
.end method

.method private unscheduleHideTapHighlightLocked()V
    .locals 2

    .prologue
    .line 432
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 434
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 436
    :cond_0
    return-void
.end method

.method private unscheduleLongPressLocked()V
    .locals 2

    .prologue
    .line 362
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 364
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 366
    :cond_0
    return-void
.end method

.method private unscheduleShowTapHighlightLocked()V
    .locals 2

    .prologue
    .line 418
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 420
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 422
    :cond_0
    return-void
.end method

.method private updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "d"
    .parameter "event"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 548
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    .line 549
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    .line 550
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    .line 551
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 552
    .local v0, action:I
    :goto_0
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-eqz v2, :cond_2

    .line 591
    :cond_0
    :goto_1
    return-void

    .end local v0           #action:I
    :cond_1
    move v0, v1

    .line 551
    goto :goto_0

    .line 556
    .restart local v0       #action:I
    :cond_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 558
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 559
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 560
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 561
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 562
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 563
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 564
    :cond_4
    if-nez v0, :cond_6

    .line 565
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V

    .line 566
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleLongPressLocked()V

    .line 567
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 568
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    .line 569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    .line 570
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueHitTestLocked(Landroid/view/MotionEvent;)V

    .line 571
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_5

    .line 572
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 574
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleShowTapHighlightLocked()V

    goto :goto_1

    .line 576
    :cond_6
    if-ne v0, v3, :cond_9

    .line 577
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 578
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->isClickCandidateLocked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 579
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_7

    .line 580
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 581
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 583
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleClickLocked()V

    goto :goto_1

    .line 586
    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 588
    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 589
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForSlopLocked(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private updateWebKitTimeoutLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 986
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 987
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    iget-wide v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_2

    .line 991
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 992
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 994
    :cond_2
    if-eqz v0, :cond_0

    .line 995
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 996
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 997
    iget-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    goto :goto_0
.end method


# virtual methods
.method public dispatchUiEvents()V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    .line 842
    return-void
.end method

.method public dispatchWebKitEvents()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    .line 603
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 612
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    .line 613
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 614
    sget-object v1, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    .line 619
    :cond_0
    return-void

    .line 613
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public postPointerEvent(Landroid/view/MotionEvent;IIF)Z
    .locals 11
    .parameter "event"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 295
    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    .line 351
    :goto_0
    :pswitch_0
    return v0

    .line 302
    :pswitch_1
    const/4 v2, 0x0

    .line 316
    .local v2, eventType:I
    :goto_1
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 318
    move-object v1, p1

    .line 319
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    if-nez v2, :cond_2

    .line 320
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v3, p1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 321
    if-nez v1, :cond_1

    .line 325
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 326
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 327
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 328
    monitor-exit v10

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 305
    .end local v1           #eventToEnqueue:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    :pswitch_2
    const/4 v2, 0x2

    .line 306
    .restart local v2       #eventType:I
    goto :goto_1

    .line 310
    .end local v2           #eventType:I
    :pswitch_3
    const/4 v2, 0x1

    .line 311
    .restart local v2       #eventType:I
    goto :goto_1

    .line 331
    .restart local v1       #eventToEnqueue:Landroid/view/MotionEvent;
    :cond_1
    if-nez v7, :cond_2

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 342
    :cond_2
    :goto_2
    if-ne v1, p1, :cond_3

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 346
    :cond_3
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v8

    .line 348
    .local v8, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v8, p1}, Landroid/webkit/WebViewInputDispatcher;->updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V

    .line 349
    invoke-direct {p0, v8}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 350
    monitor-exit v10

    move v0, v9

    .line 351
    goto :goto_0

    .line 334
    .end local v8           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v0, :cond_2

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setWebKitWantsTouchEvents(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 263
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eq v0, p1, :cond_1

    .line 265
    if-nez p1, :cond_0

    .line 266
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 268
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    .line 270
    :cond_1
    monitor-exit v1

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skipWebkitForRemainingTouchStream()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    .line 767
    return-void
.end method
