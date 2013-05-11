.class Landroid/webkit/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomManager$1;,
        Landroid/webkit/ZoomManager$PostScale;,
        Landroid/webkit/ZoomManager$ScaleDetectorListener;,
        Landroid/webkit/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 0.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static final ZOOM_ANIMATION_LENGTH:I = 0xfa

.field public static useFeedback:Z


# instance fields
.field public isFirstPinch:Z

.field public isFirstTap:Z

.field public isPinching:Z

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCustomizeMaxZoomScale:F

.field private mCustomizeMinZoomScale:F

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapZoomFactor:F

.field private mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

.field private mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

.field private mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

.field private mFocusX:F

.field private mFocusY:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field private mIsFixedZoomAnimation:Z

.field private mLastCheckMemoryTime:D

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mNeedAccelerateReflow:Z

.field private mNeedSendViewSizeChange:Z

.field mOOBFixX:F

.field mOOBFixY:F

.field private mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field private mUseHtcZoom:Z

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const v2, 0x3be56042

    .line 53
    const-class v0, Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    .line 70
    const/high16 v0, 0x4080

    sput v0, Landroid/webkit/ZoomManager;->DEFAULT_MAX_ZOOM_SCALE_FACTOR:F

    .line 172
    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    .line 184
    sput v2, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    .line 190
    sput v2, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    .line 222
    sput-boolean v1, Landroid/webkit/ZoomManager;->useFeedback:Z

    return-void

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;)V
    .locals 4
    .parameter "webView"
    .parameter "callbackProxy"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 94
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 104
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 166
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 217
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    .line 219
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isPinching:Z

    .line 220
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isFirstPinch:Z

    .line 221
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isFirstTap:Z

    .line 226
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 227
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 230
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 231
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 471
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    .line 472
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    .line 473
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    .line 562
    iput v3, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    .line 563
    iput v3, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    .line 1580
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    .line 1597
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/ZoomManager;->mLastCheckMemoryTime:D

    .line 237
    iput-object p1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    .line 238
    iput-object p2, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 245
    const/16 v0, 0x3d4

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 247
    new-instance v0, Landroid/webkit/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    .line 250
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->isHtcApplication()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    .line 251
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 254
    :cond_0
    return-void
.end method

.method static synthetic access$102(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1200()F
    .locals 1

    .prologue
    .line 53
    sget v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1302(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1400(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$1502(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$1600(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$1802(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/webkit/ZoomManager;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$502(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    return v0
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .locals 2
    .parameter "scaleA"
    .parameter "scaleB"

    .prologue
    .line 433
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentZoomControl()Landroid/webkit/ZoomControlBase;
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1504
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    new-instance v0, Landroid/webkit/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomControlEmbedded;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1509
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1517
    :goto_0
    return-object v0

    .line 1511
    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-nez v0, :cond_2

    .line 1512
    new-instance v0, Landroid/webkit/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkit/ZoomControlExternal;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    .line 1514
    :cond_2
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    goto :goto_0

    .line 1517
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultZoomScale(F)V
    .locals 10
    .parameter "defaultScale"

    .prologue
    const/high16 v9, -0x4080

    const-wide/16 v7, 0x0

    .line 303
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 305
    .local v1, originalDefault:F
    const/4 v3, 0x0

    .line 306
    .local v3, useCustomScale:Z
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/webkit/WebViewClassic;->useCustomScale:Z

    .line 307
    move v0, p1

    .line 308
    .local v0, customScale:F
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    const-string v4, "https://settings.adobe.com/flashplayer/mobile/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    const/4 v3, 0x1

    .line 312
    const/high16 v0, 0x3fc0

    .line 313
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/webkit/WebViewClassic;->useCustomScale:Z

    .line 314
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "webviewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "use custom scale of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from default scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    if-eqz v3, :cond_4

    iput v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 321
    :goto_0
    const/high16 v4, 0x3f80

    div-float/2addr v4, p1

    iput v4, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    .line 322
    sget v4, Landroid/webkit/ZoomManager;->DEFAULT_MAX_ZOOM_SCALE_FACTOR:F

    mul-float/2addr v4, p1

    iput v4, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    .line 323
    const/high16 v4, 0x3e80

    mul-float/2addr v4, p1

    iput v4, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    .line 324
    float-to-double v4, v1

    cmpl-double v4, v4, v7

    if-lez v4, :cond_5

    iget v4, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    float-to-double v4, v4

    cmpl-double v4, v4, v7

    if-lez v4, :cond_5

    .line 326
    div-float v4, p1, v1

    iget v5, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 330
    :goto_1
    float-to-double v4, v1

    cmpl-double v4, v4, v7

    if-lez v4, :cond_6

    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    float-to-double v4, v4

    cmpl-double v4, v4, v7

    if-lez v4, :cond_6

    .line 332
    div-float v4, p1, v1

    iget v5, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 336
    :goto_2
    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v5, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    invoke-static {v4, v5}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 337
    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput v4, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 341
    :cond_1
    iget v4, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v4, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 342
    :cond_2
    iget v4, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 344
    :cond_3
    return-void

    .line 320
    :cond_4
    iput p1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    goto :goto_0

    .line 328
    :cond_5
    iget v4, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v4, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_1

    .line 334
    :cond_6
    iget v4, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_2
.end method

.method private setZoomOverviewWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    const/16 v0, 0x3d4

    iput v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 859
    :goto_0
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    .line 860
    return-void

    .line 857
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0
.end method

.method private setZoomScale(FZZ)V
    .locals 15
    .parameter "scale"
    .parameter "reflowText"
    .parameter "force"

    .prologue
    .line 679
    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v11, p1, v11

    if-gez v11, :cond_7

    const/4 v1, 0x1

    .line 680
    .local v1, isScaleLessThanMinZoom:Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    .line 683
    if-eqz v1, :cond_8

    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v12, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_8

    .line 684
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 690
    :goto_1
    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v11, :cond_a

    if-eqz p2, :cond_a

    .line 691
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 698
    :cond_0
    :goto_2
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-nez v11, :cond_1

    if-eqz p3, :cond_6

    .line 699
    :cond_1
    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 700
    .local v3, oldScale:F
    iget v2, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 702
    .local v2, oldInvScale:F
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v11, :cond_2

    .line 703
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v12, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 706
    :cond_2
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 707
    const/high16 v11, 0x3f80

    div-float v11, v11, p1

    iput v11, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 709
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v11

    if-nez v11, :cond_3

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v11, :cond_3

    .line 717
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    .line 718
    .local v4, oldX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    .line 719
    .local v5, oldY:I
    mul-float v6, p1, v2

    .line 720
    .local v6, ratio:F
    int-to-float v11, v4

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    mul-float/2addr v12, v13

    add-float v9, v11, v12

    .line 721
    .local v9, sx:F
    int-to-float v11, v5

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    iget-object v14, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v14}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v10, v11, v12

    .line 725
    .local v10, sy:F
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v11}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 729
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v7

    .line 730
    .local v7, scrollX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v8

    .line 731
    .local v8, scrollY:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11, v7, v8}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    move-result v11

    if-nez v11, :cond_3

    .line 735
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 741
    .end local v4           #oldX:I
    .end local v5           #oldY:I
    .end local v6           #ratio:F
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    .end local v9           #sx:F
    .end local v10           #sy:F
    :cond_3
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v11, :cond_4

    sget-boolean v11, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v11, :cond_5

    .line 742
    :cond_4
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    .line 744
    :cond_5
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 746
    .end local v2           #oldInvScale:F
    .end local v3           #oldScale:F
    :cond_6
    return-void

    .line 679
    .end local v1           #isScaleLessThanMinZoom:Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 686
    .restart local v1       #isScaleLessThanMinZoom:Z
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v11

    move/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 694
    :cond_a
    if-eqz p2, :cond_0

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_0

    .line 695
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_2
.end method

.method private setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z
    .locals 4
    .parameter "drawData"
    .parameter "viewWidth"

    .prologue
    .line 1387
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 1388
    .local v1, settings:Landroid/webkit/WebSettings;
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 1389
    .local v0, newZoomOverviewWidth:I
    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1390
    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    .line 1393
    sget v2, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1400
    :cond_0
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_2

    .line 1401
    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 1402
    const/4 v2, 0x1

    .line 1404
    :goto_1
    return v2

    .line 1398
    :cond_1
    int-to-float v2, p2

    iget v3, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1404
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private zoom(F)Z
    .locals 4
    .parameter "zoomMultiplier"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f00

    .line 458
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 460
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 462
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 463
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 464
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 465
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 466
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    return v0
.end method

.method private zoomToOverview()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 876
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v2, :cond_1

    .line 877
    :cond_0
    const-string v2, "AutoTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](301) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_OUT][START] scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_1
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    .line 882
    .local v0, scrollY:I
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 883
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 885
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 887
    return-void
.end method

.method private zoomToReadingLevel()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 891
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v5, :cond_0

    sget-boolean v5, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v5, :cond_1

    .line 892
    :cond_0
    const-string v5, "AutoTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AutoProf](301) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_IN][START] scale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v1

    .line 913
    .local v1, readingScale:F
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getFocusNodeBlock()Landroid/graphics/Rect;

    move-result-object v2

    .line 914
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 915
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 917
    .local v0, left:I
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v5, 0x5

    if-ge v0, v5, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v7, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int v3, v5, v7

    .line 921
    .local v3, viewLeft:I
    if-lez v3, :cond_5

    .line 922
    int-to-float v5, v3

    mul-float/2addr v5, v1

    iget v7, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v7, v1, v7

    div-float/2addr v5, v7

    iput v5, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 928
    :goto_1
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isHitOnTextNode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 929
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int v4, v5, v7

    .line 930
    .local v4, viewTop:I
    int-to-float v5, v4

    iput v5, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 934
    .end local v0           #left:I
    .end local v3           #viewLeft:I
    .end local v4           #viewTop:I
    :cond_2
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {p0, v1, v6}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 936
    return-void

    .line 917
    .restart local v0       #left:I
    :cond_4
    add-int/lit8 v5, v0, -0x5

    goto :goto_0

    .line 924
    .restart local v3       #viewLeft:I
    :cond_5
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 925
    const/4 v5, 0x0

    iput v5, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    goto :goto_1
.end method


# virtual methods
.method public animateZoom(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 579
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 580
    iget v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 581
    const-string/jumbo v9, "webviewZoom"

    const-string v10, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v9, v11

    long-to-int v2, v9

    .line 590
    .local v2, interval:I
    const/high16 v3, 0x3f80

    .line 591
    .local v3, ratio:F
    const/16 v9, 0xfa

    if-ge v2, v9, :cond_3

    .line 592
    int-to-float v9, v2

    const/high16 v10, 0x437a

    div-float v3, v9, v10

    .line 593
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v11, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    iget v12, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    div-float v8, v9, v10

    .line 595
    .local v8, zoomScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 603
    :goto_1
    iget v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    mul-float v0, v9, v3

    .line 604
    .local v0, fixX:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    mul-float v1, v9, v3

    .line 608
    .local v1, fixY:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    mul-float v4, v8, v9

    .line 609
    .local v4, scale:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v9, v10

    mul-float/2addr v9, v4

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v10, v0

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 610
    .local v6, tx:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v9

    neg-int v9, v9

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v10

    add-int v6, v9, v10

    .line 612
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v5

    .line 613
    .local v5, titleHeight:I
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v9, v10

    int-to-float v10, v5

    sub-float/2addr v9, v10

    mul-float/2addr v9, v4

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v11, v5

    sub-float/2addr v10, v11

    add-float/2addr v10, v1

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 616
    .local v7, ty:I
    if-gt v7, v5, :cond_4

    const/4 v9, 0x0

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_2
    neg-int v9, v9

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v10

    add-int v7, v9, v10

    .line 620
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v9, :cond_5

    .line 621
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v10

    sub-int/2addr v10, v6

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 624
    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 625
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 627
    iget v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    .line 629
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 635
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    if-nez v9, :cond_2

    .line 637
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 639
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    goto/16 :goto_0

    .line 597
    .end local v0           #fixX:F
    .end local v1           #fixY:F
    .end local v4           #scale:F
    .end local v5           #titleHeight:I
    .end local v6           #tx:I
    .end local v7           #ty:I
    .end local v8           #zoomScale:F
    :cond_3
    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 599
    .restart local v8       #zoomScale:F
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 600
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_1

    .line 616
    .restart local v0       #fixX:F
    .restart local v1       #fixY:F
    .restart local v4       #scale:F
    .restart local v5       #titleHeight:I
    .restart local v6       #tx:I
    .restart local v7       #ty:I
    :cond_4
    sub-int v9, v7, v5

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v9

    add-int/2addr v9, v5

    goto :goto_2

    .line 643
    :cond_5
    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 644
    invoke-virtual {p1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_0
.end method

.method public final canZoomIn()Z
    .locals 2

    .prologue
    .line 441
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canZoomOut()Z
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkMemory()V
    .locals 6

    .prologue
    .line 1599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v0, v2

    .line 1601
    .local v0, currentTime:D
    iget-wide v2, p0, Landroid/webkit/ZoomManager;->mLastCheckMemoryTime:D

    sub-double v2, v0, v2

    const-wide v4, 0x40b3880000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1602
    iput-wide v0, p0, Landroid/webkit/ZoomManager;->mLastCheckMemoryTime:D

    .line 1603
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/webkit/WebViewClassic;->nativeOnTrimMemory(I)V

    .line 1604
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 1605
    const-string/jumbo v2, "webviewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMemory() nativeOnTrimMemory duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    return-void
.end method

.method public final clearDocumentAnchor()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 404
    return-void
.end method

.method final computeReadingLevelScale(F)F
    .locals 2
    .parameter "scale"

    .prologue
    .line 378
    iget v0, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final computeScaleWithLimits(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 416
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 417
    iget p1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 421
    :cond_0
    :goto_0
    return p1

    .line 418
    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 419
    iget p1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public dismissZoomPicker()V
    .locals 1

    .prologue
    .line 1528
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1529
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1530
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->hide()V

    .line 1532
    :cond_0
    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public getDefaultTextWrapScale()F
    .locals 2

    .prologue
    .line 1591
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 1592
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    const/high16 v1, 0x3f00

    .line 1594
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    goto :goto_0
.end method

.method public final getDocumentAnchorX()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .locals 2

    .prologue
    .line 1559
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1560
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1561
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkit/ZoomControlExternal;->getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    .line 1563
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getInvDefaultScale()F
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method public final getMaxZoomScale()F
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public final getReadingLevelScale()F
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v0

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getTextWrapScale()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method getZoomOverviewScale()F
    .locals 3

    .prologue
    .line 865
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float v0, v1, v2

    .line 866
    .local v0, overviewScale:F
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .end local v0           #overviewScale:F
    :goto_0
    return v0

    .restart local v0       #overviewScale:F
    :cond_0
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method getZoomScale()F
    .locals 1

    .prologue
    .line 1587
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    return v0
.end method

.method public handleDoubleTap(FF)V
    .locals 10
    .parameter "lastTouchX"
    .parameter "lastTouchY"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 775
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 776
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    .line 777
    .local v3, settings:Landroid/webkit/WebSettingsClassic;
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isDoubleTapEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 851
    :goto_0
    return-void

    .line 781
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 782
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    float-to-int v6, p1

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 783
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    float-to-int v6, p2

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 784
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettingsClassic;->setDoubleTapToastCount(I)V

    .line 787
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 790
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 791
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 795
    .local v1, newTextWrapScale:F
    :goto_1
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 796
    .local v0, firstTimeReflow:Z
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v5, :cond_3

    .line 799
    :cond_2
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 802
    :cond_3
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 803
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->hasPendingScroll()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 804
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->cancelShowedRect()V

    .line 805
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x124

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 806
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x123

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 820
    :cond_4
    :goto_2
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v5, :cond_5

    sget-boolean v5, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v5, :cond_6

    .line 821
    :cond_5
    iput-boolean v4, p0, Landroid/webkit/ZoomManager;->isFirstTap:Z

    .line 822
    const-string v5, "AutoTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AutoProf](301) [OTHER][WEBVIEW][DOUBLETAP_FEEDBACK][START] scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_6
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v5, :cond_c

    .line 827
    iget-boolean v4, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_7

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    .line 828
    :cond_7
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevel()V

    goto/16 :goto_0

    .line 793
    .end local v0           #firstTimeReflow:Z
    .end local v1           #newTextWrapScale:F
    :cond_8
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .restart local v1       #newTextWrapScale:F
    goto/16 :goto_1

    .line 808
    .restart local v0       #firstTimeReflow:Z
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isInZoomOverview()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 809
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getFocusNodeBlock()Landroid/graphics/Rect;

    move-result-object v2

    .line 810
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isHitOnTextNode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 811
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 812
    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 816
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_a
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x122

    new-instance v7, Landroid/graphics/Point;

    iget v8, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v9, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 830
    :cond_b
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_0

    .line 834
    :cond_c
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v5, v1}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v0, :cond_d

    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v5, :cond_d

    .line 839
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 840
    invoke-virtual {p0, v4}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    goto/16 :goto_0

    .line 841
    :cond_d
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v5, :cond_f

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 843
    iget v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_e

    .line 844
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 845
    invoke-virtual {p0, v4}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 847
    :cond_e
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_0

    .line 849
    :cond_f
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevel()V

    goto/16 :goto_0
.end method

.method public init(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 264
    sget-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 267
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 268
    iput p1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 269
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 271
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_0
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1521
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1522
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1523
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1525
    :cond_0
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 2

    .prologue
    .line 749
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 750
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->isPureZoomMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedLengthAnimationInProgress()Z
    .locals 2

    .prologue
    .line 653
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZoomOverview()Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .locals 1

    .prologue
    .line 990
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public isPreventingWebkitUpdatesForDoubleTap()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 969
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    if-eqz v1, :cond_0

    .line 970
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    .line 973
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    goto :goto_0
.end method

.method public final isScaleOverLimits(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 425
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimating()Z
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomPickerVisible()Z
    .locals 2

    .prologue
    .line 1535
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1536
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomScaleFixed()Z
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepZoomPickerVisible()V
    .locals 2

    .prologue
    .line 1552
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1553
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1554
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1556
    :cond_0
    return-void
.end method

.method needAccelerateReflow()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    return v0
.end method

.method public onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 10
    .parameter "drawData"

    .prologue
    const/high16 v9, -0x4080

    const/4 v8, 0x0

    .line 1416
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1417
    :cond_0
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1418
    :cond_1
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1420
    :cond_2
    iget-object v5, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 1421
    .local v5, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget-object v4, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 1422
    .local v4, viewSize:Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    .line 1423
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    .line 1424
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1425
    .local v0, overviewScale:F
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    .line 1426
    .local v3, settings:Landroid/webkit/WebSettingsClassic;
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1427
    :cond_3
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1429
    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v7, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1432
    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1433
    :cond_4
    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_5

    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1437
    :cond_5
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1439
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_b

    .line 1440
    iget v2, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 1468
    .local v2, scale:F
    :cond_6
    :goto_1
    const/4 v1, 0x0

    .line 1469
    .local v1, reflowText:Z
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_8

    .line 1470
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1472
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1473
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1475
    :cond_7
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    .line 1477
    :cond_8
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v2, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1479
    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1482
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    .line 1484
    .end local v1           #reflowText:Z
    .end local v2           #scale:F
    :cond_9
    return-void

    :cond_a
    move v6, v0

    .line 1427
    goto :goto_0

    .line 1441
    :cond_b
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_c

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_10

    .line 1442
    :cond_c
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_d

    iget v2, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 1445
    .restart local v2       #scale:F
    :goto_3
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_e

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_4
    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .end local v2           #scale:F
    :cond_d
    move v2, v0

    .line 1442
    goto :goto_3

    .line 1445
    .restart local v2       #scale:F
    :cond_e
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v6

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    goto :goto_4

    .line 1451
    .end local v2           #scale:F
    :cond_10
    move v2, v0

    .line 1452
    .restart local v2       #scale:F
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1454
    :cond_11
    iget v6, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1456
    :cond_12
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1461
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v6, :cond_13

    .line 1462
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_1

    .line 1465
    :cond_13
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_1

    .line 1477
    .restart local v1       #reflowText:Z
    :cond_14
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onNewPicture(Landroid/webkit/WebViewCore$DrawData;)Z
    .locals 12
    .parameter "drawData"

    .prologue
    const/high16 v11, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1320
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v5

    .line 1321
    .local v5, viewWidth:I
    invoke-direct {p0, p1, v5}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    move-result v6

    .line 1322
    .local v6, zoomOverviewWidthChanged:Z
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    .line 1323
    .local v1, newZoomOverviewScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    .line 1324
    .local v4, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_2

    .line 1329
    :cond_0
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1332
    :cond_1
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v9, :cond_a

    .line 1333
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1342
    :cond_2
    :goto_0
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1343
    :cond_3
    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1344
    iget v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1347
    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_4

    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1348
    :cond_4
    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_5

    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1353
    :cond_5
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    .line 1355
    .local v2, scaleHasDiff:Z
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_c

    move v3, v7

    .line 1359
    .local v3, scaleLessThanOverview:Z
    :goto_1
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_d

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_d

    move v0, v7

    .line 1361
    .local v0, mobileSiteInOverview:Z
    :goto_2
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_f

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_8

    :cond_6
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_7

    if-eqz v0, :cond_f

    :cond_7
    if-eqz v2, :cond_f

    if-eqz v6, :cond_f

    .line 1365
    :cond_8
    iput-boolean v8, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1366
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_e

    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1371
    :goto_4
    iget-boolean v7, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1374
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1377
    :cond_9
    return v2

    .line 1336
    .end local v0           #mobileSiteInOverview:Z
    .end local v2           #scaleHasDiff:Z
    .end local v3           #scaleLessThanOverview:Z
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_0

    .line 1338
    :cond_b
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_0

    .restart local v2       #scaleHasDiff:Z
    :cond_c
    move v3, v8

    .line 1355
    goto :goto_1

    .restart local v3       #scaleLessThanOverview:Z
    :cond_d
    move v0, v8

    .line 1359
    goto :goto_2

    .restart local v0       #mobileSiteInOverview:Z
    :cond_e
    move v7, v8

    .line 1366
    goto :goto_3

    .line 1369
    :cond_f
    if-nez v2, :cond_10

    :goto_5
    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto :goto_4

    :cond_10
    move v7, v8

    goto :goto_5
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1576
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1577
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x4080

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1196
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1197
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v0

    .line 1198
    .local v0, visibleTitleHeight:I
    iput v7, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 1199
    int-to-float v1, v0

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 1200
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 1201
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 1205
    .end local v0           #visibleTitleHeight:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_3

    .line 1210
    const/high16 v4, 0x3f80

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getHistoryPictureWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1214
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1215
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1218
    :cond_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1219
    :cond_2
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1223
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1235
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    if-nez v1, :cond_7

    .line 1236
    new-instance v4, Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_5

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_6

    :goto_2
    invoke-direct {v4, p0, v1, v5, v2}, Landroid/webkit/ZoomManager$PostScale;-><init>(Landroid/webkit/ZoomManager;ZZZ)V

    iput-object v4, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    .line 1241
    :goto_3
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1242
    return-void

    .line 1210
    :cond_4
    iget v1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1236
    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 1238
    :cond_7
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_8

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_4
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_9

    :goto_5
    invoke-virtual {v4, v1, v5, v2}, Landroid/webkit/ZoomManager$PostScale;->init(ZZZ)V

    .line 1239
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_8
    move v1, v3

    .line 1238
    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_5
.end method

.method public recoveryDefaultZoomLowerBound()V
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    .line 1638
    const-string/jumbo v0, "webviewZoom"

    const-string v1, "[ZoomManager.RecoveryDefaultZoomLowerBound] >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_0
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 1643
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_0
.end method

.method public recoveryDefaultZoomUpperBound()V
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    .line 1629
    const-string/jumbo v0, "webviewZoom"

    const-string v1, "[ZoomManager.RecoveryDefaultZoomUpperBound] >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 1635
    :goto_0
    return-void

    .line 1633
    :cond_0
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 1634
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public refreshZoomScale(Z)V
    .locals 2
    .parameter "reflowText"

    .prologue
    .line 671
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 672
    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    const/high16 v1, 0x3f80

    .line 1496
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 1497
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 1498
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1499
    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 1500
    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1487
    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1488
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1489
    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1490
    return-void
.end method

.method public setHardwareAccelerated()V
    .locals 1

    .prologue
    .line 1568
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 1569
    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .locals 2
    .parameter "scaleInPercent"

    .prologue
    .line 412
    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 413
    return-void
.end method

.method setNeedAccelerateReflow(Z)V
    .locals 0
    .parameter "n"

    .prologue
    .line 480
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    .line 481
    return-void
.end method

.method public final setZoomCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 407
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 408
    iput p2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 409
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 3
    .parameter "fLower"

    .prologue
    .line 1620
    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZoomManager.setZoomLowerBound] >> fLower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1624
    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 1625
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_0
.end method

.method public setZoomScale(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 676
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 3
    .parameter "fUpper"

    .prologue
    .line 1611
    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZoomManager.setZoomUpperBound] >> fUpper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1617
    :goto_0
    return-void

    .line 1615
    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 1616
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public startZoomAnimation(FZ)Z
    .locals 13
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    .line 490
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 491
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 492
    .local v5, oldScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    .line 493
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    .line 496
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    invoke-static {p1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result p1

    .line 502
    :cond_0
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x123

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 503
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/webkit/WebViewPerfUtil;->acquireWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 504
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x123

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 506
    :cond_1
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->isInBrowserApp()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 507
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    .line 508
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    .line 509
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    .line 513
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 515
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_9

    .line 516
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v9, :cond_3

    .line 517
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 520
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 521
    const/high16 v9, 0x3f80

    div-float/2addr v9, v5

    iput v9, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    .line 522
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    .line 523
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 525
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpg-float v9, v9, v5

    if-gez v9, :cond_8

    .line 526
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v6

    .line 527
    .local v6, titleHeight:I
    iget v9, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    div-float v2, v9, v10

    .line 528
    .local v2, finalScale:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v3, v9

    .line 529
    .local v3, finalScrollX:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v9, v10

    int-to-float v10, v6

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v11, v6

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v4, v9

    .line 532
    .local v4, finalScrollY:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 533
    .local v0, docMaxX:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v7

    .line 534
    .local v7, viewMaxX:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 535
    .local v1, docMaxY:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v8

    .line 537
    .local v8, viewMaxY:I
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_4

    .line 538
    iput v3, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    .line 544
    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_6

    .line 545
    iput v4, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    .line 555
    .end local v0           #docMaxX:I
    .end local v1           #docMaxY:I
    .end local v2           #finalScale:F
    .end local v3           #finalScrollX:F
    .end local v4           #finalScrollY:F
    .end local v6           #titleHeight:I
    .end local v7           #viewMaxX:I
    .end local v8           #viewMaxY:I
    :goto_1
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    .line 556
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 557
    const/4 v9, 0x1

    .line 559
    :goto_2
    return v9

    .line 539
    .restart local v0       #docMaxX:I
    .restart local v1       #docMaxY:I
    .restart local v2       #finalScale:F
    .restart local v3       #finalScrollX:F
    .restart local v4       #finalScrollY:F
    .restart local v6       #titleHeight:I
    .restart local v7       #viewMaxX:I
    .restart local v8       #viewMaxY:I
    :cond_4
    int-to-float v9, v7

    add-float/2addr v9, v3

    int-to-float v10, v0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 540
    int-to-float v9, v7

    add-float/2addr v9, v3

    int-to-float v10, v0

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    goto :goto_0

    .line 542
    :cond_5
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    goto :goto_0

    .line 546
    :cond_6
    int-to-float v9, v6

    sub-float v9, v4, v9

    int-to-float v10, v8

    add-float/2addr v9, v10

    int-to-float v10, v1

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 547
    int-to-float v9, v6

    sub-float v9, v4, v9

    int-to-float v10, v8

    add-float/2addr v9, v10

    int-to-float v10, v1

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    goto :goto_1

    .line 549
    :cond_7
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    goto :goto_1

    .line 551
    .end local v0           #docMaxX:I
    .end local v1           #docMaxY:I
    .end local v2           #finalScale:F
    .end local v3           #finalScrollX:F
    .end local v4           #finalScrollY:F
    .end local v6           #titleHeight:I
    .end local v7           #viewMaxX:I
    .end local v8           #viewMaxY:I
    :cond_8
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    .line 552
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    goto :goto_1

    .line 559
    :cond_9
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public supportsMultiTouchZoom()Z
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public updateDefaultZoomDensity(F)V
    .locals 6
    .parameter "density"

    .prologue
    .line 288
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 290
    :cond_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 292
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 294
    .local v0, originalDefault:F
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 295
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 296
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    div-float v1, p1, v0

    .line 298
    .local v1, scaleChange:F
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 300
    .end local v0           #originalDefault:F
    .end local v1           #scaleChange:F
    :cond_1
    return-void

    .line 296
    .restart local v0       #originalDefault:F
    :cond_2
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public updateDoubleTapZoom(I)V
    .locals 5
    .parameter "doubleTapZoom"

    .prologue
    const/4 v2, 0x1

    .line 657
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    .line 658
    .local v1, zoomIn:Z
    :goto_0
    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 660
    iget-boolean v3, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v3, :cond_1

    .line 661
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 665
    :goto_1
    if-eqz v1, :cond_2

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 667
    .local v0, newScale:F
    :goto_2
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 668
    return-void

    .line 657
    .end local v0           #newScale:F
    .end local v1           #zoomIn:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 664
    .restart local v1       #zoomIn:Z
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .line 665
    :cond_2
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 940
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 942
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 943
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 944
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    .line 948
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    iput-boolean v4, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    .line 952
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_6

    .line 953
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/webkit/ZoomManager$ScaleDetectorListener;

    invoke-direct {v3, p0, v5}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 957
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v2, v4

    .line 944
    goto :goto_0

    .line 954
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_4

    .line 955
    iput-object v5, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_1
.end method

.method public updateZoomPicker()V
    .locals 1

    .prologue
    .line 1540
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1541
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1542
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->update()V

    .line 1544
    :cond_0
    return-void
.end method

.method public updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V
    .locals 5
    .parameter "viewState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    .line 1285
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 1286
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v0, :cond_3

    .line 1287
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_2

    .line 1288
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1289
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 1302
    :goto_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    .line 1303
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1308
    :goto_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1309
    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1311
    :cond_1
    return-void

    .line 1291
    :cond_2
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1292
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1295
    :cond_3
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1296
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1299
    :cond_4
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1300
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1305
    :cond_5
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_1
.end method

.method useHtcZoom()Z
    .locals 1

    .prologue
    .line 1583
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    return v0
.end method

.method public willScaleTriggerZoom(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 437
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 449
    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 453
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method
