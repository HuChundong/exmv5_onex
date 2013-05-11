.class public Lcom/htc/server/gesture/MultipleSwipeDetector;
.super Ljava/lang/Object;
.source "MultipleSwipeDetector.java"

# interfaces
.implements Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GESTURE_DOWN:I = 0x3

.field public static final GESTURE_LEFT:I = 0x4

.field public static final GESTURE_RIGHT:I = 0x2

.field public static final GESTURE_UNDETERMINATED:I = -0x1

.field public static final GESTURE_UP:I = 0x1

.field private static final MAX_TOUCHPOINTS:I = 0x3


# instance fields
.field private IS_DLX_RESOLUTION:Z

.field private height:I

.field private mArrowPositionX:I

.field private mArrowPositionY:I

.field private mBaseGestureDetector:Lcom/htc/server/gesture/BaseGestureDetector;

.field private mContext:Landroid/content/Context;

.field private mDisplayH:I

.field private mDisplayW:I

.field private mMoveDirection:I

.field private mOnGestureListener:Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;

.field private mResource:Landroid/content/res/Resources;

.field private mTotalXDistance:I

.field private mTotalYDistance:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private names:[Ljava/lang/String;

.field private pixelThreshhold:F

.field private sb:Ljava/lang/StringBuilder;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionX:I

    .line 31
    iput v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionY:I

    .line 32
    iput v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    .line 33
    iput v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    .line 34
    iput v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    .line 38
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mContext:Landroid/content/Context;

    .line 41
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->pixelThreshhold:F

    .line 43
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x1d

    if-eq v2, v5, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x1e

    if-eq v2, v5, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x1f

    if-eq v2, v5, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x12d

    if-eq v2, v5, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x12f

    if-ne v2, v5, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->IS_DLX_RESOLUTION:Z

    .line 162
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "DOWN"

    aput-object v5, v2, v3

    const-string v3, "UP"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "MOVE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "CANCEL"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "OUTSIDE"

    aput-object v4, v2, v3

    const-string v3, "POINTER_DOWN"

    aput-object v3, v2, v6

    const/4 v3, 0x6

    const-string v4, "POINTER_UP"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7?"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8?"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9?"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->names:[Ljava/lang/String;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    .line 49
    iput-object p1, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mContext:Landroid/content/Context;

    .line 50
    new-instance v2, Lcom/htc/server/gesture/BaseGestureDetector;

    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/htc/server/gesture/BaseGestureDetector;-><init>(Landroid/content/Context;Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;)V

    iput-object v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mBaseGestureDetector:Lcom/htc/server/gesture/BaseGestureDetector;

    .line 52
    iget-object v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 53
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mDisplayH:I

    .line 54
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mDisplayW:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mResource:Landroid/content/res/Resources;

    .line 57
    const/16 v0, 0x14

    .line 58
    .local v0, lengthThreshold:I
    iget-boolean v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->IS_DLX_RESOLUTION:Z

    if-eqz v2, :cond_1

    .line 59
    const/16 v0, 0x23

    .line 61
    :cond_1
    int-to-float v2, v0

    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->pixelThreshhold:F

    .line 62
    return-void

    .end local v0           #lengthThreshold:I
    .end local v1           #mWindowManager:Landroid/view/WindowManager;
    :cond_2
    move v2, v3

    .line 43
    goto/16 :goto_0
.end method

.method private dumpEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 169
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    .line 170
    .local v1, actionCode:I
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, "event ACTION_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, "(pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, "(pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 184
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v3, "MultipleSwipeDetector"

    iget-object v4, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    .line 122
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    .line 124
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->pixelThreshhold:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->pixelThreshhold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 126
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 127
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    if-lez v0, :cond_2

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    .line 148
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_2
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    if-gez v0, :cond_1

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    goto :goto_0

    .line 133
    :cond_3
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    if-lez v0, :cond_4

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    goto :goto_0

    .line 135
    :cond_4
    iget v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    if-gez v0, :cond_1

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 72
    .local v2, pointerCount:I
    if-le v2, v3, :cond_0

    .line 73
    const/4 v2, 0x3

    .line 76
    :cond_0
    if-ne v2, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mBaseGestureDetector:Lcom/htc/server/gesture/BaseGestureDetector;

    invoke-virtual {v3, p1}, Lcom/htc/server/gesture/BaseGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 81
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 89
    :pswitch_0
    iget v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    if-eq v3, v6, :cond_3

    .line 91
    iget-object v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mOnGestureListener:Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;

    iget v4, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    invoke-interface {v3, v4}, Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;->OnGesturePerformed(I)V

    .line 93
    :cond_3
    iput v5, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalXDistance:I

    .line 94
    iput v5, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mTotalYDistance:I

    .line 95
    iput v6, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mMoveDirection:I

    goto :goto_0

    .line 99
    :pswitch_1
    iput v5, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionX:I

    .line 100
    iput v5, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionY:I

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 102
    iget v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionX:I

    .line 103
    iget v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionY:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionY:I

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_4
    iget v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionX:I

    div-int/2addr v3, v2

    iput v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionX:I

    .line 106
    iget v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionY:I

    div-int/2addr v3, v2

    iput v3, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mArrowPositionY:I

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDirectionListener(Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/server/gesture/MultipleSwipeDetector;->mOnGestureListener:Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;

    .line 21
    return-void
.end method
