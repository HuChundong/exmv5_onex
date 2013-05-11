.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.super Lcom/htc/sunnyCore/Preparator;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;
    }
.end annotation


# static fields
.field public static final CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field public static final EQ:I = 0x2

#the value of this static final field might be set in the static constructor
.field protected static final EXTREME_COLORDEPTH:I = 0x0

.field protected static final EXTREME_HEIGHT:I = 0x800

.field protected static final EXTREME_HEIGHT_PANORAMA:F = 4096.0f

.field protected static final EXTREME_HEIGHT_PANORAMA_NVIDIA:F = 2048.0f

.field protected static final EXTREME_PANORAMA_MAX_PIXELS:I = 0x400000

.field protected static final EXTREME_WIDTH:I = 0x800

.field protected static final EXTREME_WIDTH_PANORAMA:F = 4096.0f

.field protected static final EXTREME_WIDTH_PANORAMA_NVIDIA:F = 2048.0f

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field protected static final FILMSTRIP_WIDTH_HEIGHT:I = 0x100

.field public static final FILM_FILE_CAHCE_SIZE:Ljava/lang/String; = "FILM_FILE_CAHCE_SIZE"

.field public static final FILM_MEM_CAHCE_SIZE:Ljava/lang/String; = "FILM_MEM_CAHCE_SIZE"

.field protected static final FINISH_TASK:I = 0x0

.field public static final FLAG_ENABLE_QUALITY_OPTIONS:I = 0x1

#the value of this static final field might be set in the static constructor
.field protected static final FULLSCREEN_COLORDEPTH:I = 0x0

.field public static final FULL_FILE_CAHCE_SIZE:Ljava/lang/String; = "FULL_FILE_CAHCE_SIZE"

.field public static final FULL_FILM_FLAG:Ljava/lang/String; = "FULL_FILM_FLAG"

.field public static final FULL_MEM_CAHCE_SIZE:Ljava/lang/String; = "FULL_MEM_CAHCE_SIZE"

.field protected static final HIGH_CACHE_FILE_COUNT:I = 0x1e

.field protected static final HIGH_CACHE_MEM_COUNT:I = 0x0

.field public static final HQ:I = 0x1

.field public static final IS_ENABLE_HALF_PREFER_SIZE:Ljava/lang/String; = "IS_ENABLE_HALF_PREFER_SIZE"

.field protected static final ITEMS_PER_PAGE:I = 0xf

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

.field public static final LQ:I = 0x0

.field private static final MAX_MEM_CACHE_LIMIT_COUNT:I = 0x3

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6

.field protected static final MIDIUM_CACHE_FILE_COUNT:I = 0x12c

.field protected static final MIDIUM_TEXTURES_LIMIT_COUNT:I = 0x24

.field public static final SIDE_BY_SIDE:I = 0x3

.field public static final SPECIFIC_HQ_CACHE_FLAG:Ljava/lang/String; = "SPECIFIC_HQ_CACHE_FLAG"

.field public static final SPECIFIC_HQ_SIZE_LONG_SIDE:Ljava/lang/String; = "SPECIFIC_HQ_SIZE_LONG_SIDE"

.field public static final SPECIFIC_HQ_SIZE_SHORT_SIDE:Ljava/lang/String; = "SPECIFIC_HQ_SIZE_SHORT_SIDE"

.field protected static final TAG:Ljava/lang/String; = null

.field public static final TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final THUMB_FOLDER_WIDTH_HEIGHT:I = 0x80


# instance fields
.field protected final LOCK:Ljava/lang/Object;

.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected bIndexChangeFlag:Z

.field protected bInitial:Z

.field protected bIsFullScreenViewInSpeedyFu:Z

.field protected bMediaListExist:Z

.field protected bStop:Z

.field protected bStopHQDecodeSincePurge:Z

.field protected cacheItem:Lcom/htc/sunny2/common/CacheItem;

.field protected decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

.field protected extremeQualityDecodedItemIndex:I

.field protected extremeQualityToDecodeItemIndex:I

.field protected extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

.field protected failTextureHandle:Lcom/htc/sunnyCore/Texture;

.field protected isCacheEnabled:Z

.field protected isUploadEditor:Z

.field protected lockTextureMap:Ljava/lang/Object;

.field protected lockVideo:Ljava/lang/Object;

.field protected m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

.field protected mBeginIndex:I

.field protected mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

.field protected mBottomIndex:I

.field protected mBottomIndexHQ:I

.field protected mCacheSet:I

.field private mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

.field protected mContext:Landroid/content/Context;

.field protected mDecodeIdleBeforeTimeMillis:J

.field protected mDecodeIdleDurationAfterSideBySideImageDecoded:J

.field protected mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

.field protected mDirection:I

.field private mEnableDecodeLQFromExif:Z

.field protected mEnableQualityOptions:Z

.field protected mEndIndex:I

.field private mFileCacheSize:I

.field protected mHQTextureCount:I

.field private mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsDoubleTapZooming:Z

.field private mIsEnableHalfPreferSize:Z

.field private mIsPaused:Z

.field protected mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

.field protected mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

.field private mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field private mRaisePriorityOnce:Z

.field protected mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

.field protected mScaleType:I

.field protected mScreenLongDimension:I

.field protected mScreenShortDimension:I

.field protected mSpecificHQCacheFlag:I

.field protected mSunnyEnvironment:I

.field private mTask:Lcom/htc/sunnyCore/common/IterationTask;

.field protected mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunnyCore/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskWaitingTime:J

.field protected mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

.field protected mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

.field protected mTexturesCount:I

.field protected mTexturesHQCount:I

.field protected mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/fullfilmview/TileDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTileTextureReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;

.field protected mTopIndex:I

.field protected mTopIndexHQ:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

.field protected mViewState:I

.field protected sideBySideBitmap:Landroid/graphics/Bitmap;

.field protected sideBySideDecodedItemIndex:I

.field protected sideBySideToDecodeItemIndex:I

.field protected sideBySideVideoDecodingItemIndex:I

.field protected sideBySideVideoToDecodeItemIndex:I

.field private tempItem:Lcom/htc/sunny2/common/CacheItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x10

    .line 284
    const-class v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    .line 287
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    .line 291
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->EXTREME_COLORDEPTH:I

    return-void

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    :cond_1
    move v1, v2

    .line 291
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .parameter "host"
    .parameter "name"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/Preparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    .line 215
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    .line 308
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    .line 310
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 311
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 312
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 313
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 314
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 315
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 316
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 318
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 319
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 321
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    .line 322
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    .line 323
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 324
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 331
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 332
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 333
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 335
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 336
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 338
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    .line 340
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 341
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    .line 342
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 343
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    .line 344
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    .line 345
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 346
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    .line 347
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 348
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 349
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    .line 350
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    .line 351
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 352
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 353
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 354
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    .line 358
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 359
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 360
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScaleType:I

    .line 361
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    .line 362
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    .line 363
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 364
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 372
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->lockVideo:Ljava/lang/Object;

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->lockTextureMap:Ljava/lang/Object;

    .line 375
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 376
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 377
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    .line 378
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    .line 380
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 381
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 383
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 385
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 386
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 388
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 389
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 391
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 392
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    .line 393
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStopHQDecodeSincePurge:Z

    .line 394
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIndexChangeFlag:Z

    .line 396
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 397
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 398
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 401
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 404
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z

    .line 406
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsDoubleTapZooming:Z

    .line 638
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 639
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 640
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 641
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    .line 642
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 643
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 644
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 646
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 647
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    .line 648
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    .line 2034
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    .line 2100
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 3478
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 3479
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    .line 3507
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    .line 621
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 622
    return-void
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z

    return v0
.end method

.method private postSetTexture(Lcom/htc/sunnyCore/Texture;II)V
    .locals 12
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2616
    const/4 v1, -0x1

    .line 2618
    .local v1, previousDecodedItemIndex:I
    invoke-virtual {p1, p2}, Lcom/htc/sunnyCore/Texture;->setSourceWidth(I)V

    .line 2619
    invoke-virtual {p1, p3}, Lcom/htc/sunnyCore/Texture;->setSourceHeight(I)V

    .line 2620
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/sunnyCore/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 2621
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_6

    .line 2623
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2624
    .local v0, oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_3

    .line 2626
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 2702
    .end local v0           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-virtual {p0, v3, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2703
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 2705
    if-eq v1, v7, :cond_1

    .line 2707
    invoke-virtual {p0, v1, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2711
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v3, :cond_2

    .line 2713
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    invoke-interface {v3, v8, v4, v11}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2715
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v10, :cond_2

    .line 2717
    if-eq v1, v7, :cond_2

    .line 2720
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v3, v8, v1, v11}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2725
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 2726
    return-void

    .line 2630
    .restart local v0       #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    if-ne v0, v3, :cond_4

    .line 2632
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto :goto_0

    .line 2636
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_0

    .line 2638
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 2639
    .local v2, removeTexture:Lcom/htc/sunnyCore/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2641
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setTexture NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2643
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2645
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2650
    .end local v0           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    .end local v2           #removeTexture:Lcom/htc/sunnyCore/Texture;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v9, :cond_a

    .line 2652
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2653
    .restart local v0       #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_7

    .line 2655
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2659
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    if-ne v0, v3, :cond_8

    .line 2661
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2665
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_0

    .line 2667
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 2668
    .restart local v2       #removeTexture:Lcom/htc/sunnyCore/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2670
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2672
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2674
    :cond_9
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2679
    .end local v0           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    .end local v2           #removeTexture:Lcom/htc/sunnyCore/Texture;
    :cond_a
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v10, :cond_c

    .line 2681
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2682
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2683
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2684
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][FullFilmViewPreparator][setTexture]EQ, extremeQualityDecodedItemIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    :cond_b
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][FullFilmViewPreparator][setTexture]width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2689
    :cond_c
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_d

    .line 2691
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Add decodeItem to mTextureMap is Error"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2693
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_0

    .line 2695
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 2697
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Add decodeItem to mTextureMapHQ is Error"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2699
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto/16 :goto_0
.end method

.method private setNullTexture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2563
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v3, :cond_1

    .line 2565
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_6

    .line 2567
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v2, :cond_5

    .line 2569
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2571
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setTexture NG - mTexturePool is full"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2573
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2599
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 2601
    :cond_1
    const/4 v0, 0x1

    .line 2602
    .local v0, bNotifyFail:Z
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2603
    .local v1, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2605
    const/4 v0, 0x0

    .line 2607
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2608
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_4

    .line 2610
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2612
    :cond_4
    return-void

    .line 2578
    .end local v0           #bNotifyFail:Z
    .end local v1           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2579
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2582
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2584
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v2, :cond_7

    .line 2586
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2588
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2590
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2595
    :cond_7
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2596
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto/16 :goto_0
.end method

.method private useBackgroundImageTextureAsLastImageLQ()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 3514
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    invoke-interface {v6}, Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;->getInitBackgroundTexture_IRT()Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 3515
    .local v4, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v4, :cond_1

    .line 3516
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Texture is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    :cond_0
    :goto_0
    return-void

    .line 3520
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 3521
    .local v1, lastItemIndex:I
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v6, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .line 3522
    .local v2, mediaData:Lcom/htc/sunnyCore/IMediaData;
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 3523
    .local v5, textureIdentifier:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-nez v5, :cond_3

    .line 3524
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] MediaData or TextureMap or Texture Identifier is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    goto :goto_0

    .line 3529
    :cond_3
    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 3530
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3531
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Identifier not the same"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    goto :goto_0

    .line 3536
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    .line 3537
    .local v3, oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-eqz v3, :cond_5

    .line 3538
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Original LQ has texture"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    goto :goto_0

    .line 3543
    :cond_5
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 3545
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, v1, v4, v0}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3546
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 3547
    invoke-virtual {p0, v1, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 3548
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v6, :cond_0

    .line 3549
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v1, v8}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public addTileTask(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 3562
    return-void
.end method

.method public bind(ILcom/htc/sunnyCore/IMediaList;I)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 754
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind+"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v1, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialize"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_1
    :goto_0
    return-void

    .line 762
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-eqz v1, :cond_3

    .line 763
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->unbind(I)V

    .line 765
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    if-lez v1, :cond_5

    .line 766
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    if-le v1, v3, :cond_4

    .line 767
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 770
    :cond_4
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 771
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableFileCache(Landroid/content/Context;I)Z

    .line 773
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;)V

    .line 776
    :cond_5
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 777
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v1, :cond_6

    .line 778
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 781
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 782
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList has no media"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 787
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 788
    .local v0, itemCounts:I
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v1, v0, :cond_8

    .line 789
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 791
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v1, :cond_a

    .line 792
    :cond_9
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind() NG - not null texture pool or map"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_a
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 795
    new-instance v1, Lcom/htc/sunnyCore/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 796
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ItemsAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 797
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 799
    const/16 v1, 0xf

    if-le v0, v1, :cond_11

    .line 800
    const/16 v1, 0xe

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 804
    :goto_1
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 805
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 806
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gez v1, :cond_b

    .line 807
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 810
    :cond_b
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_c

    .line 811
    new-instance v1, Lcom/htc/sunnyCore/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    .line 812
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 813
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ItemsAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 814
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 815
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 816
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gez v1, :cond_c

    .line 817
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 820
    :cond_c
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_d

    .line 821
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->clear()V

    .line 822
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xb

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 823
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 825
    :cond_d
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 827
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    .line 828
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    .line 830
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_e

    .line 832
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    .line 833
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache Setup M:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_e
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_f

    .line 837
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 838
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 839
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 842
    :cond_f
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_10

    .line 843
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 844
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 845
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 848
    :cond_10
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 850
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind-, item count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 802
    :cond_11
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    goto/16 :goto_1
.end method

.method public checkImageUpdate(II)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "index"

    .prologue
    .line 3416
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v3, :cond_1

    .line 3417
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - TextureMap is null or MediaList is null or DecodeItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    :goto_0
    return-void

    .line 3421
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v3, p2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 3423
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - notified index not decode and current index not notified index"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3427
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    .line 3428
    .local v0, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v0, :cond_3

    .line 3429
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - mediaItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3433
    :cond_3
    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 3434
    .local v1, newIdentifier:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v3, p2}, Lcom/htc/sunnyCore/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v2

    .line 3436
    .local v2, oldIdentifier:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3438
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkImageUpdate - current decode item id is the same as notified item id, newId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3442
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method public deInit()V
    .locals 3

    .prologue
    .line 1021
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_deInit +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v0, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bInitial is false, ThumbnailPreparator_deInit -"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    monitor-exit v1

    .line 1074
    :goto_0
    return-void

    .line 1028
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 1029
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->release()V

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 1039
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 1044
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_5

    .line 1045
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->release()V

    .line 1046
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 1049
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 1052
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-eqz v0, :cond_6

    .line 1053
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 1057
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v0, :cond_7

    .line 1059
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1063
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 1064
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 1068
    :cond_8
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Release mUpdateListener"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 1072
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->printResourceLog()V

    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected decodeFromCache(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1781
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1782
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1784
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1785
    const/4 v0, 0x1

    .line 1812
    :goto_0
    return v0

    .line 1788
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1789
    .local v8, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1791
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xb

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    const/16 v3, 0x12c

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1793
    :cond_1
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1794
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1795
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1796
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1801
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 1802
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    .line 1803
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1804
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1805
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1806
    invoke-virtual {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->enableDecodeSourceWidthHeight()V

    .line 1807
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v0, :cond_2

    if-eqz v11, :cond_2

    .line 1809
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 1810
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 1812
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1798
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1799
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeFromCacheHQ(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1818
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1819
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheHQ] MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1821
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1822
    const/4 v0, 0x1

    .line 1851
    :goto_0
    return v0

    .line 1825
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1826
    .local v8, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1828
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 1829
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/16 v3, 0x1e

    sget v4, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1830
    :cond_1
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xc

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1831
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1832
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1833
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1838
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v0, :cond_2

    .line 1839
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 1840
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 1841
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    .line 1842
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1843
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1844
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1845
    invoke-virtual {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->enableDecodeSourceWidthHeight()V

    .line 1846
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v0, :cond_3

    if-eqz v11, :cond_3

    .line 1848
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 1849
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 1851
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1835
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1836
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeIterator(J)Z
    .locals 19
    .parameter "limitedTimeMillis"

    .prologue
    .line 2288
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2289
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v2, :cond_0

    .line 2290
    const/4 v2, 0x0

    .line 2535
    :goto_0
    return v2

    .line 2292
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v2, :cond_1

    .line 2293
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[decodeIterator] IteratorTask is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const/4 v2, 0x1

    goto :goto_0

    .line 2298
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsDoubleTapZooming:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2300
    const/4 v2, 0x1

    goto :goto_0

    .line 2303
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTask;->isTaskFinished()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2304
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 2305
    const/4 v15, 0x0

    .line 2306
    .local v15, isUseScaladoBitmap:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    instance-of v2, v2, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    check-cast v2, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->getDecodeFlag()I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_3

    .line 2307
    const/4 v15, 0x1

    .line 2309
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    .line 2310
    if-eqz v15, :cond_e

    .line 2312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandleWithoutNew()I

    move-result v17

    .line 2313
    .local v17, scaladoBitmapHandle:I
    if-eqz v17, :cond_c

    .line 2315
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(I)V

    .line 2316
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    .line 2319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_a

    .line 2321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2322
    .local v16, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v16, :cond_9

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_7

    .line 2326
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v4, 0xb

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2327
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandle()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandle()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->swapScaladoBitmap(II)V

    .line 2334
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2338
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 2339
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v2, :cond_8

    const/16 v12, 0x11

    .line 2340
    .local v12, cacheSourceType:I
    :goto_2
    new-instance v18, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct/range {v18 .. v18}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2341
    .local v18, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2342
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_6

    if-eqz v18, :cond_6

    .line 2347
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 2348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 2535
    .end local v12           #cacheSourceType:I
    .end local v15           #isUseScaladoBitmap:Z
    .end local v16           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v17           #scaladoBitmapHandle:I
    .end local v18           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_6
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2329
    .restart local v15       #isUseScaladoBitmap:Z
    .restart local v16       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .restart local v17       #scaladoBitmapHandle:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2331
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v4, 0xc

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2332
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandle()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandle()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->swapScaladoBitmap(II)V

    goto/16 :goto_1

    .line 2339
    :cond_8
    const/4 v12, 0x1

    goto :goto_2

    .line 2353
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2358
    .end local v16           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2364
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_3

    .line 2372
    :cond_c
    const/4 v11, 0x1

    .line 2373
    .local v11, bNotifyFail:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2374
    .restart local v16       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v16, :cond_d

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2376
    const/4 v11, 0x0

    .line 2378
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 2385
    .end local v11           #bNotifyFail:Z
    .end local v16           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v17           #scaladoBitmapHandle:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2386
    .local v10, bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_1c

    .line 2387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 2389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 2391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-ne v2, v3, :cond_13

    .line 2393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    .line 2394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 2397
    :cond_f
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 2398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v2, :cond_10

    .line 2399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    .line 2401
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2402
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 2403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2405
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    .line 2406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 2407
    .local v13, currentTimeMillis:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 2408
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v2, v2, v13

    if-gez v2, :cond_11

    .line 2409
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 2413
    :cond_11
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 2420
    .end local v13           #currentTimeMillis:J
    :cond_12
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2416
    :cond_13
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_4

    .line 2423
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 2425
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_1a

    .line 2428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2429
    .restart local v16       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v16, :cond_19

    .line 2430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_17

    .line 2431
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v4, 0xb

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-direct/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2437
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 2438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2440
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 2442
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v2, :cond_18

    const/16 v12, 0x11

    .line 2443
    .restart local v12       #cacheSourceType:I
    :goto_6
    new-instance v18, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct/range {v18 .. v18}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2444
    .restart local v18       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2445
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_6

    if-eqz v18, :cond_6

    .line 2449
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 2450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    goto/16 :goto_3

    .line 2433
    .end local v12           #cacheSourceType:I
    .end local v18           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 2434
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v4, 0xc

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-direct/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto/16 :goto_5

    .line 2442
    :cond_18
    const/4 v12, 0x1

    goto :goto_6

    .line 2453
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2456
    .end local v16           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2459
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2460
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 2465
    :cond_1c
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    .line 2466
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2476
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 2469
    :cond_1d
    const/4 v11, 0x1

    .line 2470
    .restart local v11       #bNotifyFail:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2471
    .restart local v16       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v16, :cond_1e

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2472
    const/4 v11, 0x0

    .line 2474
    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto :goto_7

    .line 2481
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #bNotifyFail:Z
    .end local v15           #isUseScaladoBitmap:Z
    .end local v16           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_1f
    sget-object v2, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->CANCEL:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v3

    if-ne v2, v3, :cond_26

    .line 2482
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 2483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    .line 2484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v3, :cond_21

    .line 2486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_24

    .line 2488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v2, :cond_23

    .line 2490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2492
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setTexture NG - mTexturePool is full"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2494
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2520
    :cond_20
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 2522
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2533
    :cond_22
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2499
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2500
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_8

    .line 2503
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 2505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v2, :cond_25

    .line 2507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2509
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_8

    .line 2516
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto :goto_8

    .line 2525
    :cond_26
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    .line 2526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_9

    .line 2527
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    .line 2528
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "Task waiting time over time limit, request resume thread"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->resumeThread()V

    .line 2530
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_9
.end method

.method protected decodeOriginalFile(J)Z
    .locals 20
    .parameter "limitedTimeMillis"

    .prologue
    .line 2104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2105
    .local v16, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v16, :cond_0

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2109
    const/4 v2, 0x1

    .line 2215
    :goto_0
    return v2

    .line 2111
    :cond_0
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v13

    .line 2112
    .local v13, filePath:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v15

    .line 2113
    .local v15, isVideo:Z
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v14

    .line 2114
    .local v14, isDrm:Z
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v17

    .line 2116
    .local v17, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 2117
    const/16 v18, 0x10

    .line 2119
    .local v18, requiredColorDepth:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScaleType:I

    .line 2120
    const/16 v11, 0x2422

    .line 2126
    .local v11, decodeFlag:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 2127
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_4

    .line 2129
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    if-eqz v2, :cond_1

    .line 2131
    or-int/lit16 v11, v11, 0x1010

    .line 2133
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v2, :cond_3

    .line 2134
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 2135
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 2164
    :cond_2
    :goto_1
    if-eqz v15, :cond_7

    .line 2165
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 2166
    const/4 v2, 0x1

    goto :goto_0

    .line 2137
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 2138
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    goto :goto_1

    .line 2140
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 2142
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    goto :goto_1

    .line 2143
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 2144
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 2145
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 2146
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->EXTREME_COLORDEPTH:I

    .line 2152
    sget-boolean v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-nez v2, :cond_2

    .line 2154
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStopHQDecodeSincePurge:Z

    .line 2155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->purgeTextureMapHQ(I)V

    goto :goto_1

    .line 2158
    :cond_6
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 2160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 2161
    or-int/lit16 v11, v11, 0x200

    .line 2162
    and-int/lit16 v11, v11, -0x2001

    goto/16 :goto_1

    .line 2169
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2170
    const/4 v4, -0x1

    .line 2171
    .local v4, cacheSet:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_c

    .line 2172
    const/16 v4, 0xb

    .line 2176
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v2, :cond_d

    .line 2177
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2181
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 2183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 2188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 2189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 2190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 2191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 2192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2194
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget v2, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_a

    .line 2197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v5, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    :cond_a
    :goto_4
    new-instance v19, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v19 .. v19}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 2204
    .local v19, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2206
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setColorDepth(I)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V

    .line 2208
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_b

    if-eqz v19, :cond_b

    .line 2212
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 2213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 2215
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2173
    .end local v19           #task:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 2174
    const/16 v4, 0xc

    goto/16 :goto_2

    .line 2179
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 2198
    :catch_0
    move-exception v12

    .line 2199
    .local v12, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public enableDecodeLQFromExif(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 3510
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    .line 3511
    return-void
.end method

.method protected findAHQTextureToReuse(I)Lcom/htc/sunnyCore/Texture;
    .locals 7
    .parameter "newContentIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1757
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-ge v2, v3, :cond_1

    .line 1759
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1760
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 1775
    :cond_0
    :goto_0
    return-object v0

    .line 1762
    :cond_1
    const/4 v0, 0x0

    .line 1763
    .local v0, candidate:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1764
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1766
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 1767
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1768
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v5, v1, v6}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1769
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v5, v1, v6}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 1772
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1773
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "newContentIndex"

    .prologue
    .line 1736
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-ge v2, v3, :cond_1

    .line 1738
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1739
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 1753
    :cond_0
    :goto_0
    return-object v0

    .line 1741
    :cond_1
    const/4 v0, 0x0

    .line 1742
    .local v0, candidate:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1743
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1745
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 1746
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1747
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1750
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1751
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAnItemToDecode()I
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v7, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1467
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    if-eq v8, v7, :cond_1

    .line 1468
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne v8, v9, :cond_3

    .line 1472
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]extremeQualityToDecodeItemIndex, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has already decoded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    :cond_0
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 1481
    :cond_1
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-eq v8, v7, :cond_7

    .line 1482
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_5

    .line 1486
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 1487
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_2

    .line 1488
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_2
    move v3, v7

    .line 1723
    :goto_0
    return v3

    .line 1475
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1476
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]extremeQualityToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_4
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_0

    .line 1492
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1493
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]sideBySideToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_6
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto :goto_0

    .line 1498
    :cond_7
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v7, :cond_b

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v9, :cond_b

    .line 1499
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1500
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_9

    .line 1504
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 1505
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1506
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_8

    .line 1507
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_8
    move v3, v7

    .line 1509
    goto :goto_0

    .line 1511
    :cond_9
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1512
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcAlbum][FullFilmViewPreparator][findAnItemToDecode]sideBySideVideoToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_a
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    goto/16 :goto_0

    .line 1517
    :cond_b
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .local v0, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v0, v8, :cond_13

    .line 1518
    invoke-virtual {p0, v0, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_c

    .line 1520
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1521
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v0

    .line 1522
    goto/16 :goto_0

    .line 1526
    :cond_c
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_12

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    if-nez v8, :cond_12

    .line 1527
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v12, :cond_d

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_12

    .line 1529
    :cond_d
    add-int/lit8 v5, v0, -0x1

    .line 1530
    .local v5, searchUpIndex:I
    add-int/lit8 v3, v0, 0x1

    .line 1531
    .local v3, searchDownIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-ltz v8, :cond_f

    .line 1533
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_e

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_e

    .line 1535
    invoke-virtual {p0, v3, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_e

    .line 1537
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1541
    :cond_e
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_11

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_11

    .line 1543
    invoke-virtual {p0, v5, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_11

    .line 1545
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v5

    .line 1546
    goto/16 :goto_0

    .line 1552
    :cond_f
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_10

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_10

    .line 1554
    invoke-virtual {p0, v5, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_10

    .line 1556
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v5

    .line 1557
    goto/16 :goto_0

    .line 1560
    :cond_10
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_11

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_11

    .line 1562
    invoke-virtual {p0, v3, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_11

    .line 1564
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1569
    :cond_11
    invoke-virtual {p0, v0, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_12

    .line 1571
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v0

    .line 1572
    goto/16 :goto_0

    .line 1517
    .end local v3           #searchDownIndex:I
    .end local v5           #searchUpIndex:I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1579
    :cond_13
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z

    if-eqz v8, :cond_14

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    if-eq v8, v7, :cond_14

    .line 1580
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne v8, v9, :cond_18

    .line 1585
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 1593
    :cond_14
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v5, v8, -0x1

    .line 1594
    .restart local v5       #searchUpIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v8, 0x1

    .line 1595
    .restart local v3       #searchDownIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v6, v8, -0x1

    .line 1596
    .local v6, searchUpIndexHQ:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v8, 0x1

    .line 1597
    .local v4, searchDownIndexHQ:I
    const/4 v2, 0x0

    .line 1598
    .local v2, loopCount:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v8}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 1599
    .local v1, itemCount:I
    :cond_15
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_16

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-le v5, v8, :cond_17

    :cond_16
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_23

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_23

    .line 1601
    :cond_17
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-ltz v8, :cond_25

    .line 1603
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_1a

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_1a

    .line 1605
    invoke-virtual {p0, v3, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_19

    .line 1608
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_19

    .line 1610
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1587
    .end local v1           #itemCount:I
    .end local v2           #loopCount:I
    .end local v3           #searchDownIndex:I
    .end local v4           #searchDownIndexHQ:I
    .end local v5           #searchUpIndex:I
    .end local v6           #searchUpIndexHQ:I
    :cond_18
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1589
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto/16 :goto_0

    .line 1614
    .restart local v1       #itemCount:I
    .restart local v2       #loopCount:I
    .restart local v3       #searchDownIndex:I
    .restart local v4       #searchDownIndexHQ:I
    .restart local v5       #searchUpIndex:I
    .restart local v6       #searchUpIndexHQ:I
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 1617
    :cond_1a
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_1c

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_1c

    .line 1619
    invoke-virtual {p0, v5, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_1b

    .line 1622
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 1624
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v5

    .line 1625
    goto/16 :goto_0

    .line 1628
    :cond_1b
    add-int/lit8 v5, v5, -0x1

    .line 1631
    :cond_1c
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_1f

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_1f

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    if-nez v8, :cond_1f

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStopHQDecodeSincePurge:Z

    if-nez v8, :cond_1f

    .line 1633
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_1e

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_1e

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_1e

    invoke-virtual {p0, v4, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 1635
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v12, :cond_1d

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_1e

    .line 1637
    :cond_1d
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v4

    .line 1638
    goto/16 :goto_0

    .line 1641
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 1644
    :cond_1f
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_22

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_22

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    if-nez v8, :cond_22

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStopHQDecodeSincePurge:Z

    if-nez v8, :cond_22

    .line 1646
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_21

    invoke-virtual {p0, v6, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_21

    .line 1648
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v12, :cond_20

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_21

    .line 1650
    :cond_20
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v6

    .line 1651
    goto/16 :goto_0

    .line 1654
    :cond_21
    add-int/lit8 v6, v6, -0x1

    .line 1713
    :cond_22
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 1714
    if-le v2, v1, :cond_15

    .line 1716
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :cond_23
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v8, v9, :cond_24

    .line 1721
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bottom is smaller than top"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    move v3, v7

    .line 1723
    goto/16 :goto_0

    .line 1659
    :cond_25
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_27

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_27

    .line 1661
    invoke-virtual {p0, v5, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_26

    .line 1664
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_26

    .line 1666
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v5

    .line 1667
    goto/16 :goto_0

    .line 1670
    :cond_26
    add-int/lit8 v5, v5, -0x1

    .line 1673
    :cond_27
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_29

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_29

    .line 1675
    invoke-virtual {p0, v3, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_28

    .line 1678
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_28

    .line 1680
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1684
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 1687
    :cond_29
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_2c

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_2c

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    if-nez v8, :cond_2c

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStopHQDecodeSincePurge:Z

    if-nez v8, :cond_2c

    .line 1689
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_2b

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_2b

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_2b

    invoke-virtual {p0, v6, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_2b

    .line 1691
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v12, :cond_2a

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_2b

    .line 1693
    :cond_2a
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v6

    .line 1694
    goto/16 :goto_0

    .line 1697
    :cond_2b
    add-int/lit8 v6, v6, -0x1

    .line 1700
    :cond_2c
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_22

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_22

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    if-nez v8, :cond_22

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStopHQDecodeSincePurge:Z

    if-nez v8, :cond_22

    .line 1702
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_2e

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_2e

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_2e

    invoke-virtual {p0, v4, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_2e

    .line 1704
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v12, :cond_2d

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_2e

    .line 1706
    :cond_2d
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v3, v4

    .line 1707
    goto/16 :goto_0

    .line 1710
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method public freeOutOfRange(III)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 3467
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    const/4 v1, 0x0

    .line 2940
    if-nez p3, :cond_0

    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2941
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v1, :cond_1

    .line 2944
    .end local v0           #texture:Lcom/htc/sunnyCore/Texture;
    :goto_1
    return-object v0

    .line 2940
    :cond_0
    const-string v2, "QUALITY"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 2944
    .restart local v0       #texture:Lcom/htc/sunnyCore/Texture;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method public hasSideBySideBitmapReaderListener()Z
    .locals 1

    .prologue
    .line 3458
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 12
    .parameter "context"
    .parameter "inValue"

    .prologue
    const/16 v11, 0x24

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 668
    if-nez p1, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Context is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 746
    :goto_0
    return-void

    .line 674
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 675
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 676
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 677
    .local v2, ptSize:Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 678
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 679
    .local v4, screenWidth:I
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 680
    .local v3, screenHeight:I
    if-le v4, v3, :cond_3

    .line 681
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 682
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 687
    :goto_1
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen Size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_1
    const-string v6, "TEXTURE_MAX_COUNT"

    invoke-virtual {p2, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 690
    .local v5, texturePreparationMaxCount:I
    if-le v5, v11, :cond_2

    .line 691
    const/16 v5, 0x24

    .line 694
    :cond_2
    const-string v6, "IS_ENABLE_HALF_PREFER_SIZE"

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z

    .line 697
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 699
    :try_start_0
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    .line 700
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    if-nez v6, :cond_4

    .line 701
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Environment handle is 0"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 703
    monitor-exit v9

    goto :goto_0

    .line 745
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 684
    .end local v5           #texturePreparationMaxCount:I
    :cond_3
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 685
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    goto :goto_1

    .line 706
    .restart local v5       #texturePreparationMaxCount:I
    :cond_4
    :try_start_1
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 707
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-nez v6, :cond_5

    .line 708
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TexturePreparationMaxCount is 0"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 710
    monitor-exit v9

    goto/16 :goto_0

    .line 712
    :cond_5
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    .line 714
    const-string v6, "CACHE_SET"

    const/16 v10, 0xb

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    .line 716
    new-instance v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-direct {v6, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 719
    const-string v6, "FULL_FILE_CAHCE_SIZE"

    const/4 v10, 0x0

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 721
    new-instance v6, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v6}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 722
    new-instance v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-direct {v6, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 724
    new-instance v6, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v6}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 725
    new-instance v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-direct {v6, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 727
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 728
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 730
    const-string v6, "FULL_FILM_FLAG"

    const/4 v10, 0x0

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 731
    .local v1, fullFilmFlag:I
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_7

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    .line 733
    const-string v6, "SPECIFIC_HQ_CACHE_FLAG"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    .line 734
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-ne v6, v7, :cond_6

    .line 736
    const-string v6, "SPECIFIC_HQ_SIZE_LONG_SIDE"

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 737
    const-string v6, "SPECIFIC_HQ_SIZE_SHORT_SIDE"

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 741
    :cond_6
    new-instance v6, Lcom/htc/sunnyCore/common/IterationTaskThread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ItrTaskThread "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/sunnyCore/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 743
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/IterationTaskThread;->beginThread()V

    .line 745
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 731
    goto :goto_2
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;)V
    .locals 0
    .parameter "context"
    .parameter "inValue"
    .parameter "sSurfaceViewInitBackgroundCallback"

    .prologue
    .line 658
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 660
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V
    .locals 0
    .parameter "context"
    .parameter "params"

    .prologue
    .line 655
    return-void
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    .line 1730
    :cond_0
    const/4 v0, 0x1

    .line 1732
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2
    .parameter "limitedTimeMillis"

    .prologue
    .line 1463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRange(IIIJ)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 3471
    return-void
.end method

.method public notifyDataItemChanged(II)V
    .locals 15
    .parameter "mediaListIdx"
    .parameter "contentIndex"

    .prologue
    .line 1078
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged+, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_0
    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 1081
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v1, :cond_2

    .line 1084
    monitor-exit v13

    .line 1190
    :cond_1
    :goto_0
    return-void

    .line 1086
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v1, :cond_3

    .line 1089
    monitor-exit v13

    goto :goto_0

    .line 1188
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1091
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_8

    .line 1092
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    .line 1094
    .local v9, currentIndex:I
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    .line 1096
    .local v10, currentTextureHandle:Lcom/htc/sunnyCore/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-eqz v1, :cond_4

    .line 1097
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 1099
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v1, :cond_5

    .line 1100
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v9, v3}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1102
    :cond_5
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_6

    .line 1104
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_6

    .line 1106
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1110
    :cond_6
    if-eqz v10, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v10, v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_d

    .line 1111
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1112
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1114
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1126
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1129
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v1, :cond_11

    .line 1130
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    .line 1131
    .local v12, textureHandle:Lcom/htc/sunnyCore/Texture;
    if-eqz v12, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v12, v1, :cond_9

    .line 1132
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_f

    .line 1133
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1135
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1144
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_a

    .line 1145
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_a

    .line 1146
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1147
    .local v11, item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_10

    .line 1148
    iget-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1158
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_a
    :goto_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_c

    .line 1159
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v1, :cond_14

    .line 1160
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    .line 1161
    .restart local v12       #textureHandle:Lcom/htc/sunnyCore/Texture;
    if-eqz v12, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v12, v1, :cond_b

    .line 1162
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_12

    .line 1163
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1165
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1174
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_c

    .line 1175
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_c

    .line 1176
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1177
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_13

    .line 1178
    iget-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1188
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_c
    :goto_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged-"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1116
    .restart local v9       #currentIndex:I
    .restart local v10       #currentTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_d
    if-eqz v10, :cond_e

    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v10, v1, :cond_e

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 1117
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1118
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1120
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_1

    .line 1122
    :cond_e
    if-eqz v10, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v10, v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1124
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto/16 :goto_1

    .line 1137
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunnyCore/Texture;
    .restart local v12       #textureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_f
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1138
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1140
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_2

    .line 1150
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_10
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1155
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_11
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - TextureMap is  null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1167
    .restart local v12       #textureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_12
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1168
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1170
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_4

    .line 1180
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_13
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1185
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_14
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - TextureMapHQ is  null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 228
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_3

    .line 230
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 234
    :cond_0
    if-ne p1, v2, :cond_4

    .line 235
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread FullFilmView preparation start"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 242
    :cond_2
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    .line 244
    :cond_3
    monitor-exit v1

    .line 245
    return-void

    .line 237
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 238
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread FullFilmView preparation end"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1198
    return-void
.end method

.method protected onProcessPreparation(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1240
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v8, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onProcessPreparationIRT_Force stop"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1243
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    .line 1244
    const/4 v8, 0x0

    .line 1459
    :goto_0
    return v8

    .line 1247
    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v9

    .line 1248
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    if-eqz v8, :cond_1

    .line 1251
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1252
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    .line 1253
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    .line 1255
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1259
    .local v0, currentTimeMillis:J
    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    const-wide/16 v8, 0x7d0

    cmp-long v8, v0, v8

    if-gez v8, :cond_3

    .line 1260
    :cond_2
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 1262
    :cond_3
    long-to-int v8, v0

    rem-int/lit16 v7, v8, 0xc8

    .line 1263
    .local v7, t:I
    const/16 v8, 0x14

    if-ge v7, v8, :cond_4

    .line 1264
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Decode Idle"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 1269
    .end local v0           #currentTimeMillis:J
    .end local v7           #t:I
    :cond_5
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v8, :cond_6

    .line 1270
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onProcessPreparationIRT_Not initialize"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const/4 v8, 0x1

    goto :goto_0

    .line 1273
    :cond_6
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v8, :cond_7

    .line 1276
    const/4 v8, 0x1

    goto :goto_0

    .line 1279
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    if-eqz v8, :cond_8

    .line 1280
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->useBackgroundImageTextureAsLastImageLQ()V

    .line 1281
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    .line 1284
    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-nez v8, :cond_9

    .line 1285
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onProcessPreparationIRT_mUpdateListener is null"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :cond_9
    const/4 v3, 0x0

    .line 1290
    .local v3, mTileTasksBeingEmpty:Z
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 1291
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v8, :cond_a

    .line 1292
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Stop preparator"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1294
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1297
    :cond_a
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 1299
    :try_start_2
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 1301
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1302
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;

    .line 1304
    .local v2, item:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    iget-object v8, v2, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_b

    .line 1306
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTextureReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;

    if-eqz v8, :cond_c

    .line 1308
    iget-object v8, v2, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v8}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->texture:Lcom/htc/sunnyCore/Texture;

    .line 1309
    iget-object v8, v2, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->texture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v8

    invoke-static {v8}, Lcom/htc/sunnyCore/SunnyCore;->Texture_Realize(I)V

    .line 1310
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTextureReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;

    invoke-interface {v8, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;->onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V

    .line 1317
    :cond_b
    :goto_1
    const/4 v3, 0x1

    .line 1324
    .end local v2           #item:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    :goto_2
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v8, :cond_e

    .line 1325
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "DecodeItem is null"

    invoke-static {v8, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1327
    const/4 v8, 0x1

    monitor-exit v9

    goto/16 :goto_0

    .line 1455
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 1314
    .restart local v2       #item:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    :cond_c
    const/4 v8, 0x0

    :try_start_3
    iput-object v8, v2, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1321
    .end local v2           #item:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    :cond_d
    const/4 v3, 0x0

    goto :goto_2

    .line 1331
    :cond_e
    const/4 v6, 0x0

    .line 1332
    .local v6, shouldCancelDecodeSideBySide:Z
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_10

    .line 1333
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_18

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_18

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v8, v10, :cond_f

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    if-ge v8, v10, :cond_18

    :cond_f
    const/4 v6, 0x1

    .line 1336
    :cond_10
    :goto_3
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_11

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v8, v10, :cond_13

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v8, v10, :cond_13

    :cond_11
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_12

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_12

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v8, v10, :cond_13

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    if-lt v8, v10, :cond_13

    :cond_12
    if-nez v6, :cond_13

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_17

    .line 1339
    :cond_13
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DecodeItem is expired "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-eqz v8, :cond_14

    .line 1341
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v8, v10}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 1342
    :cond_14
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v8, :cond_15

    .line 1345
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v8, :cond_15

    .line 1347
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1348
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1351
    :cond_15
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v10, :cond_19

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_19

    .line 1352
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 1353
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v8, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1355
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1370
    :cond_16
    :goto_4
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1374
    :cond_17
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_2c

    .line 1376
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processMediaThumbnail(J)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1378
    const/4 v8, 0x1

    monitor-exit v9

    goto/16 :goto_0

    .line 1333
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1357
    :cond_19
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v10, :cond_1a

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1a

    .line 1358
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 1359
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "onProcessPreparationIRT NG - mTexturePoolHQ is full"

    invoke-static {v8, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1361
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_4

    .line 1363
    :cond_1a
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v10, :cond_1b

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_1b

    .line 1365
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_4

    .line 1366
    :cond_1b
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_16

    .line 1368
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto/16 :goto_4

    .line 1381
    :cond_1c
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findAnItemToDecode()I

    move-result v10

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1383
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2a

    .line 1384
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1386
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_20

    .line 1387
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 1397
    :cond_1d
    :goto_5
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 1398
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-ne v8, v10, :cond_1f

    .line 1399
    const/4 v5, 0x0

    .line 1401
    .local v5, reusableTextureHandle:Lcom/htc/sunnyCore/Texture;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_23

    .line 1402
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    .line 1407
    :cond_1e
    :goto_6
    if-eqz v5, :cond_24

    .line 1408
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 1416
    .end local v5           #reusableTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_1f
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_26

    .line 1417
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_25

    .line 1418
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCache(J)Z

    move-result v8

    monitor-exit v9

    goto/16 :goto_0

    .line 1388
    :cond_20
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_21

    .line 1389
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findAHQTextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    goto :goto_5

    .line 1390
    :cond_21
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_22

    .line 1391
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    goto :goto_5

    .line 1393
    :cond_22
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1d

    .line 1394
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v10, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    goto/16 :goto_5

    .line 1403
    .restart local v5       #reusableTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_23
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1e

    .line 1404
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    goto :goto_6

    .line 1410
    :cond_24
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "No reusable texture"

    invoke-static {v8, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1412
    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 1419
    .end local v5           #reusableTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_25
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2d

    .line 1420
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCacheHQ(J)Z

    move-result v8

    monitor-exit v9

    goto/16 :goto_0

    .line 1423
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v8

    monitor-exit v9

    goto/16 :goto_0

    .line 1425
    :cond_27
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_29

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_29

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_29

    .line 1426
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_28

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]decodeOriginalFile..."

    invoke-static {v8, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v8

    monitor-exit v9

    goto/16 :goto_0

    .line 1429
    :cond_29
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Texture cache is full"

    invoke-static {v8, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1431
    const/4 v8, 0x1

    monitor-exit v9

    goto/16 :goto_0

    .line 1436
    :cond_2a
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v8}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v8}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2b

    if-nez v3, :cond_2b

    .line 1438
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1440
    :cond_2b
    const/4 v8, 0x1

    monitor-exit v9

    goto/16 :goto_0

    .line 1443
    :cond_2c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1447
    :cond_2d
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v8, :cond_2e

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v8, :cond_2e

    .line 1449
    const/4 v4, 0x0

    .line 1450
    .local v4, ret:I
    invoke-virtual {p0, v4, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processCache(IJ)V

    .line 1451
    const/4 v8, 0x1

    monitor-exit v9

    goto/16 :goto_0

    .line 1453
    .end local v4           #ret:I
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeIterator(J)Z

    move-result v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1459
    .end local v6           #shouldCancelDecodeSideBySide:Z
    :cond_2f
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 6
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 1202
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->onProcessPreparation(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1235
    :cond_0
    :goto_0
    return v2

    .line 1203
    :catch_0
    move-exception v1

    .line 1204
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "onProcessPreparationIRT NG -Unexpected Exception, reset decodeItem and status"

    invoke-static {v3, v4, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1205
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 1206
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 1207
    .local v0, currentTextureHandle:Lcom/htc/sunnyCore/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-eqz v3, :cond_1

    .line 1208
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 1209
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_2

    .line 1211
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_2

    .line 1213
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1214
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1217
    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1218
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1219
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1221
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1233
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_0

    .line 1223
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1224
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1225
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1227
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_1

    .line 1229
    :cond_5
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1231
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_1
.end method

.method public onViewStateChange(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 3446
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    .line 3447
    return-void
.end method

.method public pausePreparator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3483
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 3484
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 3485
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3486
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 3489
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_1

    .line 3490
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 3492
    :cond_1
    return-void

    .line 3485
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processCache(IJ)V
    .locals 11
    .parameter "returnValue"
    .parameter "limitedTimeMillis"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x0

    .line 1855
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v3, :cond_1

    .line 1856
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[processCache] IteratorTask is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTask;->isTaskFinished()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1861
    iput-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 1862
    const/4 v1, 0x0

    .line 1863
    .local v1, isFailed:Z
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    instance-of v3, v3, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v3, :cond_3

    .line 1864
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    check-cast v3, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v1

    .line 1870
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    .line 1871
    if-eqz v1, :cond_6

    .line 1873
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v3, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_5

    .line 1875
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_2

    .line 1877
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1878
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1880
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    goto :goto_0

    .line 1865
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    instance-of v3, v3, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v3, :cond_4

    .line 1866
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    check-cast v3, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v1

    goto :goto_1

    .line 1868
    :cond_4
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[ProcessCache] unknown task"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1882
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error on encode cache"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1884
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_0

    .line 1886
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1887
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_0

    .line 1892
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v3, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_7

    .line 1893
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1894
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandleWithoutNew()I

    move-result v2

    .line 1895
    .local v2, scaladoBitmap:I
    if-eqz v2, :cond_8

    .line 1896
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1899
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1900
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1901
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(I)V

    .line 1928
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #scaladoBitmap:I
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1929
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_0

    .line 1931
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1932
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto/16 :goto_0

    .line 1902
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #scaladoBitmap:I
    :cond_8
    if-eqz v0, :cond_9

    .line 1903
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1906
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1907
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1908
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1911
    :cond_9
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_a

    .line 1913
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1914
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1916
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    goto/16 :goto_0

    .line 1937
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #isFailed:Z
    .end local v2           #scaladoBitmap:I
    :cond_b
    sget-object v3, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->CANCEL:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v4

    if-ne v3, v4, :cond_11

    .line 1938
    iput-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 1939
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    .line 1940
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v3, v4, :cond_d

    .line 1942
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_f

    .line 1944
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_e

    .line 1946
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1948
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setTexture NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1950
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1976
    :cond_c
    :goto_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 1978
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1979
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_0

    .line 1981
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 1982
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto/16 :goto_0

    .line 1955
    :cond_e
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1956
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_3

    .line 1959
    :cond_f
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 1961
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_10

    .line 1963
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1965
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1967
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_3

    .line 1972
    :cond_10
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1973
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto :goto_3

    .line 1986
    :cond_11
    iget-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_12

    .line 1987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_0

    .line 1988
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1989
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "Task waiting time over time limit, request resume thread"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->resumeThread()V

    .line 1991
    iput-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_0
.end method

.method protected processMediaThumbnail(J)Z
    .locals 20
    .parameter "limitedTimeMillis"

    .prologue
    .line 430
    const/4 v8, 0x0

    .line 431
    .local v8, isProcessSideBySideVideo:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 432
    const/16 v17, 0x0

    .line 613
    :goto_0
    return v17

    .line 434
    :cond_0
    const/4 v5, 0x0

    .line 435
    .local v5, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 436
    const/4 v8, 0x1

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    check-cast v5, Lcom/htc/sunny2/common/CacheItem;

    .line 441
    .restart local v5       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    :cond_1
    :goto_1
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][FullFilmViewPreparator][processMediaThumbnail]isProcessSideBySideVideo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_2
    if-eqz v8, :cond_7

    .line 444
    iget-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 445
    .local v4, bmp:Landroid/graphics/Bitmap;
    if-nez v4, :cond_4

    .line 446
    const/16 v17, 0x0

    goto :goto_0

    .line 438
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    check-cast v5, Lcom/htc/sunny2/common/CacheItem;

    .restart local v5       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    goto :goto_1

    .line 450
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 451
    .local v16, width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 452
    .local v7, height:I
    mul-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    invoke-static {v4, v0, v7}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 454
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 455
    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 457
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 458
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    .line 467
    :cond_5
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 463
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 465
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    goto :goto_2

    .line 470
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #height:I
    .end local v16           #width:I
    :cond_7
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail - NotifyDataItemChanged for this item is not decoded"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/16 v17, 0x0

    invoke-virtual {v5}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyDataItemChanged(II)V

    .line 473
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 476
    :cond_8
    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 477
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Video thumbnail not in range"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 488
    .local v9, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v9, :cond_a

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 490
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 492
    :cond_a
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 495
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_c

    const/16 v6, 0x11

    .line 496
    .local v6, cacheSourceType:I
    :goto_3
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 497
    .local v15, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 498
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    if-eqz v15, :cond_b

    .line 502
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 505
    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 495
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_c
    const/4 v6, 0x1

    goto :goto_3

    .line 507
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 508
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 512
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    .line 514
    .local v14, reusableTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-eqz v14, :cond_1c

    .line 515
    iget-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 516
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_18

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    .line 526
    .local v10, oldTexture:Lcom/htc/sunnyCore/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_11

    .line 527
    sget-object v17, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v18, "oldTexture not fail texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 533
    :cond_f
    if-eqz v5, :cond_10

    .line 535
    invoke-virtual {v5}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 536
    const/4 v5, 0x0

    .line 538
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 539
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 541
    :cond_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 542
    .restart local v16       #width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 545
    .restart local v7       #height:I
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 546
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "video/mp4-3d"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 547
    new-instance v13, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    div-int/lit8 v19, v16, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v13, v0, v1, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 548
    .local v13, r:Landroid/graphics/Rect;
    move-object v11, v4

    .line 549
    .local v11, oldbmp:Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v13, v0, v7, v1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 550
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 554
    .end local v11           #oldbmp:Landroid/graphics/Bitmap;
    .end local v13           #r:Landroid/graphics/Rect;
    :cond_12
    iput-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 555
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 557
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 560
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v9, :cond_13

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 562
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 564
    :cond_13
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_15

    const/16 v6, 0x11

    .line 568
    .restart local v6       #cacheSourceType:I
    :goto_4
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 569
    .restart local v15       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 570
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    if-eqz v15, :cond_14

    .line 574
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 577
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 567
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_15
    const/4 v6, 0x1

    goto :goto_4

    .line 579
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 613
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #height:I
    .end local v10           #oldTexture:Lcom/htc/sunnyCore/Texture;
    .end local v16           #width:I
    :cond_17
    :goto_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 582
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v17

    if-nez v17, :cond_19

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 587
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "get null bitmap"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v3, 0x1

    .line 589
    .local v3, bNotifyFail:Z
    iget v12, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 590
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 591
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v9, :cond_1a

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 592
    const/4 v3, 0x0

    .line 594
    :cond_1a
    if-eqz v3, :cond_1b

    .line 595
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 596
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v12, v2}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    goto :goto_5

    .line 601
    .end local v3           #bNotifyFail:Z
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #pos:I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "No reusable texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 603
    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 604
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 606
    :cond_1d
    if-eqz v5, :cond_17

    .line 608
    invoke-virtual {v5}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 609
    const/4 v5, 0x0

    goto/16 :goto_5
.end method

.method public purgeTextureEQ()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3096
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3098
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-eqz v1, :cond_0

    .line 3099
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 3100
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_1

    .line 3101
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_1

    .line 3103
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 3104
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 3107
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 3110
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_3

    .line 3112
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3114
    :cond_3
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    .line 3116
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 3117
    .local v0, indexToNotify:I
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setExtremeQualityItemIndex(I)Z

    .line 3118
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v1, :cond_4

    if-eq v3, v0, :cond_4

    .line 3121
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v1, v5, v0, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 3122
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v1, v5, v0, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 3129
    :goto_0
    return-void

    .line 3126
    :cond_4
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][purgeTextureEQ]mUpdateListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extremeQualityDecodedItemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public purgeTextureMap(I)V
    .locals 10
    .parameter "currentIndex"

    .prologue
    .line 3000
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v7, :cond_5

    .line 3002
    move v1, p1

    .line 3004
    .local v1, currentIdx:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xc8

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3005
    .local v0, bStr:Ljava/lang/StringBuffer;
    const-string v7, "[HtcAlbum][FullFilmViewPreparator][purgeTextureMap]current idx="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", mTextureMap remove idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3007
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 3008
    .local v3, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 3009
    .local v5, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 3011
    .local v4, maxIndex:I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 3012
    :cond_0
    if-lt v4, v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 3014
    :cond_1
    move v2, v5

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_5

    .line 3016
    if-ne v1, v2, :cond_3

    .line 3014
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3021
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    .line 3022
    .local v6, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v7, :cond_2

    .line 3024
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    .line 3025
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3026
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 3028
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 3030
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v2, v9}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 3034
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3041
    .end local v0           #bStr:Ljava/lang/StringBuffer;
    .end local v1           #currentIdx:I
    .end local v2           #i:I
    .end local v3           #itemsCount:I
    .end local v4           #maxIndex:I
    .end local v5           #minIndex:I
    .end local v6           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_5
    return-void
.end method

.method public purgeTextureMapHQ(I)V
    .locals 11
    .parameter "currentIndex"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3047
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v7, :cond_5

    .line 3049
    move v1, p1

    .line 3051
    .local v1, currentIdx:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xc8

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3052
    .local v0, bStr:Ljava/lang/StringBuffer;
    const-string v7, "[HtcAlbum][FullFilmViewPreparator][purgeTextureMapHQ]current idx="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", mTextureMapHQ remove idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3054
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 3055
    .local v3, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 3056
    .local v5, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 3058
    .local v4, maxIndex:I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 3059
    :cond_0
    if-lt v4, v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 3061
    :cond_1
    move v2, v5

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_5

    .line 3063
    if-ne v1, v2, :cond_3

    .line 3061
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3068
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    .line 3069
    .local v6, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v7, :cond_2

    .line 3071
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    .line 3072
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3073
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 3075
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 3078
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v7, v9, v2, v10}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 3079
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v7, v9, v2, v10}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 3082
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3089
    .end local v0           #bStr:Ljava/lang/StringBuffer;
    .end local v1           #currentIdx:I
    .end local v2           #i:I
    .end local v3           #itemsCount:I
    .end local v4           #maxIndex:I
    .end local v5           #minIndex:I
    .end local v6           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_5
    return-void
.end method

.method protected queryTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "contentIndex"
    .parameter "quality"

    .prologue
    const/4 v0, 0x0

    .line 2949
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v1, :cond_2

    .line 2950
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preparator not initialize or no MediaList"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    :cond_1
    :goto_0
    return-object v0

    .line 2954
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_5

    .line 2955
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne p1, v1, :cond_3

    .line 2957
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    goto :goto_0

    .line 2958
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v1, :cond_4

    .line 2959
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0

    .line 2960
    :cond_4
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2961
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0

    .line 2963
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2964
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method public raisePriorityOnce()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 411
    return-void
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;
    .locals 15
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3174
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_1

    .line 3176
    :cond_0
    sget-object v13, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "refresh() - null mediaList "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p2, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_2

    .line 3180
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 3183
    :cond_2
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    .line 3184
    sget-object v12, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v13, "refresh() - new media list count is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    const/4 v12, 0x0

    .line 3382
    :goto_2
    return-object v12

    .line 3176
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 3189
    :cond_5
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v12, :cond_d

    .line 3190
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "decodeItem is null"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    :cond_6
    :goto_3
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_7

    .line 3218
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 3220
    :cond_7
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_8

    .line 3221
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 3224
    :cond_8
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v12, :cond_9

    .line 3226
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 3229
    :cond_9
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 3230
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 3233
    :cond_a
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 3234
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 3238
    :cond_b
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v12, :cond_c

    .line 3240
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 3241
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 3245
    :cond_c
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 3246
    .local v3, intervalCount:I
    if-gez v3, :cond_12

    .line 3247
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "visible range is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    const/4 v12, 0x0

    goto :goto_2

    .line 3191
    .end local v3           #intervalCount:I
    :cond_d
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 3192
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v12, :cond_e

    .line 3193
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    .line 3194
    :cond_e
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    if-eqz v12, :cond_10

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v12, v13, :cond_10

    .line 3195
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_11

    .line 3196
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    if-nez v12, :cond_f

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 3197
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - EnableQualityOptions, mTexturePool is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3199
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 3201
    :cond_f
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 3202
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - EnableQualityOptions, mTexturePoolHQ is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3204
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 3214
    :cond_10
    :goto_4
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 3207
    :cond_11
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 3208
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - mTexturePool is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3210
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_4

    .line 3250
    .restart local v3       #intervalCount:I
    :cond_12
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    .line 3251
    .local v4, itemCounts:I
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_13

    .line 3252
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 3254
    :cond_13
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_14

    .line 3255
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 3258
    :cond_14
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_15

    .line 3259
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 3260
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 3262
    :cond_15
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v12, v3

    .line 3263
    .local v1, difference:I
    if-ltz v1, :cond_1d

    .line 3264
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v13, v1, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 3265
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v12, :cond_1c

    .line 3266
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 3270
    :cond_16
    :goto_5
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 3271
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_17

    .line 3272
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 3273
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 3281
    :cond_17
    :goto_6
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_1a

    .line 3282
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v12, v4, :cond_18

    .line 3283
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 3284
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 3286
    :cond_18
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v3

    if-ltz v12, :cond_1f

    .line 3287
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v13, v3

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 3288
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v12, :cond_1e

    .line 3289
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 3293
    :cond_19
    :goto_7
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 3294
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_1a

    .line 3295
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 3296
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 3306
    :cond_1a
    :goto_8
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 3307
    .local v6, oldMap:Lcom/htc/sunnyCore/common/TextureMap;
    new-instance v12, Lcom/htc/sunnyCore/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 3308
    const/4 v8, 0x0

    .line 3309
    .local v8, originalOldMapSize:I
    const/4 v9, 0x0

    .line 3311
    .local v9, recycledCount:I
    if-eqz v6, :cond_24

    .line 3312
    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v8

    .line 3314
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .local v2, i:I
    :goto_9
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_21

    .line 3315
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    .line 3316
    .local v5, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-nez v5, :cond_20

    .line 3317
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    :cond_1b
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3267
    .end local v2           #i:I
    .end local v5           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .end local v6           #oldMap:Lcom/htc/sunnyCore/common/TextureMap;
    .end local v8           #originalOldMapSize:I
    .end local v9           #recycledCount:I
    :cond_1c
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_16

    .line 3268
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_5

    .line 3276
    :cond_1d
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 3278
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3290
    :cond_1e
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_19

    .line 3291
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto :goto_7

    .line 3299
    :cond_1f
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 3301
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 3320
    .restart local v2       #i:I
    .restart local v5       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .restart local v6       #oldMap:Lcom/htc/sunnyCore/common/TextureMap;
    .restart local v8       #originalOldMapSize:I
    .restart local v9       #recycledCount:I
    :cond_20
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/htc/sunnyCore/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    .line 3321
    .local v11, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v11, :cond_1b

    .line 3322
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3323
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 3326
    .end local v5           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .end local v11           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_21
    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .local v10, s:I
    :goto_b
    if-ge v2, v10, :cond_23

    .line 3327
    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    .line 3328
    .restart local v11       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v11, :cond_22

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v11, v12, :cond_22

    .line 3329
    invoke-virtual {v11}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3330
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 3326
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3333
    .end local v11           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_23
    const/4 v6, 0x0

    .line 3337
    .end local v2           #i:I
    .end local v10           #s:I
    :cond_24
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_29

    .line 3338
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    .line 3339
    .local v7, oldMapHQ:Lcom/htc/sunnyCore/common/TextureMap;
    new-instance v12, Lcom/htc/sunnyCore/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    .line 3340
    const/4 v8, 0x0

    .line 3341
    const/4 v9, 0x0

    .line 3342
    if-eqz v7, :cond_29

    .line 3343
    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v8

    .line 3344
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .restart local v2       #i:I
    :goto_c
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_27

    .line 3345
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    .line 3346
    .restart local v5       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-nez v5, :cond_26

    .line 3347
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    :cond_25
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3350
    :cond_26
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/sunnyCore/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    .line 3351
    .restart local v11       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v11, :cond_25

    .line 3352
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3353
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 3356
    .end local v5           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .end local v11           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_27
    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .restart local v10       #s:I
    :goto_e
    if-ge v2, v10, :cond_29

    .line 3357
    invoke-virtual {v7, v2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    .line 3358
    .restart local v11       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v11, :cond_28

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v11, v12, :cond_28

    .line 3359
    invoke-virtual {v11}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3360
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 3356
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3369
    .end local v2           #i:I
    .end local v7           #oldMapHQ:Lcom/htc/sunnyCore/common/TextureMap;
    .end local v10           #s:I
    .end local v11           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_29
    const/4 v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 3372
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 3374
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 3375
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_2a

    .line 3376
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 3378
    :cond_2a
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ItemsAttributes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 3379
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ItemsAttributes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 3380
    sget-boolean v12, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v12, :cond_2b

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh-"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    :cond_2b
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;
    .locals 1
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .parameter "refreshFlag"

    .prologue
    .line 3556
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestDecodeIdleAfterSideBySideImageDecoded(J)V
    .locals 0
    .parameter "idleDuration"

    .prologue
    .line 3462
    iput-wide p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 3463
    return-void
.end method

.method public resetDecodeDirection()V
    .locals 1

    .prologue
    .line 3475
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 3476
    return-void
.end method

.method public resetStopHQDecodeSincePurge()V
    .locals 1

    .prologue
    .line 3566
    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIndexChangeFlag:Z

    if-eqz v0, :cond_0

    .line 3568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStopHQDecodeSincePurge:Z

    .line 3570
    :cond_0
    return-void
.end method

.method public resumePreparator()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3496
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 3497
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 3498
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3499
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 3500
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 3502
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_1

    .line 3503
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 3505
    :cond_1
    return-void

    .line 3498
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDecodeDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 2927
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 2929
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 2931
    :cond_0
    return-void
.end method

.method public setDecodeStatusListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExtremeQualityItemIndex(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2972
    monitor-enter p0

    .line 2973
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2974
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2975
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2977
    monitor-exit p0

    .line 2994
    :goto_0
    return v1

    .line 2979
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v3, :cond_1

    .line 2981
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2984
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2985
    .local v0, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v3, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2986
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2987
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]extremeQualityToDecodeItemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 2992
    .end local v0           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 2994
    goto :goto_0
.end method

.method protected setFailTextureToCache(Z)V
    .locals 8
    .parameter "notifyFail"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2757
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2759
    if-eqz p1, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2761
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v0, :cond_0

    .line 2762
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2766
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 2769
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2771
    if-eqz p1, :cond_2

    .line 2772
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2773
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v0, :cond_2

    .line 2774
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2777
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 2778
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 2782
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v1, :cond_5

    .line 2783
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2784
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2786
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2787
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2806
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 2808
    :cond_5
    return-void

    .line 2789
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 2790
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2792
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2793
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2796
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_8

    .line 2797
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2798
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2799
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2800
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2801
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto :goto_0
.end method

.method public setFullScreenViewSpeedyFuFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2935
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIsFullScreenViewInSpeedyFu:Z

    .line 2936
    return-void
.end method

.method public setIsDoubleTapZooming(Z)V
    .locals 0
    .parameter "isDoubleTapZooming"

    .prologue
    .line 3582
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsDoubleTapZooming:Z

    .line 3583
    return-void
.end method

.method public setIsUploadEditor(Z)V
    .locals 0
    .parameter "isUploadEditor"

    .prologue
    .line 3450
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    .line 3451
    return-void
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    .line 221
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 224
    :cond_0
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreparatorIndexChangeFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 3574
    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-nez v0, :cond_0

    .line 3576
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bIndexChangeFlag:Z

    .line 3578
    :cond_0
    return-void
.end method

.method public setSideBySideBitmapReaderListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3454
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    .line 3455
    return-void
.end method

.method protected setSideBySideItemIndex(I)Z
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3134
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 3170
    :goto_0
    return v2

    .line 3138
    :cond_0
    monitor-enter p0

    .line 3140
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 3141
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 3142
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 3144
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 3147
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v2, :cond_2

    .line 3149
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 3152
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 3153
    .local v1, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v1, :cond_3

    .line 3155
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 3157
    :cond_3
    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object v2, v0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3158
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3159
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 3160
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]sideBySideToDecodeItemIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    :cond_4
    :goto_1
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 3162
    :cond_5
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 3163
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]sideBySideVideoToDecodeItemIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3168
    .end local v1           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3170
    goto :goto_0
.end method

.method protected setTexture(I)V
    .locals 7
    .parameter "scaladoBitmapHandle"

    .prologue
    const/4 v6, -0x1

    .line 2730
    if-nez p1, :cond_0

    .line 2732
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "scaladoBitmapHandle is 0"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setNullTexture()V

    .line 2754
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    .line 2738
    .local v3, texture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    invoke-static {v5, p1}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByScaladoBitmapAndRealize(II)Z

    .line 2739
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getScaladoBitmapWidth(I)I

    move-result v2

    .line 2740
    .local v2, scaladoBitmapWidth:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getScaladoBitmapHeight(I)I

    move-result v0

    .line 2741
    .local v0, ScaladoBitmapHeight:I
    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/Texture;->setWidth(I)V

    .line 2742
    invoke-virtual {v3, v0}, Lcom/htc/sunnyCore/Texture;->setHeight(I)V

    .line 2744
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v4

    .line 2745
    .local v4, width:I
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    .line 2747
    .local v1, height:I
    if-ne v4, v6, :cond_1

    if-ne v1, v6, :cond_1

    .line 2750
    move v4, v2

    .line 2751
    move v1, v0

    .line 2753
    :cond_1
    invoke-direct {p0, v3, v4, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->postSetTexture(Lcom/htc/sunnyCore/Texture;II)V

    goto :goto_0
.end method

.method protected setTexture(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bmp"

    .prologue
    const/4 v4, -0x1

    .line 2539
    if-nez p1, :cond_0

    .line 2540
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bmp is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setNullTexture()V

    .line 2559
    :goto_0
    return-void

    .line 2544
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 2546
    .local v1, texture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    invoke-static {v3, p1}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByAndroidBitmapAndRealize(ILandroid/graphics/Bitmap;)Z

    .line 2547
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Texture;->setWidth(I)V

    .line 2548
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Texture;->setHeight(I)V

    .line 2550
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    .line 2551
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    .line 2553
    .local v0, height:I
    if-ne v2, v4, :cond_1

    if-ne v0, v4, :cond_1

    .line 2555
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2556
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2558
    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->postSetTexture(Lcom/htc/sunnyCore/Texture;II)V

    goto :goto_0
.end method

.method public setTileTextureReadyListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTextureReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;

    .line 181
    return-void
.end method

.method public setVisibleRange(III)V
    .locals 7
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    const/4 v6, 0x0

    .line 2814
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v3, :cond_1

    .line 2815
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not initialize"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    :cond_0
    :goto_0
    return-void

    .line 2818
    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 2820
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Visible range setting error. beginIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2823
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2824
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2826
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2827
    .local v2, intervalCount:I
    if-gez v2, :cond_4

    .line 2828
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visible range is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2832
    :cond_4
    const/4 v0, 0x0

    .line 2833
    .local v0, contentCount:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v3, :cond_12

    .line 2834
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 2840
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_5

    .line 2841
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2844
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_6

    .line 2845
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex bigger than content list count, old index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2850
    :cond_6
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2852
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->raisePriorityOnce()V

    .line 2855
    :cond_7
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 2857
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v3, v0, :cond_8

    .line 2858
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2859
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2861
    :cond_8
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v3, v2

    .line 2862
    .local v1, difference:I
    if-ltz v1, :cond_14

    .line 2863
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2864
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v3, :cond_13

    .line 2865
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2869
    :cond_9
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2870
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_a

    .line 2871
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2872
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2879
    :cond_a
    :goto_2
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v3, :cond_d

    .line 2880
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v3, v0, :cond_b

    .line 2881
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2882
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2884
    :cond_b
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v2

    if-ltz v3, :cond_16

    .line 2885
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2886
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v3, :cond_15

    .line 2887
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2891
    :cond_c
    :goto_3
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2892
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_d

    .line 2893
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2894
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2903
    :cond_d
    :goto_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_e

    .line 2904
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setVisibleRange(II)V

    .line 2906
    :cond_e
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_11

    .line 2907
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v3, v3, -0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2908
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v3, v4, :cond_f

    .line 2909
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2911
    :cond_f
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2912
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-le v3, v4, :cond_10

    .line 2913
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2915
    :cond_10
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 2917
    :cond_11
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_0

    .line 2919
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    goto/16 :goto_0

    .line 2836
    .end local v1           #difference:I
    :cond_12
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mMediaList is null, contentCount is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2866
    .restart local v1       #difference:I
    :cond_13
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_9

    .line 2867
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_1

    .line 2875
    :cond_14
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2877
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top = bottom = 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2888
    :cond_15
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_c

    .line 2889
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto/16 :goto_3

    .line 2897
    :cond_16
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2899
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top = bottom = 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 14
    .parameter "mediaItem"

    .prologue
    .line 2219
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 2221
    :cond_0
    const/4 v0, 0x0

    .line 2223
    .local v0, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    const/16 v12, 0x1001

    .line 2224
    .local v12, type:I
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2225
    const/16 v12, 0x2001

    .line 2228
    :cond_1
    packed-switch v12, :pswitch_data_0

    .line 2234
    :goto_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v11

    .line 2235
    .local v11, mediaSourceType:I
    iput v11, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2236
    const/4 v10, 0x0

    .line 2237
    .local v10, hasError:Z
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    .line 2238
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2239
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2259
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 2260
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 2261
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 2262
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 2263
    if-nez v10, :cond_a

    .line 2264
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_9

    .line 2265
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 2271
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 2272
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 2284
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v10           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #type:I
    :goto_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2285
    return-void

    .line 2230
    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .restart local v12       #type:I
    :pswitch_0
    new-instance v0, Lcom/htc/sunny2/common/VideoDecodeItem;

    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/VideoDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    goto :goto_0

    .line 2241
    .restart local v10       #hasError:Z
    .restart local v11       #mediaSourceType:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: AssetFileDescriptor is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    const/4 v10, 0x1

    goto :goto_1

    .line 2244
    :cond_5
    const/4 v1, 0x3

    if-ne v11, v1, :cond_7

    .line 2245
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v13

    .line 2246
    .local v13, uriString:Ljava/lang/String;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2247
    iput-object v13, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto :goto_1

    .line 2249
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: Uri is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const/4 v10, 0x1

    goto :goto_1

    .line 2254
    .end local v13           #uriString:Ljava/lang/String;
    :cond_7
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v9

    .line 2255
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2256
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 2266
    .end local v9           #filePath:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 2268
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 2269
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    goto/16 :goto_2

    .line 2274
    :cond_a
    const/4 v8, 0x1

    .line 2275
    .local v8, bNotifyFail:Z
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2276
    const/4 v8, 0x0

    .line 2278
    :cond_b
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 2281
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v8           #bNotifyFail:Z
    .end local v10           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #type:I
    :cond_c
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread - Not supported Quality"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 2228
    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
    .end packed-switch
.end method

.method public unbind(I)V
    .locals 10
    .parameter "mediaListIdx"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 854
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unbind+"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v5, :cond_9

    .line 856
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "decodeItem is null"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v5, :cond_2

    .line 888
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 889
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v5, v7}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 892
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v5, :cond_3

    .line 893
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 894
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v5, v7}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 897
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v5, :cond_4

    .line 899
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 902
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v5, :cond_5

    .line 903
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    .line 906
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 907
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 909
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v5, :cond_6

    .line 911
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 912
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 915
    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v5, :cond_f

    .line 916
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Release mTextureMap+"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v0, v3, :cond_e

    .line 918
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5, v0}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 919
    .local v4, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v4, v5, :cond_8

    .line 920
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v5, :cond_7

    .line 922
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v5, v8, v0, v7}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 924
    :cond_7
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 925
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 917
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    .end local v0           #i:I
    .end local v3           #s:I
    .end local v4           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_9
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v5

    if-eq v5, v9, :cond_1

    .line 858
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v5, :cond_a

    .line 859
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    .line 860
    :cond_a
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v6, :cond_c

    .line 861
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v5, :cond_d

    .line 862
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v5, :cond_b

    .line 863
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 864
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unbind NG - mTexturePool is full"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 866
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 869
    :cond_b
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v5, :cond_c

    .line 870
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 871
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unbind NG - mTexturePoolHQ is full"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 873
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 884
    :cond_c
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 877
    :cond_d
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 878
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unbind NG - mTexturePool is full"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 880
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_2

    .line 928
    .restart local v0       #i:I
    .restart local v3       #s:I
    :cond_e
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 929
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Release mTextureMap-"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .end local v0           #i:I
    .end local v3           #s:I
    :cond_f
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v5, :cond_13

    .line 933
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .restart local v3       #s:I
    :goto_3
    if-ge v0, v3, :cond_12

    .line 934
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5, v0}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 935
    .restart local v4       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v4, :cond_11

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v4, v5, :cond_11

    .line 936
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v5, :cond_10

    .line 938
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v5, v8, v0, v7}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 940
    :cond_10
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 941
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 933
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 944
    .end local v4           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_12
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunnyCore/common/TextureMap;

    .line 947
    .end local v0           #i:I
    .end local v3           #s:I
    :cond_13
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v5, :cond_16

    .line 948
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Release mTexturePool"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v3

    .restart local v3       #s:I
    :goto_4
    if-ge v0, v3, :cond_15

    .line 950
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 951
    .restart local v4       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v4, :cond_14

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v4, v5, :cond_14

    .line 952
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 953
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 949
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 956
    .end local v4           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_15
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 959
    .end local v0           #i:I
    .end local v3           #s:I
    :cond_16
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v5, :cond_19

    .line 960
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Release mTexturePool"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v3

    .restart local v3       #s:I
    :goto_5
    if-ge v0, v3, :cond_18

    .line 962
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 963
    .restart local v4       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v4, :cond_17

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eq v4, v5, :cond_17

    .line 964
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 965
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 961
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 968
    .end local v4           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_18
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 972
    .end local v0           #i:I
    .end local v3           #s:I
    :cond_19
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eqz v5, :cond_1a

    .line 973
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 974
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunnyCore/Texture;

    .line 976
    :cond_1a
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    if-eqz v5, :cond_1c

    .line 977
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v5, :cond_1b

    .line 979
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    invoke-interface {v5, v8, v6, v7}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 981
    :cond_1b
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 982
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunnyCore/Texture;

    .line 984
    :cond_1c
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 985
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 987
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 988
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/common/CacheItem;

    .line 990
    .local v2, item:Lcom/htc/sunny2/common/CacheItem;
    invoke-virtual {v2}, Lcom/htc/sunny2/common/CacheItem;->release()V

    goto :goto_6

    .line 992
    .end local v2           #item:Lcom/htc/sunny2/common/CacheItem;
    :cond_1d
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 993
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Clear MediaDecode tasks."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1e
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    .line 996
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/common/CacheItem;

    .line 998
    .restart local v2       #item:Lcom/htc/sunny2/common/CacheItem;
    invoke-virtual {v2}, Lcom/htc/sunny2/common/CacheItem;->release()V

    goto :goto_7

    .line 1000
    .end local v2           #item:Lcom/htc/sunny2/common/CacheItem;
    :cond_1f
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1001
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Clear SideBySide Video tasks."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_20
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    .line 1005
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTileTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1008
    :cond_21
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_22

    .line 1009
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Release mContentList"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 1011
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 1014
    :cond_22
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 1015
    return-void
.end method

.method protected updateDecodeStatus(II)V
    .locals 2
    .parameter "index"
    .parameter "status"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;->onDecodeStatusUpdated(II)V

    .line 204
    :cond_0
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
