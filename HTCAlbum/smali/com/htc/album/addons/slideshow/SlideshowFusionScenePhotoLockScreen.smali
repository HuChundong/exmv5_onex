.class public Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;
.super Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
.source "SlideshowFusionScenePhotoLockScreen.java"


# static fields
.field public static final BACKGROUND_DYNAMIC_IMAGE_COUNT:I = 0x1b

.field public static final FOREGROUND_DYNAMIC_IMAGE_COUNT:I = 0x8


# instance fields
.field private final BUILD_NUM:I

.field private final DEBUG:Z

.field private final LOCK:Ljava/lang/Object;

.field private final LOG_TAG:Ljava/lang/String;

.field protected final PLAYSTATE_FORWARD:I

.field protected final PLAYSTATE_REWIND:I

.field protected final PLAYSTATE_STOPPED:I

.field private final WAIT_PRELOAD:I

.field protected final backgroundDynamicImagePrefix:Ljava/lang/String;

.field protected final backgroundPhotoTimeLineControlPrefix:Ljava/lang/String;

.field protected final backgroundTimeLineControlCompPrefix:Ljava/lang/String;

.field protected final backgroundTimelinePrefix:Ljava/lang/String;

.field protected final foregroundDynamicImagePrefix:Ljava/lang/String;

.field protected final foregroundTimelinePrefix:Ljava/lang/String;

.field protected final hitBoxPrefix:Ljava/lang/String;

.field protected mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mBackgroundPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mBackgroundTimeLineControlPausedFrame:F

.field protected mBuildComplete:Z

.field protected mCurrentUsingForegroundFrameIndex:I

.field protected mCurrentUsingShuffleListIndex:I

.field protected mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mForegroundTimeLineControlPausedFrame:[F

.field protected mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field protected mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsBackgroundDynamicImagesSet:[Z

.field protected mIsForegroundTimelineControlBeingPlayed:[I

.field protected mLaunched:Z

.field protected mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final quickEndModifier:F

.field protected transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected final transizeTimelinePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1b

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 25
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;-><init>()V

    .line 27
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    .line 28
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->DEBUG:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    .line 33
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->quickEndModifier:F

    .line 34
    const-string v0, "Slideshow_transize"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimelinePrefix:Ljava/lang/String;

    .line 35
    const-string v0, "timeline.lock_photo_"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->foregroundTimelinePrefix:Ljava/lang/String;

    .line 36
    const-string v0, "timeline.behindphoto_loop"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundTimelinePrefix:Ljava/lang/String;

    .line 37
    const-string v0, "dynamicimage.main_photo.major"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->foregroundDynamicImagePrefix:Ljava/lang/String;

    .line 38
    const-string v0, "dynamicimage.behind_flying.photo"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundDynamicImagePrefix:Ljava/lang/String;

    .line 39
    const-string v0, "comp.behind_flying.frame"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundTimeLineControlCompPrefix:Ljava/lang/String;

    .line 40
    const-string v0, "timeline_bg_photo"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundPhotoTimeLineControlPrefix:Ljava/lang/String;

    .line 41
    const-string v0, "photo.hitbox"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->hitBoxPrefix:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    .line 44
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 45
    new-array v0, v1, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    .line 47
    new-array v0, v1, [Lcom/htc/fusion/fx/MessageListener;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;

    .line 48
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 49
    new-array v0, v4, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    .line 50
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 51
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 52
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    .line 67
    new-array v0, v1, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 68
    new-array v0, v4, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 69
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlPausedFrame:F

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    .line 74
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    .line 75
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    .line 76
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mLaunched:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBuildComplete:Z

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->WAIT_PRELOAD:I

    .line 80
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->BUILD_NUM:I

    .line 82
    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->PLAYSTATE_STOPPED:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->PLAYSTATE_FORWARD:I

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->PLAYSTATE_REWIND:I

    .line 86
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$2;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public buildShuffleList()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, originalListLastItem:I
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 236
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 237
    return-void
.end method

.method public deinit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][deinit] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v1, v0

    .line 213
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v1, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 220
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_1
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    .line 226
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][deinit] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public getScenePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x2

    .line 114
    invoke-static {p1, v0, v0}, Lcom/htc/album/addons/slideshow/CustomizedSettings;->getScenePath(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V
    .locals 9
    .parameter "activity"
    .parameter "view"

    .prologue
    const/16 v8, 0x1b

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    .line 122
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][init] + "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "Slideshow_transize"

    .line 125
    .local v2, strName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 127
    const-string v2, "timeline.behindphoto_loop"

    .line 128
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 129
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_3

    .line 131
    new-array v3, v8, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "comp.behind_flying.frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v4, v0

    .line 136
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 141
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicimage.behind_flying.photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v0

    .line 143
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 152
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v7, :cond_5

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline.lock_photo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v4, v0

    .line 156
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicimage.main_photo.major"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v0

    .line 160
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    aput v5, v3, v0

    .line 162
    move v1, v0

    .line 163
    .local v1, index:I
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;

    new-instance v4, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;

    invoke-direct {v4, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;I)V

    aput-object v4, v3, v0

    .line 180
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 152
    .end local v1           #index:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "timeline_bg_photo"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 186
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "photo.hitbox"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 187
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v3, :cond_6

    .line 189
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 190
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 191
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setStrokeInterest(I)V

    .line 195
    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_7

    .line 197
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 199
    :cond_7
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->buildShuffleList()V

    .line 200
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][init] - "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 8
    .parameter "index"
    .parameter "DI"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 450
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete] + , index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v2, :pswitch_data_0

    .line 575
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 577
    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    const/4 v2, 0x0

    iput-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    .line 582
    :cond_1
    const/4 p2, 0x0

    .line 584
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_3
    return-void

    .line 455
    :pswitch_0
    if-ltz p1, :cond_3

    const/16 v2, 0x1a

    if-gt p1, v2, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 459
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete] + , decodeMode = bg"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, idx:I
    const/4 v2, 0x5

    if-ge p1, v2, :cond_5

    .line 465
    rsub-int/lit8 v1, p1, 0x17

    .line 466
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto1 - idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    .line 469
    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    .line 470
    .local v0, FI:Lcom/htc/fusion/fx/FxImage;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    .line 471
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 472
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aput-boolean v6, v2, v1

    .line 474
    .end local v0           #FI:Lcom/htc/fusion/fx/FxImage;
    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 476
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 479
    :cond_5
    move v1, p1

    .line 480
    :goto_1
    const/16 v2, 0x17

    if-ge v1, v2, :cond_8

    .line 482
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto2 - idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    .line 485
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_6

    .line 487
    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    .line 488
    .restart local v0       #FI:Lcom/htc/fusion/fx/FxImage;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    .line 489
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 490
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aput-boolean v5, v2, v1

    .line 491
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 493
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 501
    .end local v0           #FI:Lcom/htc/fusion/fx/FxImage;
    :cond_6
    :goto_2
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mMediaListSize:I

    add-int/2addr v1, v2

    goto :goto_1

    .line 499
    :cond_7
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto3 - Image set idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 503
    :cond_8
    if-ge p1, v7, :cond_a

    .line 505
    rsub-int/lit8 v2, p1, 0x4

    rsub-int/lit8 v1, v2, 0x1b

    .line 506
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto4 - idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    if-eqz v2, :cond_9

    .line 509
    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    .line 510
    .restart local v0       #FI:Lcom/htc/fusion/fx/FxImage;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    .line 511
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 512
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aput-boolean v5, v2, v1

    .line 514
    .end local v0           #FI:Lcom/htc/fusion/fx/FxImage;
    :cond_9
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_a

    .line 516
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 529
    :cond_a
    if-ne v7, p1, :cond_0

    .line 531
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay]WAIT_PRELOAD complete"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBuildComplete:Z

    .line 533
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Build"

    const/high16 v4, 0x3f80

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto/16 :goto_0

    .line 540
    .end local v1           #idx:I
    :pswitch_1
    if-ltz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 544
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]decodeMode = fg"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    .line 547
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]mCurrentUsingShuffleListIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentUsingForegroundFrameIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_b

    .line 551
    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    .line 552
    .restart local v0       #FI:Lcom/htc/fusion/fx/FxImage;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    .line 553
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 554
    iget-boolean v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    if-eqz v2, :cond_c

    .line 556
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoNext()V

    .line 564
    .end local v0           #FI:Lcom/htc/fusion/fx/FxImage;
    :cond_b
    :goto_3
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    .line 565
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 567
    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    .line 568
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->buildShuffleList()V

    goto/16 :goto_0

    .line 560
    .restart local v0       #FI:Lcom/htc/fusion/fx/FxImage;
    :cond_c
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoPrevious()V

    goto :goto_3

    .line 452
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onGoNext()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 372
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoNext] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aput v4, v0, v1

    .line 374
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v1

    const-string v1, "fly_in"

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 375
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 381
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoNext] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 381
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoNextByUser()V
    .locals 0

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->quickEnd()V

    .line 388
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoNext()V

    .line 389
    return-void
.end method

.method public onGoPause()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    invoke-static {v0}, Lcom/htc/fusion/fx/FxRunAsync;->Execute(Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;)Ljava/util/concurrent/Future;

    .line 343
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPlay()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mLaunched:Z

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mLaunched:Z

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    invoke-static {v0}, Lcom/htc/fusion/fx/FxRunAsync;->Execute(Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;)Ljava/util/concurrent/Future;

    .line 299
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPrevious()V
    .locals 5

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPrevious] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 352
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v1

    const-string v1, "fly_in"

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 353
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 359
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPrevious] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPreviousByUser()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->quickEnd()V

    .line 366
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoPrevious()V

    .line 367
    return-void
.end method

.method public quickEnd()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 393
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v13, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v1

    aput v1, v0, v12

    .line 393
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause]mForegroundTimelineControls["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_1
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_5

    .line 408
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    if-eq v0, v12, :cond_2

    .line 410
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    aget v0, v0, v12

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_2
    :goto_3
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 416
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    aget v1, v1, v12

    float-to-int v1, v1

    const/high16 v4, -0x3f60

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 417
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 423
    :cond_3
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 431
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v6, v0, v12

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    aget v0, v0, v12

    float-to-int v7, v0

    const/16 v8, 0xc8

    const/high16 v10, 0x40a0

    move v9, v2

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 432
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 438
    :cond_4
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 445
    :cond_5
    return-void

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation]Landscape"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "background_L"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 612
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation]Portrait"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "background_P"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0
.end method
