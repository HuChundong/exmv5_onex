.class public Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneManager.java"


# instance fields
.field private final DEBUG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentPosition:I

.field private mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

.field private mDecoderHandler:Landroid/os/Handler;

.field private mFxView:Lcom/htc/fusion/fx/FxView;

.field private mInitialized:Z

.field private mOrientation:I

.field private mOrientationPrevious:I

.field private mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

.field protected mTransitionAnimation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    .line 15
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 16
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 17
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    .line 18
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    .line 19
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 20
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    .line 22
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    .line 23
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    .line 27
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->DEBUG:Z

    .line 28
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    .line 35
    return-void
.end method


# virtual methods
.method public create(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;I)Z
    .locals 3
    .parameter "activity"
    .parameter "view"
    .parameter "transitionAnimation"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 42
    iput p3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionSceneManager][create]mTransitionAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]TRANSITION_PHOTO_LS"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setTransitionAnimationID(I)V

    .line 81
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    .line 83
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]TRANSITION_FALLING_PHOTO"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]??"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    goto :goto_0
.end method

.method public deInit()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 195
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    .line 200
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 201
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 202
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    .line 204
    return-void
.end method

.method public getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    return-object v0
.end method

.method public init(I)V
    .locals 10
    .parameter "orientation"

    .prologue
    const/4 v9, 0x5

    const v8, 0xc350

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 89
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionSceneManager][init] + "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v3

    .line 91
    .local v3, nScreenDisplay:[I
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 93
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_PHOTO_LS"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    const/4 v2, 0x0

    .line 99
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 101
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 103
    const/4 v4, 0x4

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 104
    iput-boolean v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    .line 105
    aget v4, v3, v6

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 106
    aget v4, v3, v7

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 107
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 108
    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 110
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v4, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 116
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x1b

    if-ge v1, v4, :cond_5

    .line 120
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 121
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iput v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 122
    const/4 v4, 0x3

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 123
    aget v4, v3, v6

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 124
    aget v4, v3, v7

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 125
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 126
    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 128
    const/4 v4, 0x7

    if-ge v1, v4, :cond_2

    .line 130
    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    .line 137
    :goto_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v4, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 143
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_2
    const/4 v4, 0x2

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    goto :goto_1

    .line 147
    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v1           #i:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 149
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_FALLING_PHOTO"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    .line 152
    const/4 v0, 0x0

    .line 154
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 155
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 156
    iput v9, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 157
    iput-boolean v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    .line 158
    aget v4, v3, v6

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 159
    aget v4, v3, v7

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 160
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iput v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 161
    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 163
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v4, :cond_4

    .line 165
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v4, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 167
    :cond_4
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 169
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v2           #msg:Landroid/os/Message;
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    .line 185
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    .line 186
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionSceneManager][init] - "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 172
    :cond_6
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-nez v4, :cond_7

    .line 174
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_FADE"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :cond_7
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-ne v4, v6, :cond_8

    .line 178
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_SLIDE"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :cond_8
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-ne v4, v9, :cond_5

    .line 182
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_ROTATE"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    return v0
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 2
    .parameter "index"
    .parameter "DI"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][onDecodeComplete] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 273
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 274
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][onDecodeComplete] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setDecoder(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;II)V
    .locals 1
    .parameter "decoder"
    .parameter "size"
    .parameter "currentPosition"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 214
    invoke-virtual {p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    .line 215
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setMediaListSize(I)V

    .line 216
    iput p3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    .line 218
    return-void
.end method

.method public setIsPlaying(Z)V
    .locals 1
    .parameter "playing"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iput-boolean p1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mIsPlaying:Z

    .line 227
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    .line 237
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    .line 239
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    if-eq v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setOrientation(I)V

    .line 253
    :cond_0
    return-void
.end method

.method public setPlaybackSpeed(I)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setPlaybackSpeed(I)V

    .line 223
    return-void
.end method
