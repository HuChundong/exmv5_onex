.class public abstract Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneBase.java"


# static fields
.field protected static final STATE_INVALID:I = -0x1

.field protected static final STATE_PAUSED:I = 0x2

.field protected static final STATE_PLAYING:I = 0x1

.field protected static final STATE_PLAYING_WHEN_PAUSED:I = 0x3


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected initialized:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mEnabled:Z

.field protected mFittingOrientation:I

.field protected mFxView:Lcom/htc/fusion/fx/FxView;

.field protected mIsPlaying:Z

.field protected mMediaListSize:I

.field protected mPlaybackSpeed:I

.field protected mScene:Lcom/htc/fusion/fx/FxScene;

.field protected mTransitionAnimation:I

.field protected state:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->LOG_TAG:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mActivity:Landroid/app/Activity;

    .line 20
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 23
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->state:I

    .line 24
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mMediaListSize:I

    .line 25
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mTransitionAnimation:I

    .line 26
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mFittingOrientation:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mIsPlaying:Z

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mPlaybackSpeed:I

    .line 30
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mFxView:Lcom/htc/fusion/fx/FxView;

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mEnabled:Z

    .line 65
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 66
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mActivity:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public abstract getScenePath(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V
    .locals 6
    .parameter "activity"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusionSceneBase][create] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 42
    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mEnabled:Z

    .line 43
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->getScenePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, scenePath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mEnabled:Z

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionSceneBase][create]scenePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, v0, v5}, Lcom/htc/fusion/fx/FxView;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 50
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 52
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mEnabled:Z

    .line 55
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mEnabled:Z

    if-nez v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionSceneBase][create]Unable to create w/ scenePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusionSceneBase][create] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mEnabled:Z

    return v0
.end method

.method public abstract onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
.end method

.method public abstract onGoNext()V
.end method

.method public abstract onGoPause()V
.end method

.method public abstract onGoPlay()V
.end method

.method public abstract onGoPrevious()V
.end method

.method public setFittingOrientation(I)V
    .locals 0
    .parameter "fittingOrientation"

    .prologue
    .line 86
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mFittingOrientation:I

    .line 87
    return-void
.end method

.method public setMediaListSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mMediaListSize:I

    .line 72
    return-void
.end method

.method public abstract setOrientation(I)V
.end method

.method public setPlaybackSpeed(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mPlaybackSpeed:I

    .line 92
    return-void
.end method

.method public setTransitionAnimationID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 76
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mTransitionAnimation:I

    .line 77
    return-void
.end method
