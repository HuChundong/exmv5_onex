.class public Lcom/htc/sunny2/slideshow/SlideshowController;
.super Ljava/lang/Object;
.source "SlideshowController.java"

# interfaces
.implements Lcom/htc/sunnyCore/common/Timer$Listener;
.implements Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
.implements Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;
.implements Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> SControl "

.field private static DECODE_CHECK_MAX_COUNT:I

.field private static final LTAG:Ljava/lang/String;

.field private static SLIDESHOW_SPEED_FAST:I

.field private static SLIDESHOW_SPEED_MID:I

.field private static SLIDESHOW_SPEED_SLOW:I

.field public static STATUS_NEXT:I

.field public static STATUS_PAUSE:I

.field public static STATUS_PLAY:I

.field public static STATUS_PREVIOUS:I

.field public static STATUS_STOP:I

.field private static TIMER_ID_DELAY_SLIDE:I

.field private static TIMER_ID_NEXT_SLIDE:I


# instance fields
.field private currentItemIndex:I

.field private imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

.field private inited:Z

.field private mBrokenImageSkipPlay:Z

.field private mContext:Landroid/content/Context;

.field private mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

.field private mCurAnimatorRunningTime:J

.field private mCurrentAnimationIndex:I

.field private mCurrentPhotoHeight:I

.field private mCurrentPhotoWidth:I

.field private mCurrentProcessIndex:I

.field private mDecodeCheckCount:I

.field private mDefaultDalayTime:I

.field private mFaceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/slideshow/KenBums$Face;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

.field private mIsFaceInforRdy:Z

.field private mIsFullDecodeRdy:Z

.field private mPauseInNext:Z

.field private mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

.field private mPreviousPlayTime:J

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

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

.field private mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

.field private mStatus:I

.field private mStopInThisSlide:Z

.field mTimeEnd:J

.field mTimeStartDecode:J

.field mTimeStartFace:J

.field private mediaList:Lcom/htc/sunnyCore/IMediaList;

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultTexture:I

.field private slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

.field private slideDuration:I

.field private slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

.field private transitionDuration:I

.field private viewportHeight:I

.field private viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 51
    const-class v0, Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    .line 55
    sput v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_NEXT_SLIDE:I

    .line 56
    sput v2, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_STOP:I

    .line 59
    sput v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PLAY:I

    .line 60
    sput v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    .line 61
    const/4 v0, 0x3

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    .line 62
    const/4 v0, 0x4

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    .line 64
    const/16 v0, 0x1f40

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_SLOW:I

    .line 65
    const/16 v0, 0x1770

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_MID:I

    .line 66
    const/16 v0, 0xfa0

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_FAST:I

    .line 68
    const/16 v0, 0x14

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->DECODE_CHECK_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    .line 47
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    .line 72
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 75
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 76
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    .line 77
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    .line 78
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    .line 79
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    .line 81
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    .line 82
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 83
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    .line 86
    const/16 v0, 0x1388

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    .line 87
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    .line 88
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDefaultDalayTime:I

    .line 90
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    .line 91
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    .line 96
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    .line 98
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 100
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    .line 101
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    .line 102
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    .line 105
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 106
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_STOP:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 108
    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    .line 109
    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    .line 110
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    .line 111
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    .line 120
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    .line 121
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    .line 122
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    .line 123
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunnyCore/IMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/slideshow/SlideshowController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    return v0
.end method

.method private resetPlayImageInfo(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    const/4 v1, 0x0

    .line 542
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    .line 543
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    .line 544
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_0

    .line 546
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 547
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    .line 550
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    .line 552
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    .line 555
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurIndex()V

    .line 558
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "NextSlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 561
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "DelaySlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 563
    :cond_1
    return-void
.end method


# virtual methods
.method public buildShuffleList()V
    .locals 3

    .prologue
    .line 1099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    .line 1100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1103
    return-void
.end method

.method public deinit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    .line 181
    :cond_0
    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    .line 183
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    if-eqz v1, :cond_1

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->endThread()V

    .line 188
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    .line 197
    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 198
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 199
    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    .line 200
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    .line 201
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 202
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    .line 203
    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    .line 204
    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    .line 206
    iput-boolean v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    .line 207
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "deinit()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SlideshowControl][deinit] mFaceDetectThread Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doFaceDetect(ILandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "nIndex"
    .parameter "bmpPhoto"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    if-nez v0, :cond_0

    .line 800
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl mFaceDetectThread is null !!"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][doFaceDetect]: Start FaceDetect!! Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Photo W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartFace:J

    .line 807
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->addTask(ILandroid/graphics/Bitmap;)Z

    .line 808
    return-void
.end method

.method public doNextImage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 861
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    if-ne v1, v2, :cond_1

    .line 863
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl [HTCAlbum][SlideshowControl][doNextImage]: skip action. Previous action not done."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x0

    .line 894
    :goto_0
    return v0

    .line 867
    :cond_1
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [SlideshowControl]: doNextImage()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne v1, v2, :cond_2

    .line 880
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    .line 883
    :cond_2
    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 885
    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-nez v1, :cond_3

    .line 887
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestSkipBitampDecode()V

    .line 888
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    .line 889
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    .line 892
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->immediatePlay(I)Z

    goto :goto_0
.end method

.method public doPause()Z
    .locals 6

    .prologue
    .line 935
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-nez v2, :cond_0

    .line 937
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowControl]: doPause() mCurAnimator is Null !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const/4 v2, 0x0

    .line 961
    :goto_0
    return v2

    .line 941
    :cond_0
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [SlideshowControl]: doPause()"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    .line 946
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    .line 952
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v3, "NextSlideTimer"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 953
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v3, "DelaySlideTimer"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 956
    .local v0, nNowtime:J
    iget-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    .line 958
    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v3, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/lit16 v4, v4, 0x7d0

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    .line 960
    :cond_2
    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 961
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public doPlay()Z
    .locals 5

    .prologue
    .line 966
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-nez v1, :cond_0

    .line 968
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowControl]: doPlay() mCurAnimator is Null !"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const/4 v1, 0x0

    .line 988
    :goto_0
    return v1

    .line 972
    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [SlideshowControl]: doPlay()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne v1, v2, :cond_1

    .line 976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    .line 977
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 978
    .local v0, nDelaytime:I
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupDelaySlideTimer(I)V

    .line 981
    .end local v0           #nDelaytime:I
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->resumeAnimator()V

    .line 982
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v1

    if-eqz v1, :cond_2

    .line 985
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->resumeAnimator()V

    .line 987
    :cond_2
    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PLAY:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 988
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public doPreviousImage()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 900
    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v3, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v3, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    if-ne v2, v3, :cond_1

    .line 902
    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][doPreviousImage]: skip action. Previous action not done."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :goto_0
    return v0

    .line 906
    :cond_1
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [SlideshowControl]: doPreviousImage()"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayPrevImage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 911
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][doPreviousImage]:NG !"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne v0, v2, :cond_3

    .line 916
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    .line 918
    :cond_3
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 920
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-nez v0, :cond_4

    .line 922
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestSkipBitampDecode()V

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    .line 924
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    .line 928
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->immediatePlay(I)Z

    move v0, v1

    .line 930
    goto :goto_0
.end method

.method public doStop()Z
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_0

    .line 995
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowControl]: doStop() renderThread is Null !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return v0

    .line 999
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl [SlideshowControl]: doStop()"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_STOP:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 1002
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1081
    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1083
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][setSlideshowControl][getCurrentIndex]: index out of range, return index 0."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :goto_0
    return v1

    .line 1087
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_shuffle_setting"

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1089
    .local v0, bShuffle:Z
    if-eqz v0, :cond_1

    .line 1090
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1092
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    goto :goto_0
.end method

.method public immediatePlay(I)Z
    .locals 4
    .parameter "itemIndex"

    .prologue
    const/4 v0, 0x0

    .line 331
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "immediatePlay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    .line 335
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "immediatePlay NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    return v0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 341
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    .line 343
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl immediatePlay() - Skip this action, Index:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not in Total index !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Lcom/htc/sunnyCore/RenderThread;Lcom/htc/sunnyCore/IMediaList;ILcom/htc/sunny2/slideshow/ImagePreparator;Lcom/htc/sunny2/slideshow/SlideshowScene;Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;II)Z
    .locals 3
    .parameter "renderThread"
    .parameter "mediaList"
    .parameter "beginItemIndex"
    .parameter "imagePreparator"
    .parameter "slideshowScene"
    .parameter "slideAnimatorsFactory"
    .parameter "viewportWidth"
    .parameter "viewportHeight"

    .prologue
    const/4 v0, 0x1

    .line 133
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "init()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-lez p7, :cond_0

    if-gtz p8, :cond_1

    .line 137
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "init() NG - null parameters"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 142
    iput-object p2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 143
    iput p3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    .line 145
    iput-object p4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    .line 146
    iput-object p5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 147
    iput-object p6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    .line 149
    iput p7, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    .line 150
    iput p8, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    .line 152
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->buildShuffleList()V

    .line 155
    new-instance v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    const-string v2, "FaceDetectionThread"

    invoke-direct {v1, v2, p0}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;-><init>(Ljava/lang/String;Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;)V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    .line 156
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->beginThread()V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayImage(I)Z

    .line 162
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestSkipBitampDecode()V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    .line 164
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    .line 165
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->immediatePlay(I)Z

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    .line 168
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    .line 170
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    goto :goto_0
.end method

.method public isImageInRange(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 695
    const/4 v0, 0x1

    .line 696
    .local v0, isPlay:Z
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 698
    :cond_0
    const/4 v0, 0x0

    .line 699
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl  [SlideshowController][isImageInRange]: index is not in Avariable Range !"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_1
    return v0
.end method

.method public isImagePlayable(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 682
    move v2, p1

    .line 683
    .local v2, nIndex:I
    const/4 v0, 0x1

    .line 685
    .local v0, isPlay:Z
    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 687
    .local v1, mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x0

    .line 690
    :cond_1
    return v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    return v0
.end method

.method public onAnimatorStatusChange(Lcom/htc/sunny2/slideshow/SlideAnimator;I)V
    .locals 2
    .parameter "animator"
    .parameter "nStatus"

    .prologue
    .line 1111
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl [SlideshowControl][onAnimatorStatusChange]: doPause()"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPause()Z

    .line 1115
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurStatus(I)V

    .line 1116
    return-void
.end method

.method public onBitmapDecodeFailed(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 277
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][onBitmapDecodeFailed]: Bitmap Decode Fail index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    .line 281
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    .line 283
    return-void
.end method

.method public onBitmapDecodeReady(I)V
    .locals 7
    .parameter "itemIndex"

    .prologue
    const/4 v6, 0x0

    .line 215
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBitmapDecodeReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    iput-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->takeOutResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    .line 225
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    if-gtz v0, :cond_2

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 228
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    .line 229
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [onBitmapDecodeReady]: Get Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][Time]: onBitmapDecodeReady Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Photo ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    .line 235
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 237
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "onBitmapDecodeReady NG - resultBitmap is null !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doFaceDetect(ILandroid/graphics/Bitmap;)V

    .line 243
    iput-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onFaceDetected(ILandroid/graphics/Bitmap;I[Landroid/media/FaceDetector$Face;)V
    .locals 15
    .parameter "nIndex"
    .parameter "bmpPhoto"
    .parameter "nFaceCount"
    .parameter "arrayFaces"

    .prologue
    .line 813
    if-nez p2, :cond_0

    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v10, "bmpPhoto is null !!"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_0
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl [HTCAlbum][SlideshowControl][Time]: onFaceDetected Time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartFace:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Detect Face: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Photo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    .line 821
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl Index: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : FaceDetec infor is Ready !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl FaceDetec  Size - W: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , H: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl Photo Full Size - W: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , H: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    .line 827
    aget-object v3, p4, v4

    .line 828
    .local v3, getFace:Landroid/media/FaceDetector$Face;
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .line 829
    .local v8, point:Landroid/graphics/PointF;
    invoke-virtual {v3, v8}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 833
    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v1, v9, v10

    .line 834
    .local v1, fTranslateRating:F
    iget v9, v8, Landroid/graphics/PointF;->x:F

    mul-float v6, v9, v1

    .line 835
    .local v6, newPointX:F
    iget v9, v8, Landroid/graphics/PointF;->y:F

    mul-float v7, v9, v1

    .line 836
    .local v7, newPointY:F
    invoke-virtual {v3}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v9

    mul-float v5, v9, v1

    .line 840
    .local v5, newEyeDistance:F
    new-instance v2, Lcom/htc/album/addons/slideshow/KenBums$Face;

    invoke-direct {v2, v6, v7, v5}, Lcom/htc/album/addons/slideshow/KenBums$Face;-><init>(FFF)V

    .line 842
    .local v2, faceOri:Lcom/htc/album/addons/slideshow/KenBums$Face;
    iget-object v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 845
    .end local v1           #fTranslateRating:F
    .end local v2           #faceOri:Lcom/htc/album/addons/slideshow/KenBums$Face;
    .end local v3           #getFace:Landroid/media/FaceDetector$Face;
    .end local v5           #newEyeDistance:F
    .end local v6           #newPointX:F
    .end local v7           #newPointY:F
    .end local v8           #point:Landroid/graphics/PointF;
    :cond_1
    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    move/from16 v0, p1

    if-ne v9, v0, :cond_2

    .line 847
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    .line 848
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: onFaceDetected !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 856
    return-void

    .line 851
    :cond_2
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v10, "KA>>> SControl  !!!!! mCurrentProcessIndex != nIndex !!!!!"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTextureDecodeFailed(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 287
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][onTextureDecodeFailed]: Texture DecodeFailed Fail index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    .line 291
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    .line 293
    return-void
.end method

.method public onTextureDecodeReady(I)V
    .locals 6
    .parameter "itemIndex"

    .prologue
    .line 248
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][Time]: onTextureDecodeReady Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextureDecodeRead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getResultTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    .line 256
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    if-gtz v0, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 259
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    .line 260
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [onTextureDecodeReady]: Get Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    if-ne v0, p1, :cond_2

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    .line 267
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: onTextureDecodeReady !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_2
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [onTextureDecodeReady]: skip thid rdy ! CurIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] != Ready index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTimerCancelledIRT(ILcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "timerId"
    .parameter "cancelReason"

    .prologue
    .line 324
    return-void
.end method

.method public onTimerIRT(I)V
    .locals 2
    .parameter "timerId"

    .prologue
    .line 300
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_NEXT_SLIDE:I

    if-ne p1, v0, :cond_1

    .line 302
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "TIMER_NEXT_SLIDE"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    if-ne p1, v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    goto :goto_0
.end method

.method public playSlide(I)Z
    .locals 13
    .parameter "itemIndex"

    .prologue
    .line 355
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: Play Photo - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] begin."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 360
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: skip this action, Request Index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] != CurIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    if-nez v0, :cond_15

    .line 371
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    if-gtz v0, :cond_2

    .line 373
    :cond_1
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: skip Index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] because W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", H: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    .line 375
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupDelaySlideTimer()V

    .line 376
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v11

    .line 381
    .local v11, nRotate:I
    const/16 v0, 0x5a

    if-eq v11, v0, :cond_3

    const/16 v0, 0x10e

    if-ne v11, v0, :cond_4

    .line 383
    :cond_3
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: switch Width and Height Index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] getMediaDegreesRotated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget v12, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 385
    .local v12, nTempWidth:I
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 386
    iput v12, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    .line 391
    .end local v12           #nTempWidth:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    .line 392
    .local v9, mediaData:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v9}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v10

    .line 393
    .local v10, mimeType:Ljava/lang/String;
    const-string v0, "image/jps"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 405
    :cond_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v5, bundle:Landroid/os/Bundle;
    const-string v0, "KenMums_face_array"

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    const-string v0, "kenBums_photo_width"

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    const-string v0, "kenBums_photo_height"

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;->createSlideAnimator(IIIILandroid/os/Bundle;)Lcom/htc/sunny2/slideshow/SlideAnimator;

    move-result-object v6

    .line 417
    .local v6, animator:Lcom/htc/sunny2/slideshow/SlideAnimator;
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v1, "slide_show_duration_setting"

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_FAST:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, interval:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    .line 420
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_10

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_FAST:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    .line 425
    :goto_1
    invoke-virtual {v6, p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setListener(Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;)V

    .line 427
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_13

    .line 428
    const/16 v0, 0x3e8

    const/16 v1, 0x1f4

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    invoke-virtual {v6, v0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setDurations(III)V

    .line 432
    :goto_2
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_7

    .line 434
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setLatest(Z)V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    .line 436
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;->onRepeatPause(I)V

    .line 439
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/slideshow/SlideshowScene;->animateSlide(Lcom/htc/sunny2/slideshow/SlideAnimator;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 441
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "playSlide NG - animateSlide"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_8
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    if-ne v0, v1, :cond_c

    .line 446
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v0, :cond_a

    .line 448
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->endAnimator()V

    .line 451
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v0, :cond_b

    .line 453
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->endAnimator()V

    .line 456
    :cond_b
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PLAY:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 459
    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    :goto_3
    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    .line 460
    iput-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    .line 462
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl  [playSlide]: Index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Start Play !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_d

    .line 467
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v1, "slide_show_repeat_setting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 468
    .local v7, bRepeat:Z
    if-nez v7, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    .line 472
    .end local v7           #bRepeat:Z
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    .line 474
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_e

    .line 476
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    .line 479
    :cond_e
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    .line 481
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    .line 484
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurIndex()V

    .line 487
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_f

    .line 489
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "NextSlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 490
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "DelaySlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 528
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v6           #animator:Lcom/htc/sunny2/slideshow/SlideAnimator;
    .end local v8           #interval:Ljava/lang/String;
    .end local v9           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v11           #nRotate:I
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayNextImage()Z

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 421
    .restart local v5       #bundle:Landroid/os/Bundle;
    .restart local v6       #animator:Lcom/htc/sunny2/slideshow/SlideAnimator;
    .restart local v8       #interval:Ljava/lang/String;
    .restart local v9       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .restart local v10       #mimeType:Ljava/lang/String;
    .restart local v11       #nRotate:I
    :cond_10
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_11

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_MID:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    goto/16 :goto_1

    .line 422
    :cond_11
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_12

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_SLOW:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    goto/16 :goto_1

    .line 423
    :cond_12
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_MID:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    goto/16 :goto_1

    .line 430
    :cond_13
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    invoke-virtual {v6, v0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setDurations(III)V

    goto/16 :goto_2

    .line 459
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 497
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v6           #animator:Lcom/htc/sunny2/slideshow/SlideAnimator;
    .end local v8           #interval:Ljava/lang/String;
    .end local v9           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v11           #nRotate:I
    :cond_15
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 500
    invoke-direct {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->resetPlayImageInfo(I)V

    .line 501
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Decode Fail Skip this Photo !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 507
    :cond_16
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Not Rdy, Skip !! FaceRdy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FullDecodeRdy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->DECODE_CHECK_MAX_COUNT:I

    if-ge v0, v1, :cond_17

    .line 511
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    .line 512
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupDelaySlideTimer()V

    .line 524
    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 516
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    .line 517
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[playSlide]: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] decode over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->DECODE_CHECK_MAX_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, skip this photo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->resetPlayImageInfo(I)V

    .line 520
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayNextImage()Z

    goto :goto_5
.end method

.method public requestImage(I)Z
    .locals 5
    .parameter "itemIndex"

    .prologue
    const/4 v0, 0x0

    .line 706
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl  [SlideshowController][requestImage]: start request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], Shuffle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_shuffle_setting"

    invoke-virtual {v3, v4, v0}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_1

    .line 710
    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "requestImage() NG - null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_0
    return v0

    .line 714
    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 716
    :cond_2
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImage() NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_3
    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    if-nez v1, :cond_5

    .line 723
    :cond_4
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl  [SlideshowController][requestImage]: request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] but latest request look like not done. End previous request."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    .line 727
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    .line 729
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1, p0, p1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestImage(Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 731
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImage() NG - requestImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    .line 739
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    .line 741
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestPlayImage(I)Z
    .locals 3
    .parameter "itemIndex"

    .prologue
    const/4 v1, 0x0

    .line 659
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 660
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    .line 662
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestImage(I)Z

    .line 665
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    .line 667
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    .line 668
    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    .line 670
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    .line 671
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    .line 673
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [requestPlayPrevImage]: Get Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupNextSlideTimer()V

    .line 677
    const/4 v0, 0x1

    return v0
.end method

.method public requestPlayNextImage()Z
    .locals 4

    .prologue
    .line 567
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayNextImage]:"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    .line 570
    .local v0, nIndex:I
    add-int/lit8 v0, v0, 0x1

    .line 571
    const/4 v1, 0x0

    .line 574
    .local v1, nTryCount:I
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->buildShuffleList()V

    .line 578
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayNextImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImagePlayable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 584
    add-int/lit8 v1, v1, 0x1

    .line 585
    add-int/lit8 v0, v0, 0x1

    .line 586
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 588
    const/4 v0, 0x0

    .line 589
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayNextImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 595
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayNextImage]: All list can\'t play !!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v2, 0x0

    .line 604
    :goto_0
    return v2

    .line 601
    :cond_2
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    .line 602
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayImage(I)Z

    .line 604
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestPlayPrevImage()Z
    .locals 4

    .prologue
    .line 609
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayPrevImage]:"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    .line 613
    .local v0, nIndex:I
    add-int/lit8 v0, v0, -0x1

    .line 614
    const/4 v1, 0x0

    .line 617
    .local v1, nTryCount:I
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 620
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->buildShuffleList()V

    .line 622
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayPrevImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImagePlayable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 628
    add-int/lit8 v1, v1, 0x1

    .line 629
    add-int/lit8 v0, v0, -0x1

    .line 630
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 633
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayPrevImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 639
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayNextImage]: All list can\'t play !!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v2, 0x0

    .line 650
    :goto_0
    return v2

    .line 643
    :cond_2
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    .line 648
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayImage(I)Z

    .line 650
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public runNotifyUpdateCurIndex()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    if-nez v0, :cond_1

    .line 1036
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowControl][runNotifyUpdateCurIndex]: mContext or mSlideshowContrilLis NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowController$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowController$1;-><init>(Lcom/htc/sunny2/slideshow/SlideshowController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runNotifyUpdateCurStatus(I)V
    .locals 2
    .parameter "nStatus"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    if-nez v0, :cond_1

    .line 1059
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowControl][runNotifyUpdateCurStatus]: mContext or mSlideshowContrilLis NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowController$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController$2;-><init>(Lcom/htc/sunny2/slideshow/SlideshowController;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSlideshowControlEventListener(Landroid/content/Context;Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V
    .locals 2
    .parameter "context"
    .parameter "lis"

    .prologue
    .line 1017
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1019
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    .line 1020
    iput-object p2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    .line 1024
    :goto_0
    return-void

    .line 1023
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowControlEventListener]: setSlideshowControlEventListener NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    .line 1009
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 1013
    :goto_0
    return-void

    .line 1012
    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowSetingManager]: setSlideshowSetingManager NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewPort(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1028
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    .line 1029
    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    .line 1030
    return-void
.end method

.method public setupDelaySlideTimer()V
    .locals 4

    .prologue
    .line 761
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    .line 763
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "setupDelaySlideTimer NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "NextSlideTimer"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 769
    const-string v1, "DelaySlideTimer"

    invoke-static {p0, v1}, Lcom/htc/sunnyCore/common/Timer;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/common/Timer;

    move-result-object v0

    .line 770
    .local v0, delaySlideTimer:Lcom/htc/sunnyCore/common/Timer;
    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDefaultDalayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/common/Timer;->setupByTimeMillis(Lcom/htc/sunnyCore/common/Timer$Listener;IJ)V

    .line 772
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method

.method public setupDelaySlideTimer(I)V
    .locals 4
    .parameter "nDelaytime"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    .line 779
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "setupDelaySlideTimer NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "NextSlideTimer"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 785
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 787
    :cond_1
    const-string v1, "DelaySlideTimer"

    invoke-static {p0, v1}, Lcom/htc/sunnyCore/common/Timer;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/common/Timer;

    move-result-object v0

    .line 788
    .local v0, delaySlideTimer:Lcom/htc/sunnyCore/common/Timer;
    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    int-to-long v2, p1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/common/Timer;->setupByTimeMillis(Lcom/htc/sunnyCore/common/Timer$Listener;IJ)V

    .line 790
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method

.method public setupNextSlideTimer()V
    .locals 5

    .prologue
    .line 746
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    .line 748
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "setupNextSlideTimer NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 752
    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl setupNextSlideTimer() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Request Timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v1, "NextSlideTimer"

    invoke-static {p0, v1}, Lcom/htc/sunnyCore/common/Timer;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/common/Timer;

    move-result-object v0

    .line 755
    .local v0, nextSlideTimer:Lcom/htc/sunnyCore/common/Timer;
    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_NEXT_SLIDE:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/common/Timer;->setupByTimeMillis(Lcom/htc/sunnyCore/common/Timer$Listener;IJ)V

    .line 756
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method
