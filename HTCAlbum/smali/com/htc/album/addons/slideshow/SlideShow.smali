.class public Lcom/htc/album/addons/slideshow/SlideShow;
.super Lcom/htc/album/addons/slideshow/SlideshowBase;
.source "SlideShow.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

.field private mControlBarFileIndicator:Landroid/widget/TextView;

.field private mControlBarFolder:Landroid/widget/TextView;

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mNextImageRunnable:Ljava/lang/Runnable;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mTitle:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;-><init>()V

    .line 75
    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    .line 78
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTitle:Landroid/widget/RelativeLayout;

    .line 79
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFolder:Landroid/widget/TextView;

    .line 80
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFileIndicator:Landroid/widget/TextView;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    .line 426
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 896
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$2;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "aView"

    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 997
    .local v1, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 998
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 999
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1000
    sget-boolean v2, Lcom/htc/album/addons/slideshow/SlideShow;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ReleaseBitmap find bmp existed"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1005
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 4

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .line 1009
    .local v0, aView:Landroid/view/View;
    sget-boolean v1, Lcom/htc/album/addons/slideshow/SlideShow;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1011
    sget-boolean v1, Lcom/htc/album/addons/slideshow/SlideShow;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getNextView get valid reference"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_1
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #aView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    .line 1014
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    return-void
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    .line 705
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 408
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-nez v1, :cond_0

    .line 410
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 411
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 412
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_2

    .line 417
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v0

    .line 418
    .local v0, index:I
    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/4 v0, -0x1

    .line 419
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 424
    .end local v0           #index:I
    :goto_0
    return-void

    .line 423
    :cond_2
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideShow][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTransAnimChange()Z
    .locals 5

    .prologue
    .line 341
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_transition_setting"

    sget v4, Lcom/htc/album/addons/slideshow/SlideShow;->TRANSITION_DEFAULT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, transition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, nTransition:I
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 347
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideShow][retrieveSettings]: Stop music by Change Transition."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v2, 0x1

    .line 351
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadImage(ZZ)V
    .locals 6
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    .line 715
    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v3, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 720
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p0, v1, p2}, Lcom/htc/album/addons/slideshow/SlideShow;->seekNextPlayablePosition(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    .line 725
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th image."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    .line 727
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    .line 728
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideShow;->setTransitionAnim(ZZ)V

    .line 729
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updatePrevNextButtons()V

    .line 731
    const/4 v2, 0x0

    .line 734
    .local v2, mTempBmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 737
    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v3, :cond_2

    .line 738
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    .line 739
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    goto :goto_0
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 916
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 917
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 918
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 921
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 922
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 924
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    .line 925
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 928
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-gez v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 930
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 933
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 934
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 936
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    .line 937
    return-void
.end method

.method private post(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    .line 712
    :cond_0
    return-void
.end method

.method private setTransitionAnim(ZZ)V
    .locals 6
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const-wide/16 v4, 0x320

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, animIn:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 360
    .local v1, animOut:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2, p0, v3}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 363
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->isRandomized()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurDirection:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMoveNext:Z

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurTransitionAnimIndex:I

    if-ne v2, v3, :cond_0

    .line 404
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 374
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 376
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationInReversed()Landroid/view/animation/Animation;

    move-result-object v0

    .line 377
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOutReversed()Landroid/view/animation/Animation;

    move-result-object v1

    .line 389
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 393
    :cond_2
    if-eqz v1, :cond_3

    .line 395
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 398
    :cond_3
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 399
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 401
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurTransitionAnimIndex:I

    .line 402
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurDirection:Z

    .line 403
    iput-boolean p2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMoveNext:Z

    goto :goto_0

    .line 381
    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIn()Landroid/view/animation/Animation;

    move-result-object v0

    .line 382
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOut()Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1
.end method

.method private shouldRotate(II)Z
    .locals 5
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 879
    invoke-static {p0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v0

    .line 880
    .local v0, nScreenDisplay:[I
    aget v2, v0, v4

    .line 881
    .local v2, screenW:I
    aget v1, v0, v3

    .line 883
    .local v1, screenH:I
    if-le p1, p2, :cond_1

    .line 884
    if-ge v1, v2, :cond_2

    .line 893
    :cond_0
    :goto_0
    return v3

    .line 888
    :cond_1
    if-ge p1, p2, :cond_2

    .line 889
    if-gt v1, v2, :cond_0

    :cond_2
    move v3, v4

    .line 893
    goto :goto_0
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 29
    .parameter "image"

    .prologue
    .line 749
    if-nez p1, :cond_0

    .line 751
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]: image NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_0
    return-void

    .line 755
    :cond_0
    const/16 v19, 0x0

    .line 756
    .local v19, mTempBmp:Landroid/graphics/Bitmap;
    const/16 v23, 0x0

    .line 760
    .local v23, shouldRotate:Z
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v5

    .line 761
    .local v5, degreesRotated:I
    rem-int/lit16 v5, v5, 0x168

    .line 762
    if-gez v5, :cond_1

    .line 764
    add-int/lit16 v5, v5, 0x168

    .line 767
    :cond_1
    if-eqz v5, :cond_2

    const/16 v3, 0xb4

    if-ne v5, v3, :cond_3

    .line 769
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v18

    .line 770
    .local v18, h:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v28

    .line 778
    .local v28, w:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getWidth()I

    move-result v3

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getWidth()I

    move-result v27

    .line 779
    .local v27, switcherWidth:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getHeight()I

    move-result v3

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getHeight()I

    move-result v24

    .line 781
    .local v24, switcherHeight:I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    move/from16 v25, v27

    .line 782
    .local v25, switcherLongSideLength:I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    move/from16 v26, v27

    .line 784
    .local v26, switcherShortSideLength:I
    :goto_5
    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    move/from16 v6, v25

    .line 785
    .local v6, targetWidth:I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    move/from16 v7, v25

    .line 787
    .local v7, targetHeight:I
    :goto_7
    const/16 v9, 0x402

    .line 789
    .local v9, decodeFlag:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 791
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_a

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    move-object/from16 v4, p1

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v8, 0x10

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    move-result v3

    if-nez v3, :cond_b

    .line 795
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder DRM load from input stream NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 774
    .end local v6           #targetWidth:I
    .end local v7           #targetHeight:I
    .end local v9           #decodeFlag:I
    .end local v18           #h:I
    .end local v24           #switcherHeight:I
    .end local v25           #switcherLongSideLength:I
    .end local v26           #switcherShortSideLength:I
    .end local v27           #switcherWidth:I
    .end local v28           #w:I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v18

    .line 775
    .restart local v18       #h:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v28

    .restart local v28       #w:I
    goto :goto_1

    .line 778
    :cond_4
    sget v27, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LAND:I

    goto :goto_2

    .line 779
    .restart local v27       #switcherWidth:I
    :cond_5
    sget v24, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_PORT:I

    goto :goto_3

    .restart local v24       #switcherHeight:I
    :cond_6
    move/from16 v25, v24

    .line 781
    goto :goto_4

    .restart local v25       #switcherLongSideLength:I
    :cond_7
    move/from16 v26, v24

    .line 782
    goto :goto_5

    .restart local v26       #switcherShortSideLength:I
    :cond_8
    move/from16 v6, v26

    .line 784
    goto :goto_6

    .restart local v6       #targetWidth:I
    :cond_9
    move/from16 v7, v26

    .line 785
    goto :goto_7

    .line 801
    .restart local v7       #targetHeight:I
    .restart local v9       #decodeFlag:I
    :cond_a
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder isDrm() but not DrmMedia NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v3, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v3

    if-nez v3, :cond_b

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    .line 816
    if-eqz v19, :cond_f

    .line 818
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 819
    .local v21, resultWidth:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 820
    .local v20, resultHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->shouldRotate(II)Z

    move-result v23

    .line 832
    const-string v3, "video/3gpp-3d"

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "video/mp4-3d"

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 835
    :cond_c
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]: Shouldn\'t run to here, Slideshow not support Video !!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFittingOrientation:I

    if-nez v3, :cond_10

    if-eqz v23, :cond_10

    .line 845
    const/16 v22, 0x0

    .line 861
    .local v22, rotateImg:Landroid/graphics/Bitmap;
    const/16 v3, -0x5a

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-direct {v4, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 867
    const/16 v19, 0x0

    .line 868
    goto/16 :goto_0

    .line 806
    .end local v20           #resultHeight:I
    .end local v21           #resultWidth:I
    .end local v22           #rotateImg:Landroid/graphics/Bitmap;
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x10

    move v13, v5

    move v14, v6

    move v15, v7

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v3

    if-nez v3, :cond_b

    .line 808
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder load from file path NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    :cond_f
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]: Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 870
    .restart local v20       #resultHeight:I
    .restart local v21       #resultWidth:I
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-direct {v4, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public checkInit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 314
    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideShow][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    return v0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    if-nez v1, :cond_2

    .line 320
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideShow][checkInit]: mAnimiationManager NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    .line 326
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 332
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 5

    .prologue
    .line 1030
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_transition_setting"

    sget v4, Lcom/htc/album/addons/slideshow/SlideShow;->TRANSITION_DEFAULT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1032
    .local v0, nAnimIndex:I
    packed-switch v0, :pswitch_data_0

    .line 1039
    const/4 v0, -0x3

    .end local v0           #nAnimIndex:I
    :pswitch_0
    return v0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public launchSlideshowByType(IZ)V
    .locals 8
    .parameter "type"
    .parameter "isFromOnStart"

    .prologue
    const/4 v7, 0x0

    .line 1044
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideShow][launchSlideshowByType]: Fusion Slideshow -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v1, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1059
    :goto_0
    const-string v2, "slideshow_setting_mode"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string v2, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    const-string v2, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemfullpath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    const-string v2, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemIndex"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1063
    const-string v2, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewSingleImage"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1064
    const-string v2, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const-string v2, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_folder_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string v2, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_bucket_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const-string v2, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "photoIds"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1068
    if-eqz p2, :cond_0

    .line 1070
    const-string v2, "isInsideSlideshow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1072
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1073
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "collection_info"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "collection_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1074
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1076
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->startActivity(Landroid/content/Intent;)V

    .line 1077
    return-void

    .line 1050
    .end local v0           #extras:Landroid/os/Bundle;
    :pswitch_0
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1054
    :pswitch_1
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOWFUSION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 942
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 943
    .local v1, ret:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 945
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 946
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 947
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 950
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    return-object v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1081
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onBackPressed()V

    .line 1082
    return-void
.end method

.method protected onControlbarNext()V
    .locals 2

    .prologue
    .line 1089
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1090
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    .line 1092
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 1093
    return-void
.end method

.method protected onControlbarPrevious()V
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-lez v0, :cond_1

    .line 1098
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadPreviousImage()V

    .line 1100
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 1101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super/range {p0 .. p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/4 v11, 0x1

    invoke-static {p0, v11}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 93
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "onCreate"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v11, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v11, :cond_0

    .line 96
    iget-object v11, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 100
    :cond_0
    new-instance v11, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 101
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "slideshow_setting_mode"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    .line 103
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v11, p0, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 105
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 306
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkLaunchOtherSlideshow()I

    move-result v4

    .line 112
    .local v4, launchType:I
    const/4 v11, -0x3

    if-eq v11, v4, :cond_2

    .line 114
    const/4 v11, 0x0

    invoke-virtual {p0, v4, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshowByType(IZ)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "isInsideSlideshow"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 120
    .local v3, isInsideSlideshow:Z
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_ask_music_setting"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, askMusic:Z
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_music_enable_setting"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    .line 123
    if-nez v3, :cond_3

    .line 125
    iget-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-nez v11, :cond_b

    if-eqz v0, :cond_b

    .line 127
    const v11, 0x36870

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->showDialog(I)V

    .line 128
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 136
    :cond_3
    :goto_1
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideShow][onCreate]: Run 2D Slideshow !"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "key_bucket_id"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "viewSingleImage"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 145
    .local v10, viewSingleImage:Z
    const/4 v6, 0x1

    .line 147
    .local v6, sort:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "folder_type"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 148
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 151
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideShow][onCreate]: null folder detected... "

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v11, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 157
    :cond_4
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    if-nez v11, :cond_5

    .line 158
    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 164
    :cond_5
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v12, "album_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 166
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "key_folder_name"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 198
    :cond_6
    :goto_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v11, p0, v12}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 200
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v11, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "photoIds"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 207
    .local v5, nPhotoIds:[I
    if-eqz v5, :cond_10

    .line 209
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: from photo ids: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 231
    .end local v5           #nPhotoIds:[I
    :cond_7
    :goto_3
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-gtz v11, :cond_12

    .line 234
    :cond_8
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v12, "dock_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 236
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowSettingManager][onCreate]: no pref folder, set folder to all photo"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 240
    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 241
    const v11, 0x7f0a0062

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 244
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_folder_picker_setting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v11, v12}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 249
    :cond_9
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-gtz v11, :cond_12

    .line 251
    :cond_a
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowSettingManager][onCreate]: empty list"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    .line 132
    .end local v6           #sort:I
    .end local v10           #viewSingleImage:Z
    :cond_b
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_ask_music_setting"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 168
    .restart local v6       #sort:I
    .restart local v10       #viewSingleImage:Z
    :cond_c
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v12, "dock_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 170
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_folder_picker_setting"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, strFolderType:Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 175
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 177
    .local v9, type:Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 178
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 179
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 180
    :cond_d
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 181
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 182
    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 183
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    .line 188
    .end local v9           #type:Ljava/util/StringTokenizer;
    :cond_f
    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 189
    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 190
    const v11, 0x7f0a0062

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 193
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_folder_picker_setting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 214
    .end local v7           #strFolderType:Ljava/lang/String;
    .restart local v5       #nPhotoIds:[I
    :cond_10
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 215
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-static {v2, v11, v12, v13, v14}, Lcom/htc/album/helper/CollectionMaker;->makeSlideshowCollection(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    .line 216
    .local v1, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v1, :cond_11

    .line 218
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 224
    :goto_5
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: from bucket id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 222
    :cond_11
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v11, v12}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_5

    .line 258
    .end local v1           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #nPhotoIds:[I
    :cond_12
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "itemIndex"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 259
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "slideshow_back_index"

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    .line 260
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: Slideshow Get Index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Get Ent Pos: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-eqz v11, :cond_13

    .line 263
    const/4 v8, 0x0

    .line 264
    .local v8, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "itemfullpath"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v11, v8, v12}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v11

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 268
    .end local v8           #strFullPath:Ljava/lang/String;
    :cond_13
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-ltz v11, :cond_14

    .line 272
    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 274
    :cond_14
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowSettingManager][onCreate]: Slideshow reset mCurrentPosition: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 279
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    .line 280
    const v11, 0x7f03003e

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->setContentView(I)V

    .line 281
    iget-object v11, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v11, :cond_15

    .line 283
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initControlBarManager()V

    .line 285
    :cond_15
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initLayout()V

    .line 286
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    .line 288
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestFooterBar()Z

    move-result v11

    if-nez v11, :cond_16

    .line 290
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->attachMediaController()V

    .line 294
    :cond_16
    new-instance v11, Landroid/media/MediaPlayer;

    invoke-direct {v11}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 295
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v11, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 296
    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    .line 300
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 305
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 632
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onDestory"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 635
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->destoryMusic()V

    .line 637
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 638
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz v2, :cond_2

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, aView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 643
    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    .line 640
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->removeAllViews()V

    .line 647
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 650
    .end local v0           #aView:Landroid/view/View;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_3

    .line 651
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 652
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 653
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 655
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 656
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    .line 657
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onDestroy()V

    .line 658
    return-void
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 954
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 1019
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 690
    packed-switch p1, :pswitch_data_0

    .line 699
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 696
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuPress()V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPause()V

    .line 488
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    .line 500
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    .line 501
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    if-eqz v0, :cond_1

    .line 503
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->destroyDrawingCache()V

    .line 507
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 959
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 960
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 963
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 966
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 967
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 972
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->pauseMusic()V

    .line 974
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 975
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 976
    return-void
.end method

.method public onPlayTarget()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 979
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 980
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 982
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 983
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    .line 985
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->playMusic()V

    .line 987
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 988
    return v3
.end method

.method public onPlaybackMode()V
    .locals 0

    .prologue
    .line 993
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onResume()V

    .line 442
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 446
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    .line 450
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->isTransAnimChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 458
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPlayTarget()Z

    .line 459
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    .line 479
    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_4

    .line 465
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 467
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 991
    return-void
.end method

.method protected onStart()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 535
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStart()V

    .line 536
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onStart"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v10

    if-nez v10, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    .line 544
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_orientation_setting"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, orientation:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 546
    .local v2, mOrentation:I
    if-nez v2, :cond_3

    .line 547
    invoke-virtual {p0, v13}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    .line 552
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkLaunchOtherSlideshow()I

    move-result v1

    .line 553
    .local v1, launchType:I
    const/4 v10, -0x3

    if-eq v10, v1, :cond_4

    .line 555
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-ltz v10, :cond_2

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 557
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-interface {v10, v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 558
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "slideshow_back_index"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemIndex"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    .line 565
    .local v8, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemfullpath"

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SlideShow][onStart]: Set CurPos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Set EntPos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v8           #strFullPath:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {p0, v1, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshowByType(IZ)V

    .line 572
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    goto/16 :goto_0

    .line 549
    .end local v1           #launchType:I
    :cond_3
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_1

    .line 577
    .restart local v1       #launchType:I
    :cond_4
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "dock_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 579
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 581
    .local v7, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 583
    const/4 v6, 0x0

    .line 584
    .local v6, strFolderType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 585
    .local v4, strBucketId:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 586
    .local v5, strFolderName:Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 588
    .local v9, type:Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 589
    :cond_5
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 590
    :cond_6
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 591
    :cond_7
    :goto_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 592
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 594
    :cond_8
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 596
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 598
    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 599
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 601
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v11, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 602
    const v10, 0x7f0a0061

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 606
    :goto_3
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v10, v11}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 607
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 608
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-gtz v10, :cond_b

    .line 610
    :cond_9
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideShow][onStart]: mImageList is Null or Zero !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    .line 604
    :cond_a
    iput-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_3

    .line 615
    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 617
    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v10, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    goto/16 :goto_0

    .line 625
    .end local v4           #strBucketId:Ljava/lang/String;
    .end local v5           #strFolderName:Ljava/lang/String;
    .end local v6           #strFolderType:Ljava/lang/String;
    .end local v9           #type:Ljava/util/StringTokenizer;
    :cond_c
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideShow][onStart]: Get Folder from preference NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 514
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 517
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 520
    :cond_0
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_orientation_setting"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, orientation:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 525
    .local v0, mOrentation:I
    if-nez v0, :cond_1

    .line 526
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    .line 530
    :goto_0
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStop()V

    .line 531
    return-void

    .line 528
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1025
    return-void
.end method
