.class public Landroid/webkit/HTML5VideoFullscreen;
.super Ljava/lang/Object;
.source "HTML5VideoFullscreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoFullscreen$FullScreenMediaController;,
        Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;,
        Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANIMATION_DURATION:J = 0x2eeL

.field private static final ANIMATION_STATE_FINISHED:I = 0x2

.field private static final ANIMATION_STATE_NONE:I = 0x0

.field private static final ANIMATION_STATE_STARTED:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoFullscreen"

.field private static fullscreen:Landroid/webkit/HTML5VideoFullscreen;


# instance fields
.field private final WRAP_CONTENT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private mAnimationState:I

.field private final mCallback:Landroid/webkit/AnimatedCustomViewCallback;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mFullscreenHeight:I

.field private mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mFullscreenWidth:I

.field private mInlineHeight:F

.field private mInlineWidth:F

.field private mInlineX:F

.field private mInlineY:F

.field private mIsFullscreen:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mMediaController:Landroid/widget/MediaController;

.field private mProgressView:Landroid/view/View;

.field private mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWebViewLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Landroid/webkit/HTML5VideoFullscreen;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/HTML5VideoFullscreen;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->WRAP_CONTENT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 438
    new-instance v0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;-><init>(Landroid/webkit/HTML5VideoFullscreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mCallback:Landroid/webkit/AnimatedCustomViewCallback;

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mDisplaySize:Landroid/graphics/Point;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mWebViewLocation:[I

    .line 99
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoFullscreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/HTML5VideoFullscreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoFullscreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->finishExitingFullscreen()V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoFullscreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I

    return v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoFullscreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoFullscreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoFullscreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/HTML5VideoFullscreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoFullscreen;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineXOffset()F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoFullscreen;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineYOffset()F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/HTML5VideoFullscreen;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineXScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoFullscreen;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineYScale()F

    move-result v0

    return v0
.end method

.method private finishExitingFullscreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z

    .line 281
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->releaseMediaController()V

    .line 282
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->releaseTextureView()V

    .line 283
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 285
    iput-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    .line 287
    :cond_0
    sget-boolean v0, Landroid/webkit/HTML5VideoFullscreen;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 290
    iput-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 291
    iput-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    .line 292
    return-void
.end method

.method private getInlineXOffset()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->updateDisplaySize()V

    .line 321
    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineX:F

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mWebViewLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getInlineXScale()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 336
    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getInlineYOffset()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->updateDisplaySize()V

    .line 329
    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineY:F

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mWebViewLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getInlineYScale()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 343
    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I

    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    iget v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static instance()Landroid/webkit/HTML5VideoFullscreen;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/webkit/HTML5VideoFullscreen;->fullscreen:Landroid/webkit/HTML5VideoFullscreen;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/webkit/HTML5VideoFullscreen;

    invoke-direct {v0}, Landroid/webkit/HTML5VideoFullscreen;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoFullscreen;->fullscreen:Landroid/webkit/HTML5VideoFullscreen;

    .line 107
    :cond_0
    sget-object v0, Landroid/webkit/HTML5VideoFullscreen;->fullscreen:Landroid/webkit/HTML5VideoFullscreen;

    return-object v0
.end method

.method private releaseMediaController()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    .line 308
    :cond_0
    return-void
.end method

.method private releaseTextureView()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 298
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    .line 301
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method private updateDisplaySize()V
    .locals 6

    .prologue
    .line 311
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 312
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 313
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 315
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullscreen;->mWebViewLocation:[I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 316
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mWebViewLocation:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 317
    return-void
.end method


# virtual methods
.method public attachMediaController(Landroid/webkit/HTML5VideoViewProxy;Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 3
    .parameter "proxy"
    .parameter "player"

    .prologue
    .line 355
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v1, p1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 358
    :cond_0
    sget-boolean v1, Landroid/webkit/HTML5VideoFullscreen;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 362
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    if-nez v1, :cond_2

    .line 363
    new-instance v0, Landroid/webkit/HTML5VideoFullscreen$FullScreenMediaController;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTML5VideoFullscreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 364
    .local v0, mc:Landroid/widget/MediaController;
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 365
    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    .line 367
    .end local v0           #mc:Landroid/widget/MediaController;
    :cond_2
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 368
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p2}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 369
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 373
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    goto :goto_0
.end method

.method public clearSurfaceTexture(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v0, p1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->releaseMediaController()V

    .line 203
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->releaseTextureView()V

    goto :goto_0
.end method

.method public enterFullscreen(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/SurfaceTexture;FFFF)V
    .locals 4
    .parameter "proxy"
    .parameter "surfaceTexture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    iget-boolean v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z

    if-ne v1, v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-boolean v1, Landroid/webkit/HTML5VideoFullscreen;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 227
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z

    .line 228
    iput p3, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineX:F

    .line 229
    iput p4, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineY:F

    .line 230
    iput p5, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    .line 231
    iput p6, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    .line 232
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    .line 233
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    .line 234
    invoke-virtual {p0, p1, p2}, Landroid/webkit/HTML5VideoFullscreen;->setSurfaceTextureToFullscreen(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/SurfaceTexture;)V

    .line 235
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    :cond_3
    iput v3, p0, Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I

    .line 238
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 239
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mCallback:Landroid/webkit/AnimatedCustomViewCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 244
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 245
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->hideAll()V

    .line 247
    :cond_4
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    .line 248
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullscreen;->WRAP_CONTENT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public exitFullscreen(Landroid/webkit/HTML5VideoViewProxy;FFFF)V
    .locals 3
    .parameter "proxy"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 255
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v0, p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z

    .line 259
    iput p2, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineX:F

    .line 260
    iput p3, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineY:F

    .line 261
    iput p4, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineWidth:F

    .line 262
    iput p5, p0, Landroid/webkit/HTML5VideoFullscreen;->mInlineHeight:F

    .line 264
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->releaseMediaController()V

    .line 265
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    if-eqz v0, :cond_0

    .line 266
    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 267
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 271
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 272
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineXScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineYScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineXOffset()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->getInlineYOffset()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public isFullscreenView()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 396
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 412
    sget-boolean v0, Landroid/webkit/HTML5VideoFullscreen;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->onStopFullscreen()V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 402
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 399
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 442
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->toggleMediaControlsVisiblity()V

    .line 444
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSurfaceTextureToFullscreen(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "proxy"
    .parameter "surfaceTexture"

    .prologue
    const/4 v2, 0x1

    .line 175
    sget-boolean v0, Landroid/webkit/HTML5VideoFullscreen;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v0, p1, :cond_1

    .line 178
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->releaseMediaController()V

    .line 179
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullscreen;->releaseTextureView()V

    .line 182
    new-instance v0, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;-><init>(Landroid/webkit/HTML5VideoFullscreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    .line 183
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 184
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0, p2}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 185
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0, v2}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0, v2}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setFocusable(Z)V

    .line 189
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0, v2}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setFocusableInTouchMode(Z)V

    .line 190
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->requestFocus()Z

    .line 191
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 194
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullscreen;->WRAP_CONTENT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :cond_1
    return-void
.end method

.method public setVideoSize(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 1
    .parameter "proxy"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v0, p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iput p2, p0, Landroid/webkit/HTML5VideoFullscreen;->mVideoWidth:I

    .line 165
    iput p3, p0, Landroid/webkit/HTML5VideoFullscreen;->mVideoHeight:I

    .line 166
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->requestLayout()V

    goto :goto_0
.end method

.method public showMediaControls(Landroid/webkit/HTML5VideoViewProxy;Z)V
    .locals 2
    .parameter "proxy"
    .parameter "showForever"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v0, p1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 381
    if-eqz p2, :cond_2

    .line 382
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method public switchProgressView(Landroid/webkit/HTML5VideoViewProxy;Z)V
    .locals 2
    .parameter "proxy"
    .parameter "playerBuffering"

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 454
    if-eqz p2, :cond_2

    .line 455
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public webkitExitFullscreen(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 209
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v1, p1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 217
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method
