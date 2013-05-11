.class public Lcom/htc/album/addons/slideshow/Slideshow3D;
.super Lcom/htc/album/addons/slideshow/SlideshowBase;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> S3D: "

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

.field private mBundleUsedWhenOnCreate:Landroid/os/Bundle;

.field private mNextImageRunnable:Ljava/lang/Runnable;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

.field private mSlideshowViewInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;-><init>()V

    .line 50
    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    .line 53
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 55
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 420
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$1;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 751
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$2;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "aView"

    .prologue
    .line 866
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 867
    .local v1, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 868
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 869
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 870
    sget-boolean v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ReleaseBitmap find bmp existed"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 875
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 0

    .prologue
    .line 880
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    return-void
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    .line 673
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_1

    .line 358
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 359
    .local v0, index:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

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

    .line 361
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 365
    .end local v0           #index:I
    :goto_0
    return-void

    .line 364
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadImage(ZZ)V
    .locals 5
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    .line 683
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-interface {v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 687
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0, v0, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->seekNextPlayablePosition(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    .line 692
    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "th image."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 694
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setTransitionAnim(ZZ)V

    .line 695
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    .line 697
    const/4 v1, 0x0

    .line 724
    .local v1, mTempBmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 771
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 772
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 775
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 776
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 778
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 779
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 782
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-nez v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 789
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 792
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 793
    return-void

    .line 786
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    goto :goto_0
.end method

.method private post(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    .line 680
    :cond_0
    return-void
.end method

.method public static searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I
    .locals 7
    .parameter "nCurIndex"
    .parameter "strFullPath"
    .parameter "imageList"

    .prologue
    const/4 v4, 0x0

    .line 288
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 290
    :cond_0
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: init para NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 315
    :cond_1
    :goto_0
    return v1

    .line 294
    :cond_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-lt p0, v5, :cond_3

    .line 295
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    add-int/lit8 p0, v5, -0x1

    .line 300
    :cond_3
    move v1, p0

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 302
    :try_start_0
    invoke-interface {p2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 303
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, strPath:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 300
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 309
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #strPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 310
    .local v0, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: searching NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 311
    goto :goto_0

    .line 314
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: no found indicate index, set index 0 !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 315
    goto :goto_0
.end method

.method private setTransitionAnim(ZZ)V
    .locals 0
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    .line 352
    return-void
.end method

.method private shouldRotate(II)Z
    .locals 5
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 734
    invoke-static {p0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v0

    .line 735
    .local v0, nScreenDisplay:[I
    aget v2, v0, v4

    .line 736
    .local v2, screenW:I
    aget v1, v0, v3

    .line 738
    .local v1, screenH:I
    if-le p1, p2, :cond_1

    .line 739
    if-ge v1, v2, :cond_2

    .line 748
    :cond_0
    :goto_0
    return v3

    .line 743
    :cond_1
    if-ge p1, p2, :cond_2

    .line 744
    if-gt v1, v2, :cond_0

    :cond_2
    move v3, v4

    .line 748
    goto :goto_0
.end method

.method private updateTitlebar(II)V
    .locals 2
    .parameter "index"
    .parameter "total"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 373
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 375
    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 376
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 384
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mNoUpdateControlBar:Z

    .line 388
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->invalidateOptionsMenu()V

    .line 394
    :goto_1
    return-void

    .line 381
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][updateTitlebar]: mControlBarMgr is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][updateTitlebar] mActionBar is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 728
    return-void
.end method

.method public checkInit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 324
    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    return v0

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-nez v1, :cond_2

    .line 330
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mSlideShowView NG 0 !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    .line 336
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 342
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 5

    .prologue
    .line 895
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_transition_setting"

    sget v4, Lcom/htc/album/addons/slideshow/Slideshow3D;->TRANSITION_DEFAULT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 897
    .local v0, nAnimIndex:I
    packed-switch v0, :pswitch_data_0

    .line 907
    :pswitch_0
    const/4 v0, -0x3

    .end local v0           #nAnimIndex:I
    :pswitch_1
    return v0

    .line 897
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
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deinitControlBarManager()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 991
    :cond_0
    return-void
.end method

.method public launchSlideshowByType(IZ)V
    .locals 8
    .parameter "type"
    .parameter "isFromOnStart"

    .prologue
    const/4 v7, 0x0

    .line 912
    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][Slideshow3D][launchSlideshowByType]: Fusion Slideshow -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 915
    .local v1, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 930
    :goto_0
    :pswitch_0
    const-string v2, "slideshow_setting_mode"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const-string v2, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    const-string v2, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemfullpath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string v2, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemIndex"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v2, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewSingleImage"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    const-string v2, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string v2, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_folder_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string v2, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_bucket_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v2, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "photoIds"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 939
    if-eqz p2, :cond_0

    .line 941
    const-string v2, "isInsideSlideshow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 943
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 944
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "collection_info"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "collection_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 945
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 947
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    .line 948
    return-void

    .line 921
    .end local v0           #extras:Landroid/os/Bundle;
    :pswitch_1
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 925
    :pswitch_2
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOWFUSION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 915
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
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 798
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 799
    .local v1, ret:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 801
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 802
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 803
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 806
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    return-object v1
.end method

.method protected onControlbarNext()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doNextImage()Z

    .line 996
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 997
    return-void
.end method

.method protected onControlbarPrevious()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPreviousImage()Z

    .line 1002
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1003
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 62
    const/4 v10, 0x1

    invoke-static {p0, v10}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 63
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onCreate"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v10, :cond_0

    .line 66
    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 70
    :cond_0
    new-instance v10, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "slideshow_setting_mode"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    .line 73
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v10, p0, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 75
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 284
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v4

    .line 82
    .local v4, launchType:I
    const/4 v10, -0x3

    if-eq v10, v4, :cond_2

    .line 84
    const/4 v10, 0x0

    invoke-virtual {p0, v4, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "isInsideSlideshow"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 90
    .local v3, isInsideSlideshow:Z
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_ask_music_setting"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    .local v0, askMusic:Z
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_enable_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    .line 93
    if-nez v3, :cond_3

    .line 95
    iget-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-nez v10, :cond_b

    if-eqz v0, :cond_b

    .line 97
    const v10, 0x36870

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showDialog(I)V

    .line 98
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 106
    :cond_3
    :goto_1
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][Slideshow3D][onCreate]: Run 3D Slideshow !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "folder_type"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 113
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 115
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "mFolderType = null, change folder type to com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v10, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_bucket_id"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 120
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 121
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 125
    :cond_5
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "album_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 127
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_folder_name"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 158
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10, p0, v11}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 160
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v10, :cond_7

    .line 166
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "photoIds"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 167
    .local v5, nPhotoIds:[I
    if-eqz v5, :cond_10

    .line 169
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SlideShow3D][onCreate]: from photo ids: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 191
    .end local v5           #nPhotoIds:[I
    :cond_7
    :goto_3
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-gtz v10, :cond_12

    .line 194
    :cond_8
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "dock_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 196
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideshowSettingManager][onCreate]: Preference Folder is not exist, Set folder to Default folder !! (Dock Mode)"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 200
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 201
    const v10, 0x7f0a0062

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 204
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v10, v11}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 209
    :cond_9
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-gtz v10, :cond_12

    .line 211
    :cond_a
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideshowSettingManager][onCreate]: mImageList is Null or Zero !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 102
    :cond_b
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_ask_music_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 129
    :cond_c
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "dock_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 131
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, strFolderType:Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 136
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 138
    .local v9, type:Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 139
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 140
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 141
    :cond_d
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 142
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 143
    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    .line 149
    .end local v9           #type:Ljava/util/StringTokenizer;
    :cond_f
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 150
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 151
    const v10, 0x7f0a0062

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 154
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 174
    .end local v7           #strFolderType:Ljava/lang/String;
    .restart local v5       #nPhotoIds:[I
    :cond_10
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 175
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-static {v2, v10, v11, v12, v13}, Lcom/htc/album/helper/CollectionMaker;->makeSlideshowCollection(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    .line 176
    .local v1, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v1, :cond_11

    .line 178
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 184
    :goto_5
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SlideShow3D][onCreate]: from bucket id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 182
    :cond_11
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v10, v11}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_5

    .line 217
    .end local v1           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #nPhotoIds:[I
    :cond_12
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 218
    const v10, 0x7f03003e

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setContentView(I)V

    .line 221
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemIndex"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 222
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "slideshow_back_index"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    .line 223
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Get Index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Get Ent Pos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-eqz v10, :cond_13

    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemfullpath"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v10, v8, v11}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v10

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 230
    .end local v8           #strFullPath:Ljava/lang/String;
    :cond_13
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_14

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-gez v10, :cond_15

    :cond_14
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 234
    :cond_15
    new-instance v10, Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-direct {v10, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 235
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setPlayIndex(I)V

    .line 237
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    new-instance v11, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;

    invoke-direct {v11}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;-><init>()V

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideAnimatorsFactory(Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;)V

    .line 238
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 239
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v10, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->setEventListener(Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V

    .line 240
    iget-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v10, :cond_16

    .line 242
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v10, p1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 243
    iget-boolean v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v10, :cond_19

    .line 245
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onCreate() NG - SlideshowView create"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_6
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v10, Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v11, v10}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)Z

    .line 256
    :cond_16
    const v10, 0x7f09003c

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 257
    .local v6, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v10, :cond_17

    .line 262
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initControlBarManager()V

    .line 264
    :cond_17
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initLayout()V

    .line 265
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    .line 267
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v10

    if-nez v10, :cond_18

    .line 269
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->attachMediaController()V

    .line 273
    :cond_18
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 274
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 275
    const/4 v10, 0x1

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    .line 278
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 283
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    goto/16 :goto_0

    .line 249
    .end local v6           #rootLayout:Landroid/widget/RelativeLayout;
    :cond_19
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    goto :goto_6
.end method

.method public onCurIndexChange(II)V
    .locals 2
    .parameter "nIndex"
    .parameter "ntotal"

    .prologue
    .line 953
    if-nez p2, :cond_0

    .line 955
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowSettingManager][onCurIndexChange]: no image !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    .line 962
    :goto_0
    return-void

    .line 960
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    .line 961
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 612
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 615
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->destoryMusic()V

    .line 617
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 619
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 621
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->destroy()V

    .line 622
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 627
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 628
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 630
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 631
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onDestroy()V

    .line 632
    return-void
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 885
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_0

    .line 667
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 664
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_0

    .line 658
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
    .line 812
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 467
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPause()V

    .line 470
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 480
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    .line 483
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 492
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    if-eqz v0, :cond_3

    .line 494
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    .line 498
    :cond_3
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 815
    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPauseTarget]: onPauseTarget()"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 817
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 821
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 822
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 823
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 826
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 828
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPause()Z

    .line 831
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->pauseMusic()V

    .line 833
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 834
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 835
    return-void
.end method

.method public onPlayTarget()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 838
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPlayTarget]: onPlayTarget()"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    .line 842
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_0

    .line 844
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate() NG - SlideshowView create"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)Z

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    .line 849
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 850
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 852
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPlay()Z

    .line 854
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 855
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    .line 856
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

    .line 857
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 858
    return v3
.end method

.method public onPlaybackMode()V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public onRepeatPause(I)V
    .locals 2
    .parameter "nDelay"

    .prologue
    .line 974
    move v0, p1

    .line 976
    .local v0, nDelayTime:I
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$3;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D$3;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;I)V

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 983
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onResume()V

    .line 435
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 438
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    .line 441
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    .line 461
    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    .line 457
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 861
    return-void
.end method

.method protected onStart()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 518
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStart()V

    .line 519
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onStart"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v8

    if-nez v8, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    .line 527
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v1

    .line 528
    .local v1, launchType:I
    const/4 v8, -0x3

    if-eq v8, v1, :cond_3

    .line 530
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 532
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-interface {v8, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 533
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Slideshow3D][onStart]: Set CurPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Set EntPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #strFullPath:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    .line 547
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    .line 552
    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 554
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_folder_picker_setting"

    invoke-virtual {v8, v9, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 558
    const/4 v4, 0x0

    .line 559
    .local v4, strFolderType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 560
    .local v2, strBucketId:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 561
    .local v3, strFolderName:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 563
    .local v7, type:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 564
    :cond_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 565
    :cond_5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 566
    :cond_6
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 567
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

    .line 569
    :cond_7
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 571
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 573
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 574
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    .line 576
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 577
    const v8, 0x7f0a0061

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 581
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_8

    .line 582
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 583
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 584
    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 587
    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 589
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_b

    .line 591
    :cond_9
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onStart]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 579
    :cond_a
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    .line 596
    :cond_b
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 597
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v8, Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v9, v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)Z

    .line 600
    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-nez v8, :cond_c

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 602
    :cond_c
    invoke-direct {p0, v10, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    goto/16 :goto_0
.end method

.method public onStatusChange(I)V
    .locals 2
    .parameter "nStatus"

    .prologue
    .line 966
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onStatusChange]:"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne p1, v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 970
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStop()V

    .line 514
    return-void
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 890
    return-void
.end method
