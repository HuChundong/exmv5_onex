.class public Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;
.super Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
.source "SlideshowFusionScene2D.java"


# static fields
.field static final ANIMATION_ARRAY:[Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mBitmapCurrent:Landroid/graphics/Bitmap;

.field protected mBitmapNew:Landroid/graphics/Bitmap;

.field protected mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected final mDynamicImageCurrentPrefix:Ljava/lang/String;

.field protected mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected final mDynamicImageNewPrefix:Ljava/lang/String;

.field protected mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected final mDynamicImageStayPrefix:Ljava/lang/String;

.field protected final mFxTimelineContrlPrefix:Ljava/lang/String;

.field protected mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Fade1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Counterclockwise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Fade2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SlideUp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SlideFadeLeft"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Rotate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->ANIMATION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;-><init>()V

    .line 21
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    .line 23
    const-string v0, "transition"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineContrlPrefix:Ljava/lang/String;

    .line 24
    const-string v0, "dynamicImageCurrent"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrentPrefix:Ljava/lang/String;

    .line 25
    const-string v0, "dynamicImageNew"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNewPrefix:Ljava/lang/String;

    .line 26
    const-string v0, "dynamicImageStay"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStayPrefix:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 29
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 30
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 31
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 73
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getTransitionAnimationID()I
    .locals 4

    .prologue
    .line 143
    const/4 v0, -0x1

    .line 144
    .local v0, ret:I
    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mTransitionAnimation:I

    packed-switch v1, :pswitch_data_0

    .line 156
    :pswitch_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionScene2D][onGoNext]getTransitionAnimationID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return v0

    .line 147
    :pswitch_1
    const/4 v0, 0x0

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x4

    .line 151
    goto :goto_0

    .line 153
    :pswitch_3
    const/4 v0, 0x5

    .line 154
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 101
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 102
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 103
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 104
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    .line 105
    return-void
.end method

.method public getScenePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/htc/album/addons/slideshow/CustomizedSettings;->getScenePath(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V
    .locals 6
    .parameter "activity"
    .parameter "view"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    .line 49
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "transition"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 50
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "dynamicImageCurrent"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 51
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "dynamicImageNew"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 52
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "dynamicImageStay"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 55
    const/16 v3, 0xc8

    .line 56
    .local v3, screenW:I
    const/16 v2, 0xc8

    .line 57
    .local v2, screenH:I
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v1

    .line 60
    .local v1, nScreenDisplay:[I
    const/4 v4, 0x0

    aget v3, v1, v4

    .line 61
    const/4 v4, 0x1

    aget v2, v1, v4

    .line 63
    .end local v1           #nScreenDisplay:[I
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v0, c:Landroid/graphics/Canvas;
    const/high16 v4, -0x100

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    const/4 v0, 0x0

    .line 68
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v4, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 70
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 3
    .parameter "index"
    .parameter "DI"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionScene2D][onDecodeComplete] + , index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    if-eqz p2, :cond_0

    .line 235
    const/4 p2, 0x0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onDecodeComplete] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    return-void

    .line 171
    :pswitch_0
    if-ltz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onDecodeComplete] + , decodeMode = fg"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    .line 180
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    .line 190
    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isLastItemInQueue:Z

    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->onGoNext()V

    goto :goto_0

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showStay"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_5
    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    .line 203
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_7

    .line 209
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    .line 213
    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isLastItemInQueue:Z

    if-eqz v0, :cond_8

    .line 215
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->onGoPrevious()V

    goto :goto_0

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 220
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showStay"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onGoNext()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoNext] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->ANIMATION_ARRAY:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->getTransitionAnimationID()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 137
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showTransition"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoNext] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onGoPause()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onGoPlay()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onGoPrevious()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoPrevious] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->ANIMATION_ARRAY:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->getTransitionAnimationID()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 127
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showTransition"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoPrevious] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setOrientation(I)V
    .locals 10
    .parameter "orientation"

    .prologue
    const/4 v9, 0x0

    .line 243
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionScene2D][setOrientation] + "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v3

    .line 245
    .local v3, nScreenDisplay:[I
    const/4 v5, 0x1

    aget v2, v3, v5

    .line 246
    .local v2, height:I
    const/4 v5, 0x0

    aget v4, v3, v5

    .line 248
    .local v4, width:I
    div-int/lit8 v0, v2, 0x2

    .line 249
    .local v0, halfHeight:I
    div-int/lit8 v1, v4, 0x2

    .line 250
    .local v1, halfWidth:I
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SlideshowFusionScene2D][setOrientation]h = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", w = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_0

    .line 254
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    new-instance v6, Lcom/htc/fusion/Point3F;

    int-to-float v7, v1

    int-to-float v8, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 256
    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v5, :cond_1

    .line 258
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-instance v6, Lcom/htc/fusion/Point3F;

    int-to-float v7, v1

    int-to-float v8, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 260
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v5, :cond_2

    .line 262
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-instance v6, Lcom/htc/fusion/Point3F;

    int-to-float v7, v1

    int-to-float v8, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 264
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v5, :cond_3

    .line 266
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-instance v6, Lcom/htc/fusion/Point3F;

    int-to-float v7, v1

    int-to-float v8, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 268
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionScene2D][setOrientation] - "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method
