.class public Lcom/htc/videowidget/videoview/widget/LockScreenView;
.super Landroid/widget/RelativeLayout;
.source "LockScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;,
        Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;
    }
.end annotation


# static fields
.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LAYOUT:Ljava/lang/String; = "layout"

.field private static final STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field static final UNLOCK_SCREEN_ANIMATION_FRAME:I = 0x3

.field static final UNLOCK_SCREEN_ANIMATION_TIME:I = 0xc8

.field static final UNLOCK_SCREEN_FRAME_DURATION:I = 0x10

.field static final UNLOCK_SCREEN_RINGWAVE_ANIMATION_TIME:I = 0x12c

.field private static final nFlipTime:I = 0x12c


# instance fields
.field private final MSG_HIDE_RING:I

.field private isRegitered:Z

.field protected mAnimationStartTime:J

.field protected mCurUpdateViewTime:J

.field private mDistanceX:I

.field private mDistanceY:I

.field private mEnlargeRingTouchArea:I

.field private mEnlargeTouchArea:I

.field private mHintText:Landroid/widget/TextView;

.field private mImgNavbar:Landroid/widget/ImageView;

.field private mImgRing:Landroid/widget/ImageView;

.field private mImgRingWave:Landroid/widget/ImageView;

.field private mInitX:I

.field private mInitY:I

.field private mIsTouchThroughObject:Z

.field private mLastX:I

.field private mLastY:I

.field private mLayout:Landroid/widget/FrameLayout;

.field private mLayoutOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

.field private mRes:Landroid/content/res/Resources;

.field private mResContext:Landroid/content/Context;

.field mRingShockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mRingWaveAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mStartX:I

.field private mStartY:I

.field private mTimeFlipStart:J

.field protected mUiHandler:Landroid/os/Handler;

.field mUnlockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mUnlockArea:Landroid/widget/RelativeLayout;

.field private mUnlockRingArea:Landroid/widget/RelativeLayout;

.field private mUnlockRingLeft:I

.field private mUnlockRingRight:I

.field private mUnlockRingTop:I

.field private m_RingShockStatus:I

.field private m_RingWaveStatus:I

.field private m_bPress:Z

.field private m_bShowRing:Z

.field private m_bWaitNext:Z

.field private m_pointId:I

.field private m_pointIndex:I

.field private minterval:I

.field private mring_bar_leave1:I

.field private vkReceiver:Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v5, -0x1

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    .line 51
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    .line 53
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockArea:Landroid/widget/RelativeLayout;

    .line 54
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mHintText:Landroid/widget/TextView;

    .line 55
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    .line 56
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgNavbar:Landroid/widget/ImageView;

    .line 57
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    .line 58
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;

    .line 60
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->minterval:I

    .line 61
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mring_bar_leave1:I

    .line 62
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    .line 63
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitY:I

    .line 64
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartY:I

    .line 65
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastX:I

    .line 66
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitX:I

    .line 67
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartX:I

    .line 68
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingTop:I

    .line 69
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingLeft:I

    .line 70
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingRight:I

    .line 72
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mEnlargeTouchArea:I

    .line 73
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mEnlargeRingTouchArea:I

    .line 74
    iput-wide v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mCurUpdateViewTime:J

    .line 75
    iput-wide v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mAnimationStartTime:J

    .line 76
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceY:I

    .line 77
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceX:I

    .line 78
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    .line 79
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    .line 81
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mIsTouchThroughObject:Z

    .line 82
    iput-wide v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mTimeFlipStart:J

    .line 84
    iput v5, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointId:I

    .line 85
    iput v5, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    .line 86
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bPress:Z

    .line 87
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bWaitNext:Z

    .line 95
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    .line 96
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->vkReceiver:Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;

    .line 98
    const/16 v1, 0x65

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->MSG_HIDE_RING:I

    .line 99
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRes:Landroid/content/res/Resources;

    .line 100
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isRegitered:Z

    .line 101
    iput-object v4, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    .line 177
    new-instance v1, Lcom/htc/videowidget/videoview/widget/LockScreenView$1;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView$1;-><init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayoutOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 347
    new-instance v1, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;-><init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 372
    new-instance v1, Lcom/htc/videowidget/videoview/widget/LockScreenView$3;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView$3;-><init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRingShockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 451
    new-instance v1, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;-><init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRingWaveAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 604
    new-instance v1, Lcom/htc/videowidget/videoview/widget/LockScreenView$5;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView$5;-><init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUiHandler:Landroid/os/Handler;

    .line 106
    invoke-static {p1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRes:Landroid/content/res/Resources;

    .line 107
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 109
    const-string v1, "LockScreen"

    const-string v2, "[LockScreenView] resource is null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    .line 113
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x603000a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    .line 115
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->addView(Landroid/view/View;)V

    .line 116
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    .line 117
    new-instance v1, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;

    invoke-direct {v1, p0, v4}, Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;-><init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;Lcom/htc/videowidget/videoview/widget/LockScreenView$1;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->vkReceiver:Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;

    .line 118
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->findAllViewById()V

    .line 119
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->initView()V

    .line 121
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private InitTouchConst()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mEnlargeTouchArea:I

    .line 557
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mEnlargeRingTouchArea:I

    .line 558
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mEnlargeRingTouchArea:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingTop:I

    .line 559
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mEnlargeTouchArea:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingLeft:I

    .line 560
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mEnlargeTouchArea:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingRight:I

    .line 562
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->minterval:I

    .line 563
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mring_bar_leave1:I

    .line 564
    return-void
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->hideRing()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->disableVKLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->stopMonitor()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/videowidget/videoview/widget/LockScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/videowidget/videoview/widget/LockScreenView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoview/widget/LockScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/videowidget/videoview/widget/LockScreenView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    return p1
.end method

.method static synthetic access$608(Lcom/htc/videowidget/videoview/widget/LockScreenView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->showRing()V

    return-void
.end method

.method private checkFilp()Z
    .locals 10

    .prologue
    .line 514
    const/4 v3, 0x0

    .line 517
    .local v3, bUnlockFlip:Z
    const/4 v5, 0x0

    .line 518
    .local v5, scrollY:I
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 519
    .local v0, TimeFlipEnd:J
    iget-wide v6, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mTimeFlipStart:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 521
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x607000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 522
    .local v2, UnlockGap:I
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getScrollY()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 523
    if-le v5, v2, :cond_0

    .line 525
    const/4 v3, 0x1

    .line 533
    .end local v0           #TimeFlipEnd:J
    .end local v2           #UnlockGap:I
    :cond_0
    :goto_0
    return v3

    .line 529
    :catch_0
    move-exception v4

    .line 531
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private disableVKLock()V
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_block_virtual_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    return-void
.end method

.method private enableVKLock()V
    .locals 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_block_virtual_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 742
    return-void
.end method

.method private findAllViewById()V
    .locals 3

    .prologue
    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    const v2, 0x60b002f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockArea:Landroid/widget/RelativeLayout;

    .line 572
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    const v2, 0x60b0034

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mHintText:Landroid/widget/TextView;

    .line 575
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    const v2, 0x60b0033

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    .line 576
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    const v2, 0x60b0031

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    .line 577
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    const v2, 0x60b0030

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgNavbar:Landroid/widget/ImageView;

    .line 579
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    const v2, 0x60b0032

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hideRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 322
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    .line 323
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgNavbar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 589
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayoutOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 591
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgNavbar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    const-string v2, "lockscreen_ring"

    const v3, 0x6020013

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;

    const v1, 0x6020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    return-void
.end method

.method private showRing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    .line 314
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgNavbar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    return-void
.end method

.method private startMonitor()V
    .locals 4

    .prologue
    .line 126
    const-string v0, "LockScreen"

    const-string v1, "[startMonitor]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isRegitered:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->vkReceiver:Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.BLOCK_VIRTUAL_KEY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isRegitered:Z

    .line 132
    :cond_0
    return-void
.end method

.method private stopMonitor()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "LockScreen"

    const-string v2, "[stopMonitor]"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isRegitered:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->vkReceiver:Lcom/htc/videowidget/videoview/widget/LockScreenView$BlockVKReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isRegitered:Z

    .line 147
    :cond_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LockScreen"

    const-string v2, "unregisterReceiver failed"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private touchAreaCheck()V
    .locals 3

    .prologue
    const v2, 0x609000e

    .line 539
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitY:I

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingTop:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitX:I

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingLeft:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingRight:I

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitX:I

    if-le v0, v1, :cond_0

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mTimeFlipStart:J

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mIsTouchThroughObject:Z

    .line 543
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 544
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mIsTouchThroughObject:Z

    goto :goto_0
.end method

.method private unlockRingMove(II)V
    .locals 4
    .parameter "DistanceX"
    .parameter "DistanceY"

    .prologue
    const/4 v3, 0x0

    .line 622
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitY:I

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 624
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartY:I

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockArea:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, barDistance:I
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->minterval:I

    neg-int v1, v1

    if-ge p2, v1, :cond_2

    .line 633
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mring_bar_leave1:I

    neg-int v1, v1

    add-int/2addr v1, p2

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->minterval:I

    add-int v0, v1, v2

    .line 640
    :goto_1
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceY:I

    if-gez v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 643
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    neg-int v2, p1

    neg-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_0

    .line 637
    :cond_2
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mring_bar_leave1:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->minterval:I

    div-int v0, v1, v2

    goto :goto_1

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v3}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 648
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    neg-int v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method protected checkUnlockCondition(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, scrollY:I
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x607000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 659
    .local v0, UnlockGap:I
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v1

    .line 660
    if-le v1, v0, :cond_0

    .line 662
    const/4 v2, 0x1

    .line 666
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected fadeoutRingWaveAnimation(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "mImg"

    .prologue
    .line 441
    :try_start_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f4ccccd

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 442
    .local v0, Animation_Alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 443
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0           #Animation_Alpha:Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v1

    .line 447
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "LockScreen"

    const-string v1, "[hide]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->setVisibility(I)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isRegitered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->disableVKLock()V

    .line 173
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->stopMonitor()V

    .line 175
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 775
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 776
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 778
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 779
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mResContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 780
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 781
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 782
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 792
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/16 v11, 0x65

    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 188
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 190
    .local v0, action:I
    if-nez v0, :cond_2

    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bPress:Z

    if-nez v9, :cond_2

    .line 192
    iput v13, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    .line 193
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointId:I

    .line 194
    iput-boolean v10, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bPress:Z

    .line 195
    iput-boolean v13, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bWaitNext:Z

    .line 207
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bWaitNext:Z

    if-eqz v9, :cond_4

    .line 308
    :cond_1
    :goto_1
    return v13

    .line 197
    :cond_2
    const/4 v9, 0x3

    if-eq v0, v9, :cond_3

    if-ne v0, v10, :cond_0

    .line 199
    :cond_3
    iput-boolean v13, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bPress:Z

    .line 200
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bWaitNext:Z

    if-eqz v9, :cond_0

    .line 202
    iput v13, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    .line 203
    iput v13, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitY:I

    .line 204
    iput v13, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartY:I

    goto :goto_0

    .line 211
    :cond_4
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 212
    .local v6, pointIndex:I
    if-ltz v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-lt v6, v9, :cond_6

    .line 214
    :cond_5
    iput-boolean v10, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bWaitNext:Z

    .line 224
    :goto_2
    :try_start_0
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 225
    .local v8, y:F
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 227
    .local v7, x:F
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 230
    :pswitch_1
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    if-eqz v9, :cond_1

    .line 232
    float-to-int v9, v8

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartY:I

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitY:I

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    .line 233
    float-to-int v9, v7

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartX:I

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitX:I

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastX:I

    .line 234
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceY:I

    .line 235
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceX:I

    .line 236
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    .line 237
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    .line 238
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->InitTouchConst()V

    .line 239
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->touchAreaCheck()V

    .line 240
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->bringToFront()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    .end local v7           #x:F
    .end local v8           #y:F
    :catch_0
    move-exception v5

    .line 306
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 218
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_6
    iput v6, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    goto :goto_2

    .line 244
    .restart local v7       #x:F
    .restart local v8       #y:F
    :pswitch_2
    :try_start_1
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    if-eqz v9, :cond_1

    .line 246
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    .line 247
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_pointIndex:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastX:I

    .line 248
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mIsTouchThroughObject:Z

    if-eqz v9, :cond_7

    .line 250
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    iget v10, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartY:I

    sub-int v4, v9, v10

    .line 251
    .local v4, disY:I
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartY:I

    .line 252
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceY:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceY:I

    .line 254
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastX:I

    iget v10, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartX:I

    sub-int v3, v9, v10

    .line 255
    .local v3, disX:I
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastX:I

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartX:I

    .line 256
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceX:I

    add-int/2addr v9, v3

    iput v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceX:I

    .line 258
    iget v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceX:I

    iget v10, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mDistanceY:I

    invoke-direct {p0, v9, v10}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->unlockRingMove(II)V

    .line 260
    .end local v3           #disX:I
    .end local v4           #disY:I
    :cond_7
    invoke-virtual {p0, v7, v8}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->checkUnlockCondition(FF)Z

    goto/16 :goto_1

    .line 265
    :pswitch_3
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bShowRing:Z

    if-eqz v9, :cond_c

    .line 267
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_9

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, bUnlockCondition:Z
    const/4 v2, 0x0

    .line 272
    .local v2, bUnlockFlip:Z
    invoke-virtual {p0, v7, v8}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->checkUnlockCondition(FF)Z

    move-result v1

    .line 273
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->checkFilp()Z

    move-result v2

    .line 274
    if-nez v1, :cond_8

    if-eqz v2, :cond_a

    .line 276
    :cond_8
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->setUpUnLockAnimation()V

    .line 295
    .end local v1           #bUnlockCondition:Z
    .end local v2           #bUnlockFlip:Z
    :cond_9
    :goto_3
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUiHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const-wide/16 v11, 0x1388

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 278
    .restart local v1       #bUnlockCondition:Z
    .restart local v2       #bUnlockFlip:Z
    :cond_a
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mIsTouchThroughObject:Z

    if-eqz v9, :cond_b

    .line 280
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->setResumeAnimation()V

    .line 281
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->viewScorllToOrigin()V

    .line 282
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->resetTouchConst()V

    goto :goto_3

    .line 286
    :cond_b
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->startRingShockAnimation()V

    goto :goto_3

    .line 292
    .end local v1           #bUnlockCondition:Z
    .end local v2           #bUnlockFlip:Z
    :cond_c
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->showRing()V

    .line 293
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->startRingShockAnimation()V

    goto :goto_3

    .line 298
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->viewScorllToOrigin()V

    .line 299
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->resetTouchConst()V

    .line 300
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUiHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const-wide/16 v11, 0x1388

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected resetTouchConst()V
    .locals 2

    .prologue
    .line 333
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastY:I

    .line 334
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitY:I

    .line 335
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartY:I

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mLastX:I

    .line 337
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mInitX:I

    .line 338
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mStartX:I

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_bWaitNext:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected scaleAnimation(Landroid/view/View;FFFFJLandroid/view/animation/Animation$AnimationListener;)V
    .locals 13
    .parameter "view"
    .parameter "fStartXscale"
    .parameter "fEndXscale"
    .parameter "fStartYscale"
    .parameter "fEndYscale"
    .parameter "AnimationTime"
    .parameter "listener"

    .prologue
    .line 717
    :try_start_0
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 726
    .local v2, Animation_Scale:Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 727
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 728
    .local v11, as:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 729
    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 730
    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 731
    invoke-virtual {p1, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v2           #Animation_Scale:Landroid/view/animation/ScaleAnimation;
    .end local v11           #as:Landroid/view/animation/AnimationSet;
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v12

    .line 735
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected scaleToCenterAnimation(Landroid/widget/ImageView;)V
    .locals 10
    .parameter "img"

    .prologue
    .line 698
    const/high16 v2, 0x3f80

    const/high16 v3, 0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4080

    const-wide/16 v6, 0xc8

    :try_start_0
    iget-object v8, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->scaleAnimation(Landroid/view/View;FFFFJLandroid/view/animation/Animation$AnimationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v9

    .line 702
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLockModeListener(Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    .line 797
    return-void
.end method

.method protected setResumeAnimation()V
    .locals 0

    .prologue
    .line 678
    .line 679
    return-void
.end method

.method protected setUpUnLockAnimation()V
    .locals 2

    .prologue
    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->scaleToCenterAnimation(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "LockScreen"

    const-string v1, "[show]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->setVisibility(I)V

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isRegitered:Z

    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->startMonitor()V

    .line 159
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->enableVKLock()V

    .line 161
    :cond_1
    return-void
.end method

.method protected startRingShockAnimation()V
    .locals 6

    .prologue
    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 398
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    if-nez v2, :cond_1

    .line 400
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x3e00

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 401
    .local v0, Animation_Translate:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xaa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 402
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRingShockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 403
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 404
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    .line 435
    .end local v0           #Animation_Translate:Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    if-ne v2, v3, :cond_2

    .line 408
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x3e00

    const/high16 v5, 0x4080

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 409
    .restart local v0       #Animation_Translate:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x55

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 410
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRingShockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 411
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0           #Animation_Translate:Landroid/view/animation/TranslateAnimation;
    :catch_0
    move-exception v1

    .line 433
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    iget v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    if-ne v2, v3, :cond_3

    .line 416
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4080

    const/high16 v5, -0x3f40

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 417
    .restart local v0       #Animation_Translate:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x37

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 418
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRingShockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 419
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 420
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    goto :goto_0

    .line 422
    .end local v0           #Animation_Translate:Landroid/view/animation/TranslateAnimation;
    :cond_3
    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    if-ne v2, v3, :cond_0

    .line 424
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x3f40

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 425
    .restart local v0       #Animation_Translate:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 426
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRingShockAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 427
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 428
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected startRingWaveAnimation()V
    .locals 10

    .prologue
    .line 477
    :try_start_0
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;

    const v2, 0x3f0f5c29

    const v3, 0x3f333333

    const v4, 0x3f0f5c29

    const v5, 0x3f333333

    const-wide/16 v6, 0x12c

    iget-object v8, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mRingWaveAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->scaleAnimation(Landroid/view/View;FFFFJLandroid/view/animation/Animation$AnimationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v9

    .line 491
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected viewScorllToOrigin()V
    .locals 4

    .prologue
    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockArea:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 500
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mUnlockRingArea:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 501
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRing:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 502
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 503
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I

    .line 504
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
