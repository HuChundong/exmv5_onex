.class public Lcom/htc/album/addons/slideshow/SlideshowFusion;
.super Lcom/htc/album/addons/slideshow/SlideshowBase;
.source "SlideshowFusion.java"


# static fields
.field static final DELAY_TIME:I = 0xbb8

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_NEXT_TIME:I

.field private initialQuick:Z

.field private lastCancelledTime:J

.field private lastPostedInterval:J

.field private lastPostedTime:J

.field mAnimationInt:I

.field mCurrentID:I

.field private mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

.field private mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

.field private mFxView:Lcom/htc/fusion/fx/FxView;

.field private mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

.field private mOrientation:I

.field private mPausedByNoRepeat:Z

.field mRandom:Ljava/util/Random;

.field mRunnableNext:Ljava/lang/Runnable;

.field mRunnablePrev:Ljava/lang/Runnable;

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private timeLeftToNextPost:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;-><init>()V

    .line 43
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentID:I

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRandom:Ljava/util/Random;

    .line 46
    const/16 v0, 0x1388

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEFAULT_NEXT_TIME:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    .line 50
    iput-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    .line 51
    iput-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    .line 52
    iput-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    .line 53
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    .line 55
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 57
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 58
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    .line 60
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    .line 62
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 63
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAnimationInt:I

    .line 67
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadNextImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadPreviousImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideshowFusion;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/slideshow/SlideshowFusion;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    return v0
.end method

.method private addFxView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 777
    new-instance v2, Lcom/htc/fusion/fx/FxView;

    invoke-direct {v2, p0}, Lcom/htc/fusion/fx/FxView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 778
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 788
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 789
    .local v0, layout:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 791
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 794
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 800
    .end local v1           #param:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 798
    :cond_0
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][addFxView]can\'t find mainview"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 519
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][cancelPost] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPosted:Z

    .line 526
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][cancelPost] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_2
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 12
    .parameter "direction"
    .parameter "isMoveNext"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 978
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage] + "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    if-eqz v6, :cond_0

    .line 981
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage]mStopAndLeave - "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v1

    .line 986
    .local v1, currentIndex:I
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 987
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SlideshowFusion][loadImage]currIdx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    if-nez v3, :cond_1

    .line 991
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage]image == null - "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 995
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->seekNextPlayablePosition(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    .line 997
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v1

    .line 998
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SlideshowFusion][loadImage]load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "th image."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    .line 1002
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    .line 1003
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updatePrevNextButtons()V

    .line 1005
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v6, :cond_3

    .line 1007
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v6}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1008
    .local v2, decoderHander:Landroid/os/Handler;
    if-eqz v2, :cond_3

    .line 1010
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    .line 1011
    .local v0, DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iput v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    .line 1012
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 1014
    const/4 v6, 0x4

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 1015
    iput v9, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    .line 1028
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v5

    .line 1029
    .local v5, nScreenDisplay:[I
    aget v6, v5, v9

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 1030
    aget v6, v5, v10

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 1031
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    .line 1032
    iput-boolean p2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    .line 1033
    iput v9, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    .line 1034
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v6, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 1035
    const v6, 0xc350

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1037
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v2           #decoderHander:Landroid/os/Handler;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #nScreenDisplay:[I
    :cond_3
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage] - "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1017
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .restart local v2       #decoderHander:Landroid/os/Handler;
    :cond_4
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 1019
    iput v11, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 1020
    iput v10, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    goto :goto_1

    .line 1022
    :cond_5
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-ne v6, v11, :cond_2

    .line 1025
    :cond_6
    const/4 v6, 0x2

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    .line 1026
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFittingOrientation:I

    iput v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    goto :goto_1
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 961
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadNextImage] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 964
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 965
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 968
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 970
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 972
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadImage(ZZ)V

    .line 973
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadNextImage] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 940
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadPreviousImage] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-nez v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 944
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 951
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 953
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 955
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadImage(ZZ)V

    .line 956
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadPreviousImage] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void

    .line 948
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    goto :goto_0
.end method

.method private post(JZ)V
    .locals 1
    .parameter "interval"
    .parameter "isMoveNext"

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    .line 533
    return-void
.end method

.method private post(JZZ)V
    .locals 2
    .parameter "interval"
    .parameter "isMoveNext"
    .parameter "isByUser"

    .prologue
    .line 537
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][post] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    .line 539
    iput-wide p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    .line 540
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    if-nez v0, :cond_1

    .line 542
    if-eqz p3, :cond_3

    .line 544
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPosted:Z

    .line 552
    :cond_1
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][post] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_2
    return-void

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public checkInit()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 344
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][checkInit]: mImageList NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_2

    .line 350
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    .line 356
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v0

    .line 559
    .local v0, nAnimIndex:I
    packed-switch v0, :pswitch_data_0

    .line 568
    :pswitch_0
    const/4 v0, -0x3

    .end local v0           #nAnimIndex:I
    :pswitch_1
    return v0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doAddFooterButtons(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 10
    .parameter "context"
    .parameter "footer"

    .prologue
    const/16 v3, 0x24

    const/4 v2, 0x0

    .line 1110
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    :cond_0
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1120
    :goto_0
    return-void

    .line 1116
    :cond_1
    const/16 v7, 0x27

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Previous_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v8

    move-object v4, p2

    move-object v5, p1

    move v6, v2

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1117
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1118
    const/16 v3, 0xf

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Next_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto :goto_0
.end method

.method protected doAddMediaControllerButtons(Lcom/htc/album/addons/slideshow/SlideShowController;)V
    .locals 11
    .parameter "controller"

    .prologue
    const/16 v3, 0x24

    const/4 v2, 0x0

    .line 1125
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 1126
    .local v10, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    :cond_0
    invoke-static {v10}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 1136
    :goto_0
    return-void

    .line 1132
    :cond_1
    const/16 v7, 0x27

    invoke-static {v10}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Previous_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v8

    move-object v4, p1

    move-object v5, p0

    move v6, v2

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 1133
    invoke-static {v10}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 1134
    const/16 v3, 0xf

    invoke-static {v10}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Next_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    goto :goto_0
.end method

.method public launchSlideshowByType(IZ)V
    .locals 8
    .parameter "type"
    .parameter "isFromOnStart"

    .prologue
    const/4 v7, 0x0

    .line 573
    sget-boolean v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusion][launchSlideshowByType]Fusion Slideshow -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 590
    :goto_0
    :pswitch_0
    const-string v2, "slideshow_setting_mode"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v2, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v2, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemfullpath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v2, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemIndex"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    const-string v2, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewSingleImage"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 595
    const-string v2, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v2, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_folder_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const-string v2, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_bucket_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v2, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "photoIds"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 599
    if-eqz p2, :cond_1

    .line 601
    const-string v2, "isInsideSlideshow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "collection_info"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "collection_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 605
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivity(Landroid/content/Intent;)V

    .line 608
    return-void

    .line 582
    .end local v0           #extras:Landroid/os/Bundle;
    :pswitch_1
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 585
    :pswitch_2
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 804
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onConfigurationChanged] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-super {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 807
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    .line 821
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onConfigurationChanged] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method protected onControlbarNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 930
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 933
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    .line 935
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 936
    return-void
.end method

.method protected onControlbarPrevious()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 919
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 922
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    .line 924
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 925
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 113
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate] + "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 116
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v9, :cond_1

    .line 119
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 121
    :cond_1
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    .line 123
    new-instance v9, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 124
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "slideshow_setting_mode"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    .line 125
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v9, p0, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 127
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]initSlideshowSetting NG"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    .line 336
    :cond_2
    :goto_0
    return-void

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkLaunchOtherSlideshow()I

    move-result v4

    .line 133
    .local v4, launchType:I
    const/4 v9, -0x3

    if-eq v9, v4, :cond_4

    .line 135
    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSlideshowByType(IZ)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "isInsideSlideshow"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 141
    .local v3, isInsideSlideshow:Z
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_ask_music_setting"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    .local v0, askMusic:Z
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_music_enable_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    .line 145
    if-nez v3, :cond_5

    .line 147
    iget-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    if-nez v9, :cond_10

    if-eqz v0, :cond_10

    .line 149
    const v9, 0x36870

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showDialog(I)V

    .line 150
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 158
    :cond_5
    :goto_1
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]Slideshow Fusion"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    .line 161
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_bucket_id"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "folder_type"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 164
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 166
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]null folder detected"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_7
    const-string v9, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 169
    :cond_8
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 171
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 173
    :cond_9
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v10, "album_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 175
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_folder_name"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 212
    :cond_a
    :goto_2
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_15

    .line 214
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 215
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 216
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 245
    :cond_b
    :goto_3
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-gtz v9, :cond_19

    .line 248
    :cond_c
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v10, "dock_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 250
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_d

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]no pref folder, set folder to all photo"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_d
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 254
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 255
    const v9, 0x7f0a0062

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 258
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_folder_picker_setting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 263
    :cond_e
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-gtz v9, :cond_19

    .line 265
    :cond_f
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowSettingManager][onCreate]: empty list"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showErrorDialog()V

    goto/16 :goto_0

    .line 154
    :cond_10
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_ask_music_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 177
    :cond_11
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v10, "dock_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 179
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_folder_picker_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, strFolderType:Ljava/lang/String;
    if-eqz v6, :cond_14

    .line 182
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 183
    .local v8, type:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 184
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 186
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 188
    :cond_12
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 190
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 192
    :cond_13
    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    .line 200
    .end local v8           #type:Ljava/util/StringTokenizer;
    :cond_14
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 201
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 202
    const v9, 0x7f0a0062

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 205
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_folder_picker_setting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 222
    .end local v6           #strFolderType:Ljava/lang/String;
    :cond_15
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "photoIds"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 223
    .local v5, nPhotoIds:[I
    if-eqz v5, :cond_17

    .line 225
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_16

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]from photo ids: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_16
    invoke-static {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_3

    .line 230
    :cond_17
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 231
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-static {v2, v9, v10, v11, v12}, Lcom/htc/album/helper/CollectionMaker;->makeSlideshowCollection(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    .line 232
    .local v1, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v1, :cond_18

    .line 234
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 240
    :goto_5
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]from bucket id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 238
    :cond_18
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_5

    .line 272
    .end local v1           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #nPhotoIds:[I
    :cond_19
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemIndex"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 273
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "slideshow_back_index"

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    .line 274
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_1a

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]: Slideshow Get Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Get Ent Pos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_1a
    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-eqz v9, :cond_1b

    .line 277
    const/4 v7, 0x0

    .line 278
    .local v7, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemfullpath"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 280
    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v9, v7, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 282
    .end local v7           #strFullPath:Ljava/lang/String;
    :cond_1b
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_1c

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1c
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_1d

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]: Slideshow reset mCurrentPosition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_1d
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 289
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    .line 293
    const v9, 0x7f030041

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setContentView(I)V

    .line 294
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->addFxView()V

    .line 296
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v9, :cond_1e

    .line 298
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initControlBarManager()V

    .line 301
    :cond_1e
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestFooterBar()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 303
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->attachMediaController()V

    .line 307
    :cond_1f
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 308
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 309
    const/4 v9, 0x1

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    .line 316
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->enableBroadcastReceiver()V

    .line 321
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_20

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]mTransitionAnimIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_20
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate] - "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 491
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onDestroy] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 494
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->destoryMusic()V

    .line 496
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 498
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 501
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 504
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 505
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 510
    :cond_2
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onDestroy()V

    .line 514
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onDestroy] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 612
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][onPause] + "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPause()V

    .line 615
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPause()V

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v1, v4}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    if-eqz v1, :cond_4

    .line 625
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    .line 627
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxView;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 628
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxView;->dispose()V

    .line 632
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 633
    .local v0, layout:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_3

    .line 635
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 637
    :cond_3
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    .line 640
    .end local v0           #layout:Landroid/widget/RelativeLayout;
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v1, :cond_5

    .line 642
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->release()V

    .line 643
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 646
    :cond_5
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v1, :cond_6

    .line 648
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->deInit()V

    .line 649
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->destroy()V

    .line 650
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    .line 653
    :cond_6
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 654
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    .line 655
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    if-eqz v1, :cond_7

    .line 658
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBackupIsPlayingFlag:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 659
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    .line 661
    :cond_7
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][onPause] - "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public onPauseTarget()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 826
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onPauseTarget] + "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 828
    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    .line 831
    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    iget-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    iget-wide v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    .line 832
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusion][onPauseTarget]timeLeftToNextPost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 838
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 844
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->pauseMusic()V

    .line 846
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v2, :cond_1

    .line 848
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onGoPause()V

    .line 851
    :cond_1
    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    .line 852
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    .line 853
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onPauseTarget] - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method public onPlayTarget()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 858
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 860
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->init(I)V

    .line 870
    :goto_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget]!mIsPlaying, could be back from paused state?"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v5, :cond_0

    .line 873
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget]not photo lock screen and not falling photo"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    .line 882
    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 883
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    .line 884
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onGoPlay()V

    .line 888
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    if-eqz v0, :cond_3

    .line 890
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    .line 891
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    .line 911
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->playMusic()V

    .line 912
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 913
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return v4

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    goto :goto_0

    .line 893
    :cond_3
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    if-eqz v0, :cond_4

    .line 895
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    .line 896
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    goto :goto_1

    .line 900
    :cond_4
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v5, :cond_5

    .line 902
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    goto :goto_1

    .line 906
    :cond_5
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusion][onPlayTarget]timeLeftToNextPost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 666
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume] + "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onResume()V

    .line 671
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume]isFinishing - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    if-nez v2, :cond_1

    .line 679
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->addFxView()V

    .line 682
    :cond_1
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    .line 684
    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-direct {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;-><init>()V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    .line 685
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v1

    .line 686
    .local v1, newTrasitionAnimationID:I
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    if-eq v1, v2, :cond_2

    .line 688
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    .line 689
    iput-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    .line 691
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->create(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;I)Z

    .line 694
    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    const-string v3, "decoder"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    .line 695
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    new-instance v3, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setDecodeCompleteCallback(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;)V

    .line 724
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 725
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->start()V

    .line 726
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->initHandler()V

    .line 728
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setDecoder(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;II)V

    .line 731
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_duration_setting"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    .line 735
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setPlaybackSpeed(I)V

    .line 736
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setIsPlaying(Z)V

    .line 738
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    .line 739
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 743
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v2, :cond_5

    .line 745
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    .line 747
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->init(I)V

    .line 754
    :goto_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v2, :cond_3

    .line 756
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2, v6}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 758
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    .line 759
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onPlayTarget()Z

    .line 772
    :goto_2
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume] - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 751
    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    goto :goto_1

    .line 764
    :cond_5
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v2, :cond_6

    .line 766
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2, v6}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 768
    :cond_6
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    .line 769
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    goto :goto_2
.end method

.method protected onStart()V
    .locals 11

    .prologue
    .line 366
    sget-boolean v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart] + "

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStart()V

    .line 368
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkInit()Z

    move-result v8

    if-nez v8, :cond_2

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->enableBroadcastReceiver()V

    .line 383
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkLaunchOtherSlideshow()I

    move-result v1

    .line 384
    .local v1, launchType:I
    const/4 v8, -0x3

    if-eq v8, v1, :cond_4

    .line 386
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-ltz v8, :cond_3

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 388
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-interface {v8, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 389
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_3

    .line 391
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SlideshowFusion][onStart]: Set CurPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Set EntPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #strFullPath:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSlideshowByType(IZ)V

    .line 403
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    goto :goto_0

    .line 408
    :cond_4
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 410
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_folder_picker_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 414
    const/4 v4, 0x0

    .line 415
    .local v4, strFolderType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 416
    .local v2, strBucketId:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 417
    .local v3, strFolderName:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 419
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 420
    :cond_5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 421
    :cond_6
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 422
    :cond_7
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 427
    :cond_8
    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    .line 429
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 431
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    .line 432
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    .line 434
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 435
    const v8, 0x7f0a0061

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    .line 439
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 440
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    .line 441
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_b

    .line 443
    :cond_9
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showErrorDialog()V

    goto/16 :goto_0

    .line 437
    :cond_a
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    .line 448
    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    .line 450
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    .line 460
    .end local v2           #strBucketId:Ljava/lang/String;
    .end local v3           #strFolderName:Ljava/lang/String;
    .end local v4           #strFolderType:Ljava/lang/String;
    .end local v5           #strFolderTypeKeyValue:Ljava/lang/String;
    .end local v7           #type:Ljava/util/StringTokenizer;
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    .line 461
    sget-boolean v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart] - "

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    .restart local v5       #strFolderTypeKeyValue:Ljava/lang/String;
    :cond_d
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart]: Get Folder from preference NG !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 467
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onStop] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    .line 471
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 484
    :cond_1
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStop()V

    .line 485
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onStop] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_2
    return-void
.end method

.method protected updatePrevNextButtons()V
    .locals 3

    .prologue
    .line 1046
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][updatePrevNextButtons] + "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-gtz v1, :cond_2

    .line 1077
    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    .line 1104
    :cond_3
    :goto_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][updatePrevNextButtons] - "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
