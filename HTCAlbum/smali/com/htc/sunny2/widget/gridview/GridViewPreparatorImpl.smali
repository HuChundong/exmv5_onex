.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    }
.end annotation


# static fields
.field protected static final ADDITIONAL_TEXTURE_BUFFER:I = 0x1

.field public static final BUNDLE_CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field public static final BUNDLE_DISABLE_LOAD_FROM_EXIF:Ljava/lang/String; = "BUNDLE_DISABLE_LOAD_FROM_EXIF"

.field public static final BUNDLE_ENABLE_QUALITY_OPTIONS:Ljava/lang/String; = "BUNDLE_ENABLE_QUALITY_OPTIONS"

.field public static final BUNDLE_ENABLE_SPECIAL_CACHE:Ljava/lang/String; = "ENABLE_SPECIAL_CACHE"

.field public static final BUNDLE_ENABLE_VIEW_DECODE:Ljava/lang/String; = "BUNDLE_ENABLE_VIEW_DECODE"

.field public static final BUNDLE_FLAG:Ljava/lang/String; = "BUNDLE_FLAG"

.field public static final BUNDLE_GRID_FILE_CACHE_SIZE:Ljava/lang/String; = "GRID_FILE_CACHE_SIZE"

.field public static final BUNDLE_GRID_MEM_CACHE_SIZE:Ljava/lang/String; = "GRID_MEM_CACHE_SIZE"

.field public static final BUNDLE_GRID_WIDTH_HEIGHT:Ljava/lang/String; = "GRID_WIDTH_HEIGHT"

.field public static final BUNDLE_IS_MULTIPLE_FOLDER_IMAGES:Ljava/lang/String; = "MULTIPLE_FOLDER_IMAGES"

.field public static final BUNDLE_SUB_INDEX:Ljava/lang/String; = "SUB_INDEX"

.field public static final BUNDLE_TEXTURE_FROM_VIEW:Ljava/lang/String; = "TEXTURE_FROM_VIEW"

.field public static final BUNDLE_TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field protected static final DEFAULT_MEM_CACHE_SIZE:I = 0xc8

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field public static final FLAG_CHECK_VIEW_UPDATE:I = 0x2

.field public static final HQ:I = 0x1

#the value of this static final field might be set in the static constructor
.field protected static final HTC_DEBUG:Z = false

.field protected static final ITEMS_PER_PAGE:I = 0x18

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

.field public static final LQ:I = 0x0

.field protected static final MAX_BITMAP_ARR_LIST_SIZE:I = 0x3

.field protected static final MAX_BITMAP_ARR_SIZE:I = 0x5

.field protected static final MAX_TASK_COUNT:I = 0x3

.field protected static final MAX_TASK_COUNT_IN_LAUNCH:I = 0x18

#the value of this static final field might be set in the static constructor
.field public static final MAX_TEXTURES_LIMIT_COUNT:I = 0x0

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6

.field private static final TAG_PREPARATOER:Ljava/lang/String; = "GridViewPreparator"

.field protected static final TAG_PREPARATOER_FOLDER:Ljava/lang/String; = "GridViewPreparator_Folder"


# instance fields
.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected TAG:Ljava/lang/String;

.field protected mBeginIndex:I

.field protected mBitmapList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mBorderColor:I

.field protected mBorderWidth:I

.field protected mBottomIndex:I

.field protected mCacheItemPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mCachePuller:Lcom/htc/sunny2/common/CachePuller;

.field protected mCacheSet:I

.field protected mColumnCount:I

.field protected mContext:Landroid/content/Context;

.field protected mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

.field protected mDecodeTaskPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/sunny2/common/ItrCacheDecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mDecoderCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

.field protected mDirection:I

.field protected mEnableAntiAlias:Z

.field protected mEnableBorder:Z

.field protected mEnableLoadFromExif:Z

.field protected mEnableQualityOptions:Z

.field protected mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/ItrCacheEncodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndIndex:I

.field protected mFailTexture:Lcom/htc/sunnyCore/Texture;

.field protected mFailTextureUsedCount:I

.field private mFileCacheSize:I

.field protected mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

.field protected mGridWidthHeight:I

.field protected mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

.field protected mIsCacheEnabled:Z

.field protected mIsInitial:Z

.field protected mIsMediaListExist:Z

.field protected mIsMutipleFolderImages:Z

.field private mIsPaused:Z

.field private mIsSkiaDecodeCacheBitmap:Z

.field protected mIsViewBackgroundDecode:Z

.field protected mItemCounts:I

.field protected mItemParams:Lcom/htc/sunnyCore/IParamsPreparator;

.field protected mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mIterationDecodeTaskPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/sunny2/common/IterationDecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationTaskGallery;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field protected mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/MediaDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field protected mOverlapImageSize:I

.field private mProcessTextureRealize:Z

.field protected mQualityList:[I

.field protected mSpecificCacheFlag:I

.field protected mStop:Z

.field protected mSunnyEnvironment:I

.field private mTaskWaitingTime:J

.field protected mTextureBufferRange:I

.field protected mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

.field protected mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

.field protected mTexturesCount:I

.field protected mTopIndex:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

.field protected mViewBundle:Landroid/os/Bundle;

.field protected mViewDecodeTaskPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/sunny2/common/ViewDecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

.field protected mViewDecodeThreadCallback:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

.field protected mViewFailTextureUsedCount:I

.field protected mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationTaskGallery;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

.field protected mViewTexturesCount:I

.field protected previousUpDirection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    .line 373
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    :goto_0
    sput v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    return-void

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-string v0, "GridViewPreparator"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    .line 287
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    .line 384
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    .line 385
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 386
    const/16 v0, 0xb2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 387
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 389
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 390
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 391
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 392
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 393
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 394
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 395
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 396
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 397
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 398
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 399
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 400
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 401
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 402
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 403
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 404
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 405
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    .line 406
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 407
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    .line 408
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 411
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 412
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    .line 413
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    .line 414
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 415
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 423
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    .line 424
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    .line 425
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    .line 426
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 427
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 428
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 429
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewBundle:Landroid/os/Bundle;

    .line 431
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 432
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThreadCallback:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

    .line 435
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 436
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 437
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    .line 438
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 439
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 440
    new-instance v0, Lcom/htc/sunny2/common/CachePuller;

    invoke-direct {v0}, Lcom/htc/sunny2/common/CachePuller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    .line 441
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 442
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 443
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 444
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 445
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 446
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    .line 447
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    .line 448
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    .line 449
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    .line 450
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableLoadFromExif:Z

    .line 457
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 458
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 459
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 461
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 462
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    .line 464
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 466
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mProcessTextureRealize:Z

    .line 468
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemParams:Lcom/htc/sunnyCore/IParamsPreparator;

    .line 469
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 470
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 471
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    .line 472
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    .line 473
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    .line 475
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 476
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeTaskPool:Ljava/util/LinkedList;

    .line 477
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationDecodeTaskPool:Ljava/util/LinkedList;

    .line 478
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeTaskPool:Ljava/util/LinkedList;

    .line 533
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItemPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3603
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 3604
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    .line 3678
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecoderCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

    .line 4351
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsSkiaDecodeCacheBitmap:Z

    .line 4358
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    .line 563
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 565
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 566
    return-void
.end method

.method private checkViewUpdate(II)V
    .locals 10
    .parameter "mediaListIdx"
    .parameter "itemIdx"

    .prologue
    .line 4300
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v7, :cond_1

    .line 4349
    :cond_0
    :goto_0
    return-void

    .line 4303
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v7, :cond_3

    .line 4305
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v8, "checkViewUpdate() NG - null texture map or null media list"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4309
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, p2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    .line 4310
    .local v6, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v7, p2, :cond_0

    .line 4317
    :cond_5
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v5

    .line 4318
    .local v5, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v7, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .line 4319
    .local v2, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v2, :cond_6

    if-nez v5, :cond_7

    .line 4321
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v7}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 4322
    .local v1, itemCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkViewUpdate] null media data or prototype, index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preparator item count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", media list count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4326
    .end local v1           #itemCount:I
    :cond_7
    invoke-interface {v5, v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v3

    .line 4327
    .local v3, newIdentifier:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, p2}, Lcom/htc/sunnyCore/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v4

    .line 4336
    .local v4, oldIdentifier:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v7, p2, :cond_8

    .line 4337
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 4339
    .local v0, currentIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4340
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 4347
    .end local v0           #currentIndex:I
    :cond_8
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, p2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4348
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0
.end method

.method private isTextureNullOrDirty(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 2334
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2335
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isProcessed(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V
    .locals 4
    .parameter "decodeItem"
    .parameter "indicatorFailed"

    .prologue
    const/4 v3, 0x0

    .line 4016
    if-nez p1, :cond_0

    .line 4017
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setSkipAndFailTextureToCurrent] DecodeItem is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    :goto_0
    return-void

    .line 4021
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4023
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 4024
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewBundle:Landroid/os/Bundle;

    invoke-interface {v0, v3, v1, v2}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 4026
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    .line 4027
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 4030
    :cond_2
    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4031
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto :goto_0
.end method

.method private textureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Ljava/util/List;Z)V
    .locals 3
    .parameter "oldMap"
    .parameter
    .parameter "isTextureToPool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/common/TextureMap;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1149
    .local p2, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    if-nez p1, :cond_1

    .line 1154
    :cond_0
    return-void

    .line 1151
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1152
    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunnyCore/Texture;Ljava/util/List;Z)V

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private textureRelease(Lcom/htc/sunnyCore/Texture;Ljava/util/List;Z)V
    .locals 2
    .parameter "texture"
    .parameter
    .parameter "isTextureToPool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/Texture;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1159
    .local p2, releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    if-nez p1, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne p1, v0, :cond_2

    .line 1164
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_0

    .line 1166
    :cond_2
    if-eqz p2, :cond_3

    .line 1167
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 1170
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_4

    .line 1171
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[textureRelease] mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1174
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 1177
    :cond_4
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1178
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0
.end method

.method private textureReuseForNewViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;)V
    .locals 9
    .parameter "viewOldMap"
    .parameter "viewNewMap"
    .parameter "medialist"

    .prologue
    .line 4272
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4297
    :cond_0
    return-void

    .line 4274
    :cond_1
    const/4 v2, 0x0

    .line 4275
    .local v2, originalOldMapSize:I
    const/4 v4, 0x0

    .line 4277
    .local v4, recycledCount:I
    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v2

    .line 4278
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .local v0, i:I
    :goto_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v0, v7, :cond_0

    .line 4279
    invoke-virtual {p0, v0, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(ILcom/htc/sunnyCore/IMediaList;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v3

    .line 4280
    .local v3, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    invoke-interface {p3, v0}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 4281
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v3, :cond_2

    if-nez v1, :cond_4

    .line 4282
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v8, "[textureReuseForNewViewTextureMap] Prototype or MediaData is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4286
    :cond_4
    invoke-interface {v3, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v6

    .line 4287
    .local v6, viewId:Ljava/lang/String;
    invoke-virtual {p1, v6}, Lcom/htc/sunnyCore/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    .line 4288
    .local v5, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v7, :cond_5

    .line 4290
    invoke-virtual {p2, v0, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 4291
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4292
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v5, v7, :cond_3

    .line 4293
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_1
.end method

.method private viewTextureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Z)V
    .locals 3
    .parameter "viewOldMap"
    .parameter "isTextureToPool"

    .prologue
    .line 4249
    if-nez p1, :cond_1

    .line 4254
    :cond_0
    return-void

    .line 4251
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4252
    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->viewTextureRelease(Lcom/htc/sunnyCore/Texture;Z)V

    .line 4251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private viewTextureRelease(Lcom/htc/sunnyCore/Texture;Z)V
    .locals 1
    .parameter "texture"
    .parameter "isTextureToPool"

    .prologue
    .line 4257
    if-nez p1, :cond_0

    .line 4269
    :goto_0
    return-void

    .line 4259
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne p1, v0, :cond_1

    .line 4260
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_0

    .line 4262
    :cond_1
    if-eqz p2, :cond_2

    .line 4263
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    .line 4265
    :cond_2
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 4266
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    goto :goto_0
.end method


# virtual methods
.method public bind(ILcom/htc/sunnyCore/IMediaList;I)V
    .locals 5
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 834
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Not initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-eqz v0, :cond_2

    .line 839
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->unbind(I)V

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    if-lez v0, :cond_3

    .line 843
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 844
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 846
    :cond_3
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 847
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_4

    .line 849
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    .line 852
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList has no media"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 855
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_7

    .line 861
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind() NG - not null texture pool or map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_7
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 864
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 866
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 868
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_8

    .line 869
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 872
    :cond_8
    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 873
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 875
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v0, :cond_9

    .line 876
    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    .line 877
    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    .line 878
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 879
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 882
    :cond_9
    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 883
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 885
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_a

    .line 886
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mTextureForDirtyUpdate != 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_a
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    .line 890
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 891
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bind] Buffer range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_b
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 894
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_f

    .line 895
    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 899
    :goto_1
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 900
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 901
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v0, :cond_c

    .line 902
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 905
    :cond_c
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 907
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    .line 909
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_d

    .line 910
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    .line 913
    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_e

    .line 914
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 915
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 916
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 919
    :cond_e
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 920
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind-, scroll speed 0, item count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 897
    :cond_f
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    goto :goto_1
.end method

.method protected cancelTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 6
    .parameter "decodeItem"

    .prologue
    const/4 v5, 0x0

    .line 3748
    if-nez p1, :cond_0

    .line 3787
    :goto_0
    return-void

    .line 3750
    :cond_0
    iget-object v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v3, v4, :cond_1

    .line 3751
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3752
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[cancelTask] NG - mTexturePool is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    iget-object v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3754
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 3758
    :cond_1
    const/4 v1, 0x0

    .line 3760
    .local v1, isTextureDirty:Z
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 3761
    .local v0, attribute:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v0, :cond_2

    .line 3762
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v3, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 3763
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v3, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 3764
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v3, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    .line 3765
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v1

    .line 3769
    :cond_2
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 3770
    .local v2, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v2, :cond_3

    .line 3771
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v2, v3, :cond_4

    .line 3772
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeTexture(II)Lcom/htc/sunnyCore/Texture;

    .line 3773
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 3786
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto :goto_0

    .line 3775
    :cond_4
    if-nez v1, :cond_3

    .line 3777
    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 3778
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3779
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[cancelTask] NG - mTexturePool is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3781
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_1
.end method

.method public checkImageUpdate(II)V
    .locals 9
    .parameter "mediaListIdx"
    .parameter "index"

    .prologue
    .line 1429
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    if-nez v6, :cond_2

    .line 1431
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate() NG - null texture map or null media list or null decodeItem"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_1
    :goto_0
    return-void

    .line 1435
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 1436
    .local v4, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v6, p2, :cond_1

    .line 1443
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v6, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 1445
    .local v1, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v1, :cond_5

    .line 1447
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 1448
    .local v0, itemCount:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate() NG = null media item, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator item count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    .end local v0           #itemCount:I
    :cond_5
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 1453
    .local v2, newIdentifier:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunnyCore/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v3

    .line 1455
    .local v3, oldIdentifier:Ljava/lang/String;
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1462
    :cond_6
    sget-boolean v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate - item index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newIdentifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldIdentifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_7
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 1464
    const-string v6, "TextureForFail"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1466
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v7, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1482
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    goto/16 :goto_0

    .line 1473
    :cond_9
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 1474
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 1475
    .local v5, textureId:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6, p2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureId(II)V

    .line 1476
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    goto/16 :goto_0
.end method

.method public deInit()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 783
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 789
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->release()V

    .line 791
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->release()V

    .line 795
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_4

    .line 799
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 800
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 803
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_5

    .line 804
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->release()V

    .line 805
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 808
    :cond_5
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 810
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v0, :cond_6

    .line 811
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 812
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 815
    :cond_6
    invoke-static {}, Lcom/htc/sunny2/common/CacheItem;->clearAll()V

    .line 818
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    .line 819
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 820
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailPreparator_deInit - Textures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected decodeFromCacheOrOriginalFile(J)Z
    .locals 21
    .parameter "limitedTimeMillis"

    .prologue
    .line 2751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v18

    .line 2752
    .local v18, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v18, :cond_0

    .line 2753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeFromCacheOrOriginalFile] MediaItem is null, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2756
    const/4 v2, 0x1

    .line 2830
    :goto_0
    return v2

    .line 2759
    :cond_0
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v11

    .line 2761
    .local v11, useService:Z
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2762
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v16

    .line 2763
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    if-eqz v16, :cond_1

    .line 2764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    check-cast v18, Lcom/htc/sunnyCore/IMediaData;

    .line 2765
    .restart local v18       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v18, :cond_2

    .line 2766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeFromCacheOrOriginalFile] MediaItem is null, subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2769
    const/4 v2, 0x1

    goto :goto_0

    .line 2772
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeFromCacheOrOriginalFile] MeidaDataList is null, subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2775
    const/4 v2, 0x1

    goto :goto_0

    .line 2778
    .end local v16           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_2
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v19

    .line 2779
    .local v19, sourceType:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2781
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2783
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2785
    :cond_3
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    .line 2786
    .local v5, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2787
    .local v15, identifier:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v2, :cond_4

    .line 2788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeFromCacheOrOriginalFile] MediaItem index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", quality "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_4
    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v4

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheItem(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)Lcom/htc/sunny2/common/CacheItem;

    move-result-object v12

    .line 2791
    .local v12, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 2793
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 2796
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 2799
    const/4 v14, -0x1

    .line 2800
    .local v14, contentWidth:I
    const/4 v13, -0x1

    .line 2802
    .local v13, contentHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v17

    .line 2803
    .local v17, mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v17, :cond_5

    .line 2804
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentWidth()I

    move-result v14

    .line 2805
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentHeight()I

    move-result v13

    .line 2808
    :cond_5
    const/4 v2, -0x1

    if-eq v14, v2, :cond_6

    const/4 v2, -0x1

    if-ne v13, v2, :cond_7

    .line 2809
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v14

    .line 2810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v13

    .line 2813
    :cond_7
    iput v14, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 2814
    iput v13, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 2816
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsSkiaDecodeCacheBitmap:Z

    iput-boolean v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    .line 2819
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v20

    check-cast v20, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    .line 2820
    .local v20, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setTaskIndex(I)V

    .line 2821
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    .line 2824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_8

    if-eqz v20, :cond_8

    .line 2826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 2828
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2830
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected decodeOriginalFile(J)Z
    .locals 22
    .parameter "limitedTimeMillis"

    .prologue
    .line 3100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v18

    .line 3101
    .local v18, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v18, :cond_0

    .line 3102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v15

    .line 3103
    .local v15, itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 3105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3106
    const/4 v2, 0x1

    .line 3185
    .end local v15           #itemCount:I
    :goto_0
    return v2

    .line 3108
    :cond_0
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3109
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v16

    .line 3110
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    if-eqz v16, :cond_1

    .line 3111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    check-cast v18, Lcom/htc/sunnyCore/IMediaData;

    .line 3112
    .restart local v18       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v18, :cond_2

    .line 3113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v15

    .line 3114
    .restart local v15       #itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 3116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3117
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3120
    .end local v15           #itemCount:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v15

    .line 3121
    .restart local v15       #itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] List is null, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 3123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3124
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3128
    .end local v15           #itemCount:I
    .end local v16           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_2
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    .line 3129
    .local v5, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 3130
    sget-boolean v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v2, :cond_3

    .line 3131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] decodeItem index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", quality "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :cond_3
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v19

    .line 3134
    .local v19, sourceType:I
    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    .line 3135
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunnyCore/IMediaData;)V

    .line 3136
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3138
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 3141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3142
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3144
    :cond_5
    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v4

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheItem(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)Lcom/htc/sunny2/common/CacheItem;

    move-result-object v21

    .line 3145
    .local v21, tempItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 3146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 3147
    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 3148
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 3149
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 3150
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3151
    invoke-interface/range {v18 .. v18}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 3152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 3153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 3154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 3155
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 3157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v17

    .line 3158
    .local v17, mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v17, :cond_6

    .line 3159
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentWidth()I

    move-result v13

    .line 3160
    .local v13, contentWidth:I
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentHeight()I

    move-result v12

    .line 3161
    .local v12, contentHeight:I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_6

    const/4 v2, -0x1

    if-eq v12, v2, :cond_6

    .line 3162
    move-object/from16 v0, v21

    iput v12, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 3163
    move-object/from16 v0, v21

    iput v13, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 3167
    .end local v12           #contentHeight:I
    .end local v13           #contentWidth:I
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v20

    check-cast v20, Lcom/htc/sunny2/common/IterationDecodeTask;

    .line 3168
    .local v20, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 3169
    invoke-virtual/range {v20 .. v21}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    .line 3171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v2

    or-int/lit8 v14, v2, 0x20

    .line 3172
    .local v14, decodeFlags:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableLoadFromExif:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-nez v2, :cond_7

    .line 3174
    or-int/lit8 v14, v14, 0x10

    .line 3176
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecoderCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V

    .line 3177
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 3179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_8

    if-eqz v20, :cond_8

    .line 3181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 3183
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 3184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3185
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected decodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 3
    .parameter "decodeItem"

    .prologue
    .line 3985
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Lcom/htc/sunny2/common/ViewDecodeTask;

    move-result-object v0

    .line 3986
    .local v0, task:Lcom/htc/sunny2/common/ViewDecodeTask;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 3987
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[decodeViewTask] View decode thread or task is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    invoke-virtual {p0, v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 3993
    :goto_0
    return-void

    .line 3991
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 3992
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V

    goto :goto_0
.end method

.method protected doDecodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 4
    .parameter "decodeItem"

    .prologue
    const/4 v3, 0x1

    .line 3803
    const/4 v0, 0x0

    .line 3804
    .local v0, loopCount:I
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 3806
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3808
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnViewToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 3809
    iget v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3822
    :cond_0
    return-void

    .line 3817
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 3818
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 3820
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected doProcessViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 9
    .parameter "decodeItem"

    .prologue
    const/4 v8, 0x0

    .line 4063
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4118
    :goto_0
    return-void

    .line 4066
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 4068
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/common/IterationTask;

    .line 4069
    .local v1, itrTask:Lcom/htc/sunnyCore/common/IterationTask;
    instance-of v5, v1, Lcom/htc/sunny2/common/ViewDecodeTask;

    if-nez v5, :cond_1

    .line 4070
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] Unsupported task, idx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 4074
    check-cast v3, Lcom/htc/sunny2/common/ViewDecodeTask;

    .line 4075
    .local v3, task:Lcom/htc/sunny2/common/ViewDecodeTask;
    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskIndex()I

    move-result v0

    .line 4076
    .local v0, contentIndex:I
    sget-boolean v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", idx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 4079
    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->isTaskFinished()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4080
    iput v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 4082
    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 4083
    .local v4, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v4, v5, :cond_3

    .line 4084
    iput-object v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 4089
    :goto_1
    iget-object v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_4

    .line 4090
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] No reusable texture. texture used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pool "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", map "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", texture fail used count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", view id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getViewId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    invoke-virtual {p0, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 4093
    invoke-direct {p0, p1, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V

    goto/16 :goto_0

    .line 4086
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAViewTextureToReuse()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iput-object v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_1

    .line 4097
    :cond_4
    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 4098
    .local v2, oldTexture:Lcom/htc/sunnyCore/Texture;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v2, v5, :cond_5

    .line 4099
    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeViewTexture(II)Lcom/htc/sunnyCore/Texture;

    .line 4100
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    .line 4104
    :cond_5
    invoke-virtual {p0, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setViewTexture(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 4106
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 4107
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 4108
    .end local v2           #oldTexture:Lcom/htc/sunnyCore/Texture;
    .end local v4           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_6
    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v5

    sget-object v6, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->CANCEL:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    if-ne v5, v6, :cond_7

    .line 4110
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 4112
    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_0

    .line 4114
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] task not finished or cancel, incorret status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->release()V

    .line 4116
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto/16 :goto_0
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;
    .locals 9
    .parameter "newContentIndex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2417
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 2418
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2420
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2462
    :cond_0
    :goto_0
    return-object v0

    .line 2422
    :cond_1
    const/4 v0, 0x0

    .line 2423
    .local v0, candidate:Lcom/htc/sunnyCore/Texture;
    const/4 v1, -0x1

    .line 2424
    .local v1, contentIndex:I
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_3

    .line 2425
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 2426
    if-eq v1, v6, :cond_2

    .line 2428
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2429
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 2430
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 2433
    :cond_2
    if-ne v1, v6, :cond_3

    .line 2434
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 2435
    if-eq v1, v6, :cond_3

    .line 2437
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2438
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_3

    .line 2439
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 2444
    :cond_3
    if-ne v1, v6, :cond_4

    .line 2445
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 2446
    if-eq v1, v6, :cond_4

    .line 2448
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2449
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v0, v2, :cond_6

    .line 2450
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    .line 2459
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_0

    .line 2460
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0

    .line 2452
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_4

    .line 2453
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected findAViewTextureToReuse()Lcom/htc/sunnyCore/Texture;
    .locals 9

    .prologue
    .line 3908
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 3909
    .local v0, candidate:Lcom/htc/sunnyCore/Texture;
    if-eqz v0, :cond_0

    move-object v5, v0

    .line 3946
    :goto_0
    return-object v5

    .line 3913
    :cond_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_1

    .line 3914
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    .line 3916
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    goto :goto_0

    .line 3919
    :cond_1
    const/4 v1, -0x1

    .line 3921
    .local v1, contentIndex:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->getMinValidIndex()I

    move-result v6

    sub-int v2, v5, v6

    .line 3922
    .local v2, outOfBufferRangeFront:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->getMaxValidIndex()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    sub-int v3, v5, v6

    .line 3923
    .local v3, outOfBufferRangeRear:I
    const/4 v4, 0x0

    .line 3924
    .local v4, searchRangeCount:I
    if-lez v2, :cond_2

    .line 3925
    add-int/2addr v4, v2

    .line 3927
    :cond_2
    if-lez v3, :cond_3

    .line 3928
    add-int/2addr v4, v3

    .line 3931
    :cond_3
    :goto_1
    if-lez v4, :cond_7

    .line 3932
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 3933
    const/4 v5, -0x1

    if-eq v1, v5, :cond_4

    .line 3934
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 3935
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v0, v5, :cond_5

    .line 3936
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    .line 3944
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3938
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v5, :cond_6

    .line 3939
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewBundle:Landroid/os/Bundle;

    invoke-interface {v5, v6, v1, v7}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_6
    move-object v5, v0

    .line 3941
    goto :goto_0

    :cond_7
    move-object v5, v0

    .line 3946
    goto :goto_0
.end method

.method protected findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 5
    .parameter "decodeItem"

    .prologue
    .line 2135
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    if-eqz v4, :cond_2

    .line 2136
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 2137
    .local v3, quality:I
    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInVisibleRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2146
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #quality:I
    :cond_0
    :goto_1
    return-void

    .line 2138
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #quality:I
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInBufferRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2141
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #quality:I
    :cond_2
    const/4 v3, 0x0

    .line 2142
    .restart local v3       #quality:I
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 2143
    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInVisibleRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2144
    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInBufferRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1
.end method

.method protected findAnItemToDecodeInBufferRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z
    .locals 7
    .parameter "decodeItem"
    .parameter "quality"

    .prologue
    const/4 v4, 0x1

    .line 2290
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v3, v5, -0x1

    .line 2291
    .local v3, searchUpIndex:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v2, v5, 0x1

    .line 2292
    .local v2, searchDownIndex:I
    const/4 v1, 0x0

    .line 2293
    .local v1, loopCount:I
    :cond_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v3, v5, :cond_1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v3, v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v2, v5, :cond_a

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v2, v5, :cond_a

    .line 2295
    :cond_2
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v3, v5, :cond_6

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v3, v5, :cond_6

    .line 2296
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v3, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2297
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2298
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2299
    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 2300
    iget v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 2301
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 2329
    .end local v0           #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_4
    :goto_0
    return v4

    .line 2305
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 2307
    :cond_6
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v2, v5, :cond_9

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v2, v5, :cond_9

    .line 2308
    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v2, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2309
    :cond_7
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2310
    iput v2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2311
    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 2312
    iget v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 2313
    .restart local v0       #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto :goto_0

    .line 2317
    .end local v0           #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 2319
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 2320
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v1, v5, :cond_0

    .line 2321
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_a
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v4, v5, :cond_b

    .line 2326
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "bottom index is smaller than top index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_b
    const/4 v4, -0x1

    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2329
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected findAnItemToDecodeInVisibleRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z
    .locals 12
    .parameter "decodeItem"
    .parameter "quality"

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2156
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_4

    .line 2157
    :cond_0
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 2158
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .local v4, i:I
    :goto_0
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v4, v9, :cond_8

    .line 2160
    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2162
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2163
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2164
    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 2165
    iget v8, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 2166
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 2283
    .end local v0           #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_2
    :goto_1
    return v7

    .line 2158
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2172
    .end local v4           #i:I
    :cond_4
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 2173
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 2174
    .local v3, end:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v2, v3, v9

    .line 2175
    .local v2, count:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v1, v9, v2

    .line 2176
    .local v1, begin:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v2

    add-int/lit8 v2, v9, -0x1

    .line 2177
    move v4, v1

    .restart local v4       #i:I
    :goto_2
    if-gt v4, v3, :cond_8

    .line 2179
    if-gez v4, :cond_5

    const/4 v4, 0x0

    .line 2181
    :cond_5
    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2182
    :cond_6
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2183
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2184
    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 2185
    iget v8, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 2186
    .restart local v0       #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto :goto_1

    .line 2190
    .end local v0           #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 2191
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v2, v9

    if-nez v9, :cond_b

    .line 2193
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v1, v9, :cond_a

    .line 2212
    .end local v1           #begin:I
    .end local v2           #count:I
    .end local v3           #end:I
    :cond_8
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_17

    .line 2214
    const/4 v5, 0x1

    .local v5, j:I
    :goto_3
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v5, v9, :cond_17

    .line 2216
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_9

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_f

    .line 2217
    :cond_9
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_4
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v4, v9, :cond_13

    .line 2219
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v9, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v6

    .line 2220
    .local v6, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-nez v6, :cond_d

    .line 2221
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IMediaData is null, item index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v10}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iput v11, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 2195
    .end local v5           #j:I
    .end local v6           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .restart local v1       #begin:I
    .restart local v2       #count:I
    .restart local v3       #end:I
    :cond_a
    add-int/lit8 v3, v1, -0x1

    .line 2196
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v3, v9

    add-int/lit8 v1, v9, 0x1

    .line 2198
    if-ltz v1, :cond_8

    .line 2200
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ge v1, v9, :cond_c

    .line 2201
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int v2, v9, v1

    .line 2202
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 2206
    :goto_5
    add-int/lit8 v4, v1, -0x1

    .line 2177
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2204
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 2226
    .end local v1           #begin:I
    .end local v2           #count:I
    .end local v3           #end:I
    .restart local v5       #j:I
    .restart local v6       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_d
    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_e

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    if-nez v9, :cond_e

    .line 2228
    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_e

    .line 2229
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2230
    iput v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    .line 2217
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 2236
    .end local v6           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_f
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 2237
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 2238
    .restart local v3       #end:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v2, v3, v9

    .line 2239
    .restart local v2       #count:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v1, v9, v2

    .line 2240
    .restart local v1       #begin:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v2

    add-int/lit8 v2, v9, -0x1

    .line 2241
    move v4, v1

    :goto_6
    if-gt v4, v3, :cond_13

    .line 2243
    if-gez v4, :cond_10

    const/4 v4, 0x0

    .line 2245
    :cond_10
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v9, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v6

    .line 2246
    .restart local v6       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-nez v6, :cond_11

    .line 2247
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IMediaData is null, item index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v10}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iput v11, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 2252
    :cond_11
    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_12

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    if-nez v9, :cond_12

    .line 2254
    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_12

    .line 2255
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 2256
    iput v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    .line 2260
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 2261
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v2, v9

    if-nez v9, :cond_15

    .line 2263
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v1, v9, :cond_14

    .line 2214
    .end local v1           #begin:I
    .end local v2           #count:I
    .end local v3           #end:I
    .end local v6           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 2265
    .restart local v1       #begin:I
    .restart local v2       #count:I
    .restart local v3       #end:I
    .restart local v6       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_14
    add-int/lit8 v3, v1, -0x1

    .line 2266
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v3, v9

    add-int/lit8 v1, v9, 0x1

    .line 2268
    if-ltz v1, :cond_13

    .line 2270
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ge v1, v9, :cond_16

    .line 2271
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int v2, v9, v1

    .line 2272
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 2276
    :goto_7
    add-int/lit8 v4, v1, -0x1

    .line 2241
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 2274
    :cond_16
    const/4 v2, 0x0

    goto :goto_7

    .end local v1           #begin:I
    .end local v2           #count:I
    .end local v3           #end:I
    .end local v5           #j:I
    .end local v6           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_17
    move v7, v8

    .line 2283
    goto/16 :goto_1
.end method

.method protected findAnViewToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 10
    .parameter "decodeItem"

    .prologue
    const/4 v8, 0x0

    .line 3826
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v7, :cond_2

    .line 3827
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 3828
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .local v3, i:I
    :goto_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v7, :cond_5

    .line 3830
    invoke-virtual {p0, v3, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_1

    .line 3832
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 3905
    :goto_1
    return-void

    .line 3828
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3837
    .end local v3           #i:I
    :cond_2
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 3838
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 3839
    .local v2, end:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v1, v2, v7

    .line 3840
    .local v1, count:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v0, v7, v1

    .line 3841
    .local v0, begin:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v7, v1

    add-int/lit8 v1, v7, -0x1

    .line 3842
    move v3, v0

    .restart local v3       #i:I
    :goto_2
    if-gt v3, v2, :cond_5

    .line 3844
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 3846
    :cond_3
    invoke-virtual {p0, v3, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_4

    .line 3847
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    .line 3850
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 3851
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v7, v1, v7

    if-nez v7, :cond_a

    .line 3853
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v0, v7, :cond_9

    .line 3872
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    :cond_5
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v6, v7, -0x1

    .line 3873
    .local v6, searchUpIndex:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v5, v7, 0x1

    .line 3874
    .local v5, searchDownIndex:I
    const/4 v4, 0x0

    .line 3875
    .local v4, loopCount:I
    :cond_6
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v6, v7, :cond_7

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v6, v7, :cond_8

    :cond_7
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v5, v7, :cond_10

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v5, v7, :cond_10

    .line 3877
    :cond_8
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v6, v7, :cond_d

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v6, v7, :cond_d

    .line 3878
    invoke-virtual {p0, v6, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_c

    .line 3879
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 3880
    iput v6, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    .line 3855
    .end local v4           #loopCount:I
    .end local v5           #searchDownIndex:I
    .end local v6           #searchUpIndex:I
    .restart local v0       #begin:I
    .restart local v1       #count:I
    .restart local v2       #end:I
    :cond_9
    add-int/lit8 v2, v0, -0x1

    .line 3856
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v7, v2, v7

    add-int/lit8 v0, v7, 0x1

    .line 3858
    if-ltz v0, :cond_5

    .line 3860
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ge v0, v7, :cond_b

    .line 3861
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int v1, v7, v0

    .line 3862
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 3866
    :goto_3
    add-int/lit8 v3, v0, -0x1

    .line 3842
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3864
    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    .line 3884
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    .restart local v4       #loopCount:I
    .restart local v5       #searchDownIndex:I
    .restart local v6       #searchUpIndex:I
    :cond_c
    add-int/lit8 v6, v6, -0x1

    .line 3886
    :cond_d
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v5, v7, :cond_f

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v5, v7, :cond_f

    .line 3887
    invoke-virtual {p0, v5, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_e

    .line 3888
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 3889
    iput v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 3893
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 3895
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 3896
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v4, v7, :cond_6

    .line 3897
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    :cond_10
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v7, v8, :cond_11

    .line 3902
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v8, "bottom index is smaller than top index"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    :cond_11
    const/4 v7, -0x1

    iput v7, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1
.end method

.method public freeOutOfRange(III)V
    .locals 11
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 1519
    sget-boolean v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[freeOutOfRange]+ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_0
    const/4 v0, 0x0

    .line 1523
    .local v0, freeCount:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v8, :cond_7

    .line 1525
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 1526
    .local v3, itemsCount:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 1527
    .local v5, minIndex:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 1529
    .local v4, maxIndex:I
    if-gez v5, :cond_1

    .line 1530
    const/4 v5, 0x0

    .line 1532
    :cond_1
    if-lt v4, v3, :cond_2

    .line 1533
    add-int/lit8 v4, v3, -0x1

    .line 1535
    :cond_2
    move v1, v5

    .local v1, i:I
    :goto_0
    if-gt v1, v4, :cond_7

    .line 1537
    if-gt p2, v1, :cond_4

    if-gt v1, p3, :cond_4

    .line 1535
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1543
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    .line 1544
    .local v7, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v7, :cond_3

    .line 1546
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    .line 1547
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v7, v8, :cond_6

    .line 1548
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v8, :cond_5

    .line 1549
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v1, v10}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1551
    :cond_5
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1552
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1554
    add-int/lit8 v0, v0, 0x1

    .line 1558
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v2

    .line 1559
    .local v2, itemAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v2, :cond_3

    .line 1560
    const/4 v8, -0x1

    invoke-virtual {v2, v1, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 1561
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 1562
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    .line 1563
    const/4 v8, -0x1

    invoke-virtual {v2, v1, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 1564
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    goto :goto_1

    .line 1556
    .end local v2           #itemAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_6
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_2

    .line 1572
    .end local v1           #i:I
    .end local v3           #itemsCount:I
    .end local v4           #maxIndex:I
    .end local v5           #minIndex:I
    .end local v7           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v8, :cond_9

    .line 1574
    const/4 v1, 0x0

    .restart local v1       #i:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v6

    .local v6, s:I
    :goto_3
    if-ge v1, v6, :cond_9

    .line 1576
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    .line 1577
    .restart local v7       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v7, v8, :cond_8

    .line 1579
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1580
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1582
    add-int/lit8 v0, v0, 0x1

    .line 1574
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1587
    .end local v1           #i:I
    .end local v6           #s:I
    .end local v7           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_9
    sget-boolean v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v8, :cond_a

    .line 1588
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[freeOutOfRange]- image texture free count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", texture count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", fail count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_a
    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v8, :cond_15

    .line 1592
    const/4 v0, 0x0

    .line 1594
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v8, :cond_11

    .line 1595
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 1596
    .restart local v3       #itemsCount:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 1597
    .restart local v5       #minIndex:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 1599
    .restart local v4       #maxIndex:I
    if-gez v5, :cond_b

    .line 1600
    const/4 v5, 0x0

    .line 1602
    :cond_b
    if-lt v4, v3, :cond_c

    .line 1603
    add-int/lit8 v4, v3, -0x1

    .line 1605
    :cond_c
    move v1, v5

    .restart local v1       #i:I
    :goto_4
    if-gt v1, v4, :cond_11

    .line 1607
    if-gt p2, v1, :cond_e

    if-gt v1, p3, :cond_e

    .line 1605
    :cond_d
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1613
    :cond_e
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    .line 1614
    .restart local v7       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v7, :cond_d

    .line 1616
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    .line 1617
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v7, v8, :cond_10

    .line 1618
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v8, :cond_f

    .line 1619
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v1, v10}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1621
    :cond_f
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1622
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    .line 1624
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1626
    :cond_10
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_5

    .line 1634
    .end local v1           #i:I
    .end local v3           #itemsCount:I
    .end local v4           #maxIndex:I
    .end local v5           #minIndex:I
    .end local v7           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_11
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v8, :cond_14

    .line 1636
    const/4 v1, 0x0

    .restart local v1       #i:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v6

    .restart local v6       #s:I
    :goto_6
    if-ge v1, v6, :cond_14

    .line 1638
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    .line 1639
    .restart local v7       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v7, :cond_13

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v7, v8, :cond_13

    .line 1641
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1642
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    .line 1644
    add-int/lit8 v0, v0, 0x1

    .line 1636
    :cond_12
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1645
    :cond_13
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v7, v8, :cond_12

    .line 1646
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_7

    .line 1651
    .end local v1           #i:I
    .end local v6           #s:I
    .end local v7           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_14
    sget-boolean v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v8, :cond_15

    .line 1652
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[freeOutOfRange]- view texture free count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", texture count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", fail count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_15
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;
    .locals 7
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 1488
    const/4 v1, 0x0

    .line 1489
    .local v1, texture:Lcom/htc/sunnyCore/Texture;
    const/4 v0, 0x0

    .line 1490
    .local v0, subIdx:I
    const/4 v2, -0x1

    .line 1491
    .local v2, viewIdx:I
    if-eqz p3, :cond_0

    .line 1492
    const-string v4, "SUB_INDEX"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1493
    const-string v4, "TEXTURE_FROM_VIEW"

    invoke-virtual {p3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1496
    :cond_0
    if-eq v2, v6, :cond_2

    .line 1497
    invoke-virtual {p0, p2, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 1498
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v1, v4, :cond_1

    move-object v3, v1

    .line 1513
    :cond_1
    :goto_0
    return-object v3

    .line 1505
    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_4

    .line 1506
    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 1510
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v1, v4, :cond_1

    move-object v3, v1

    .line 1511
    goto :goto_0

    .line 1508
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getBindedMediaList()Lcom/htc/sunnyCore/IMediaList;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    return-object v0
.end method

.method protected getCacheItem(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)Lcom/htc/sunny2/common/CacheItem;
    .locals 11
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"
    .parameter "hasSubList"

    .prologue
    .line 535
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItemPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/CacheItem;

    .line 536
    .local v1, item:Lcom/htc/sunny2/common/CacheItem;
    if-nez v1, :cond_0

    .line 537
    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    .end local v1           #item:Lcom/htc/sunny2/common/CacheItem;
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    .line 543
    :goto_0
    return-object v1

    .restart local v1       #item:Lcom/htc/sunny2/common/CacheItem;
    :cond_0
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 539
    invoke-virtual/range {v1 .. v9}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 540
    move/from16 v0, p9

    iput-boolean v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    goto :goto_0
.end method

.method protected getCacheSet(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 3669
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 3670
    .local v0, cacheSet:I
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v1

    .line 3671
    .local v1, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v1, :cond_0

    .line 3672
    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getCacheSet()I

    move-result v0

    .line 3675
    :cond_0
    return v0
.end method

.method protected getIMediaDataByIndex(Lcom/htc/sunnyCore/IMediaList;II)Lcom/htc/sunnyCore/IMediaData;
    .locals 7
    .parameter "mediaList"
    .parameter "index"
    .parameter "subIdx"

    .prologue
    const/4 v3, 0x0

    .line 3711
    if-nez p1, :cond_1

    .line 3712
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[getMediaDataByIndex] MediaList is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 3736
    :cond_0
    :goto_0
    return-object v1

    .line 3715
    :cond_1
    invoke-interface {p1, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 3716
    .local v1, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v1, :cond_2

    .line 3717
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 3718
    .local v0, itemCount:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMediaDataByIndex] MediaItem is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparator list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", media list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 3719
    goto :goto_0

    .line 3721
    .end local v0           #itemCount:I
    :cond_2
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3722
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3723
    .local v2, subList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    if-eqz v2, :cond_3

    .line 3724
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    check-cast v1, Lcom/htc/sunnyCore/IMediaData;

    .line 3725
    .restart local v1       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v1, :cond_0

    .line 3726
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 3727
    .restart local v0       #itemCount:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMediaDataByIndex] MediaItem is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subIdx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparator list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", media list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 3728
    goto/16 :goto_0

    .line 3731
    .end local v0           #itemCount:I
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 3732
    .restart local v0       #itemCount:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMediaDataByIndex] List is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subIdx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparator list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", media list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 3733
    goto/16 :goto_0
.end method

.method protected getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    .locals 1
    .parameter "subIdx"

    .prologue
    .line 2361
    const/4 v0, 0x0

    .line 2362
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    packed-switch p1, :pswitch_data_0

    .line 2375
    :goto_0
    return-object v0

    .line 2364
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 2365
    goto :goto_0

    .line 2367
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 2368
    goto :goto_0

    .line 2370
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 2371
    goto :goto_0

    .line 2362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;
    .locals 2
    .parameter "taskId"

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, task:Lcom/htc/sunnyCore/common/IterationTask;
    packed-switch p1, :pswitch_data_0

    :cond_0
    move-object v1, v0

    .line 509
    :goto_0
    return-object v1

    .line 484
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationDecodeTaskPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/htc/sunnyCore/common/IterationTask;
    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    .line 485
    .restart local v0       #task:Lcom/htc/sunnyCore/common/IterationTask;
    if-nez v0, :cond_0

    .line 486
    new-instance v1, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeTaskPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/htc/sunnyCore/common/IterationTask;
    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    .line 491
    .restart local v0       #task:Lcom/htc/sunnyCore/common/IterationTask;
    if-nez v0, :cond_0

    .line 492
    new-instance v1, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    goto :goto_0

    .line 496
    :pswitch_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/htc/sunnyCore/common/IterationTask;
    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    .line 497
    .restart local v0       #task:Lcom/htc/sunnyCore/common/IterationTask;
    if-nez v0, :cond_0

    .line 498
    new-instance v1, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    goto :goto_0

    .line 502
    :pswitch_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeTaskPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/htc/sunnyCore/common/IterationTask;
    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    .line 503
    .restart local v0       #task:Lcom/htc/sunnyCore/common/IterationTask;
    if-nez v0, :cond_0

    .line 504
    new-instance v1, Lcom/htc/sunny2/common/ViewDecodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ViewDecodeTask;-><init>()V

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(ILcom/htc/sunnyCore/IMediaList;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v0

    return-object v0
.end method

.method protected getPreparatorPrototype(ILcom/htc/sunnyCore/IMediaList;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 8
    .parameter "nIndex"
    .parameter "mediaList"

    .prologue
    .line 585
    const/4 v3, 0x0

    .line 586
    .local v3, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-nez p2, :cond_0

    move-object v4, v3

    .line 604
    .end local v3           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .local v4, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    :goto_0
    return-object v4

    .line 589
    .end local v4           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .restart local v3       #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    :cond_0
    instance-of v5, p2, Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;

    if-eqz v5, :cond_1

    move-object v2, p2

    .line 591
    check-cast v2, Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;

    .line 594
    .local v2, factory:Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #factory:Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;
    :cond_1
    :goto_1
    move-object v4, v3

    .line 604
    .end local v3           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .restart local v4       #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    goto :goto_0

    .line 597
    .end local v4           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .restart local v2       #factory:Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;
    .restart local v3       #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    :catch_0
    move-exception v1

    .line 599
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][GridViewPreparatorImpl][getPreparatorPrototype]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;
    .locals 4
    .parameter "subIdx"

    .prologue
    .line 3518
    const/4 v0, 0x0

    .line 3519
    .local v0, map:Lcom/htc/sunnyCore/common/TextureMap;
    packed-switch p1, :pswitch_data_0

    .line 3530
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTextureMap] Error subIndex, subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :goto_0
    return-object v0

    .line 3521
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 3522
    goto :goto_0

    .line 3524
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    .line 3525
    goto :goto_0

    .line 3527
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    .line 3528
    goto :goto_0

    .line 3519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getViewBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "prototypeId"

    .prologue
    .line 4379
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 4380
    .local v1, bitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4384
    :goto_0
    return-object v0

    .line 4382
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 4384
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected getViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Lcom/htc/sunny2/common/ViewDecodeTask;
    .locals 7
    .parameter "decodeItem"

    .prologue
    .line 3996
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 3997
    .local v0, idx:I
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v2

    .line 3998
    .local v2, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v0}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 4000
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 4001
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[getViewTask] MediaData or Prototype is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    const/4 v3, 0x0

    .line 4012
    :cond_1
    :goto_0
    return-object v3

    .line 4005
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/common/ViewDecodeTask;

    .line 4006
    .local v3, task:Lcom/htc/sunny2/common/ViewDecodeTask;
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThreadCallback:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/common/ViewDecodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    .line 4007
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/common/ViewDecodeTask;->setMediaData(Lcom/htc/sunnyCore/IMediaData;)V

    .line 4008
    invoke-virtual {v3, v2}, Lcom/htc/sunny2/common/ViewDecodeTask;->setPrototype(Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;)V

    .line 4009
    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/ViewDecodeTask;->setTaskIndex(I)V

    .line 4010
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getPrototypeId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/common/ViewDecodeTask;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4011
    sget-boolean v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getViewTask] view task, index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", view id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;
    .locals 3
    .parameter "viewIdx"

    .prologue
    .line 4230
    if-eqz p1, :cond_0

    .line 4231
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getViewTextureMap] Unsupported view idex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    const/4 v0, 0x0

    .line 4234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "inValue"

    .prologue
    const/4 v3, 0x0

    .line 610
    if-nez p2, :cond_0

    .line 612
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "InValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 667
    :goto_0
    return-void

    .line 617
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 619
    const-string v1, "TEXTURE_MAX_COUNT"

    sget v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 620
    .local v0, texturePreparationMaxCount:I
    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v0, v1, :cond_1

    .line 621
    sget v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    .line 625
    :cond_1
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 626
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "Environment handle is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    goto :goto_0

    .line 633
    :cond_2
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 634
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "TexturePreparationMaxCount is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    goto :goto_0

    .line 640
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 642
    const-string v1, "CACHE_SET"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 643
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 644
    const-string v1, "MULTIPLE_FOLDER_IMAGES"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 645
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_4

    .line 646
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 652
    :goto_1
    const-string v1, "GRID_WIDTH_HEIGHT"

    const/16 v2, 0xb2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 653
    const-string v1, "GRID_MEM_CACHE_SIZE"

    const/16 v2, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 654
    const-string v1, "GRID_FILE_CACHE_SIZE"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 655
    const-string v1, "ENABLE_SPECIAL_CACHE"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    .line 657
    new-instance v1, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 658
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 660
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 661
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 663
    new-instance v1, Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 664
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setPriority(I)V

    .line 665
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTaskThread;->beginThread()V

    goto/16 :goto_0

    .line 648
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V
    .locals 9
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 671
    if-nez p2, :cond_1

    .line 673
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][GridViewPreparatorImpl][init]: no param..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 778
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 678
    .restart local p2
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 680
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getMaxTextureCount()I

    move-result v1

    .line 681
    .local v1, nMaxTextureCount:I
    sget v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v1, v3, :cond_2

    .line 682
    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    .line 685
    :cond_2
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 686
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v3, :cond_3

    .line 688
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Environment handle is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    goto :goto_0

    .line 693
    :cond_3
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 694
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v3, :cond_4

    .line 696
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][GridViewPreparatorImpl][init]: zero texture count.."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    goto :goto_0

    .line 700
    :cond_4
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 705
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 706
    instance-of v3, p2, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    if-eqz v3, :cond_6

    move-object v2, p2

    .line 708
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    .line 709
    .local v2, paramFolder:Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;
    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableOverlayImage()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 710
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v3, :cond_5

    .line 711
    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;->getOverlapImageSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 712
    invoke-interface {v2}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableAntialias()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    .line 714
    :cond_5
    const-string v3, "GridViewPreparator_Folder"

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 716
    .end local v2           #paramFolder:Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;
    :cond_6
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 722
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getCacheSet()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 723
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v3, p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 725
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getDimension()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 726
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getMemoryCacheSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 727
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->isEnableFileCache()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 728
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getFileCacheSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 730
    :cond_7
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->isEnableBorder()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    .line 731
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v3, :cond_8

    .line 732
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getBorderWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    .line 733
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getBorderColor()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    .line 736
    :cond_8
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getSpecialMode()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    .line 737
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 738
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_a

    .line 739
    const-string v3, "BUNDLE_ENABLE_QUALITY_OPTIONS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 740
    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    .line 742
    new-array v3, v7, [I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    .line 743
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    aput v5, v3, v5

    .line 744
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    aput v6, v3, v6

    .line 746
    :cond_9
    const-string v3, "BUNDLE_DISABLE_LOAD_FROM_EXIF"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 747
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableLoadFromExif:Z

    .line 751
    :cond_a
    new-instance v3, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 752
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 754
    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 755
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 757
    new-instance v3, Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 758
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3, v8}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setPriority(I)V

    .line 762
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->start()V

    .line 764
    instance-of v3, p2, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    if-eqz v3, :cond_b

    .line 765
    check-cast p2, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->isEnableViewBackgroundDecode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    .line 766
    :cond_b
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v3, :cond_c

    .line 767
    new-instance v3, Lcom/htc/sunnyCore/common/IterationTaskThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "View"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    .line 768
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3, v8}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setPriority(I)V

    .line 772
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->start()V

    .line 774
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewBundle:Landroid/os/Bundle;

    .line 775
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewBundle:Landroid/os/Bundle;

    const-string v4, "BUNDLE_FLAG"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 777
    :cond_c
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "ThumbnailPreparator_init -"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected isCacheable(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Z
    .locals 2
    .parameter "decodeItem"

    .prologue
    .line 3791
    if-nez p1, :cond_0

    .line 3792
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[isCacheable] decodeItem is null, use default cache enable flag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    .line 3796
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecodedSourceType(I)Z
    .locals 1
    .parameter "sourceType"

    .prologue
    .line 3740
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 3741
    const/4 v0, 0x0

    .line 3743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isFindBetterQuality(II)Z
    .locals 1
    .parameter "index"
    .parameter "quality"

    .prologue
    .line 2398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(III)Z

    move-result v0

    return v0
.end method

.method protected isFindBetterQuality(III)Z
    .locals 6
    .parameter "index"
    .parameter "subIdx"
    .parameter "quality"

    .prologue
    const/4 v2, 0x0

    .line 2402
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 2403
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-nez v0, :cond_1

    .line 2404
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isBetterDecodedQuality] Null ItemAttrbutes, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target quality "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_0
    :goto_0
    return v2

    .line 2407
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getProcessQuality(I)I

    move-result v1

    .line 2408
    .local v1, processQuality:I
    if-le p3, v1, :cond_0

    .line 2409
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 3552
    const/4 v0, 0x1

    return v0
.end method

.method public isMediaListBinded()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    return v0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    .line 2341
    :cond_0
    const/4 v0, 0x1

    .line 2343
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(II)Z
    .locals 5
    .parameter "index"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 2347
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 2348
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-nez v0, :cond_1

    .line 2349
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isOffLineDecodeAndNotInOffLineVisibleRange] Null ItemAttrbutes, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_0
    :goto_0
    return v1

    .line 2353
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v2, :cond_0

    .line 2355
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isRealTexture(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 2149
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 2150
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2
    .parameter "limitedTimeMillis"

    .prologue
    .line 2130
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

.method public iterate(J)V
    .locals 0
    .parameter "limitedTimeMillis"

    .prologue
    .line 569
    return-void
.end method

.method public loadRange(IIIJ)V
    .locals 36
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 1660
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v3, :cond_1

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] null media list."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :goto_0
    return-void

    .line 1669
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v3, :cond_3

    .line 1671
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] no cache."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1674
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-nez v3, :cond_4

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] no texture map."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1682
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    move/from16 v21, v0

    .line 1683
    .local v21, beginIndex:I
    if-gez v21, :cond_5

    .line 1684
    const/16 v21, 0x0

    .line 1685
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move/from16 v24, v0

    .line 1686
    .local v24, endIndex:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_6

    .line 1687
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v24, v3, -0x1

    .line 1690
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v3, :cond_8

    .line 1691
    new-instance v23, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    .line 1692
    .local v23, decodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
    move/from16 v10, v21

    .local v10, i:I
    :goto_1
    move/from16 v0, v24

    if-gt v10, v0, :cond_7

    .line 1693
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-ltz v3, :cond_a

    .line 1719
    :cond_7
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1723
    .end local v10           #i:I
    .end local v23           #decodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
    :cond_8
    const/16 v27, 0x0

    .local v27, j:I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_9

    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-ltz v3, :cond_c

    .line 1862
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CachePuller;->free()V

    goto/16 :goto_0

    .line 1698
    .end local v27           #j:I
    .restart local v10       #i:I
    .restart local v23       #decodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
    :cond_a
    move-object/from16 v0, v23

    iput v10, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1699
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1700
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Lcom/htc/sunny2/common/ViewDecodeTask;

    move-result-object v35

    .line 1701
    .local v35, task:Lcom/htc/sunny2/common/ViewDecodeTask;
    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunny2/common/ViewDecodeTask;->onSetup()V

    .line 1702
    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunny2/common/ViewDecodeTask;->onIterate()Z

    .line 1703
    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunny2/common/ViewDecodeTask;->onEnd()V

    .line 1705
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAViewTextureToReuse()Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    .line 1706
    .local v13, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v13, :cond_b

    .line 1707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] No usable view texture. Map size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pool size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", texutre count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_2

    .line 1714
    :cond_b
    move-object/from16 v0, v23

    iput-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 1716
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setViewTexture(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 1692
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1730
    .end local v10           #i:I
    .end local v13           #texture:Lcom/htc/sunnyCore/Texture;
    .end local v23           #decodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
    .end local v35           #task:Lcom/htc/sunny2/common/ViewDecodeTask;
    .restart local v27       #j:I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v29

    .line 1731
    .local v29, map:Lcom/htc/sunnyCore/common/TextureMap;
    if-nez v29, :cond_d

    .line 1732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] Get map error, size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1735
    :cond_d
    move/from16 v10, v21

    .restart local v10       #i:I
    :goto_4
    move/from16 v0, v24

    if-gt v10, v0, :cond_e

    .line 1738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-ltz v3, :cond_f

    .line 1723
    :cond_e
    :goto_5
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 1745
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3, v10}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v30

    .line 1746
    .local v30, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-nez v30, :cond_10

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v26

    .line 1748
    .local v26, itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] mediaData is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1751
    .end local v26           #itemCount:I
    :cond_10
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v12

    .line 1752
    .local v12, useService:Z
    if-eqz v12, :cond_13

    .line 1753
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v28

    .line 1754
    .local v28, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v27, 0x1

    if-ge v3, v4, :cond_12

    .line 1735
    .end local v28           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_11
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1757
    .restart local v28       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_12
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    check-cast v30, Lcom/htc/sunnyCore/IMediaData;

    .line 1758
    .restart local v30       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v30, :cond_11

    .line 1762
    .end local v28           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_13
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v34

    .line 1763
    .local v34, sourceType:I
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1768
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v6

    .line 1769
    .local v6, filePath:Ljava/lang/String;
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v25

    .line 1771
    .local v25, identifier:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] itemIdx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v5

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v7

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v14

    long-to-int v9, v14

    const/16 v11, 0x11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    invoke-virtual/range {v3 .. v13}, Lcom/htc/sunny2/common/CachePuller;->setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIIIZI)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] mCachePuller.setup NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1778
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/CachePuller;->iterate(J)Z

    .line 1779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CachePuller;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    .line 1780
    .local v22, bitmap:Landroid/graphics/Bitmap;
    if-eqz v22, :cond_11

    .line 1787
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    .line 1788
    .restart local v13       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v13, :cond_16

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_16

    .line 1790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] FindATextureToReuse NG - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    if-eqz v22, :cond_11

    .line 1792
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 1793
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1800
    :cond_16
    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByAndroidBitmapAndRealize(ILandroid/graphics/Bitmap;)Z

    .line 1801
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/htc/sunnyCore/Texture;->setWidth(I)V

    .line 1802
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/htc/sunnyCore/Texture;->setHeight(I)V

    .line 1803
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/htc/sunnyCore/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 1804
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mProcessTextureRealize:Z

    .line 1806
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v3, :cond_17

    .line 1807
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v16

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move/from16 v19, v0

    invoke-virtual/range {v13 .. v19}, Lcom/htc/sunnyCore/Texture;->setBorder(IIIIII)V

    .line 1810
    :cond_17
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v31

    .line 1811
    .local v31, oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-eqz v31, :cond_18

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_1b

    .line 1812
    :cond_18
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v13, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 1813
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v20

    .line 1814
    .local v20, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v20, :cond_1a

    .line 1815
    const/16 v32, 0x0

    .line 1816
    .local v32, quality:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v3, :cond_19

    .line 1817
    const/16 v32, 0x1

    .line 1819
    :cond_19
    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 1820
    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 1856
    .end local v20           #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    .end local v32           #quality:I
    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v3, :cond_11

    .line 1857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-interface {v3, v0, v10, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto/16 :goto_6

    .line 1823
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] NG - oriTextureHandle != 0, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    move-object/from16 v0, v31

    if-eq v0, v13, :cond_1f

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v3, :cond_1a

    .line 1826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, v31

    if-eq v0, v3, :cond_1e

    .line 1827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] oriTextureHandle is not failTexture, recycle to pool"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v33

    .line 1829
    .local v33, recycledTexture:Lcom/htc/sunnyCore/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] NG - mTexturePool is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-virtual/range {v33 .. v33}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1832
    const/16 v33, 0x0

    .line 1833
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1840
    .end local v33           #recycledTexture:Lcom/htc/sunnyCore/Texture;
    :cond_1c
    :goto_8
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v13, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 1841
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v20

    .line 1842
    .restart local v20       #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v20, :cond_1a

    .line 1843
    const/16 v32, 0x0

    .line 1844
    .restart local v32       #quality:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v3, :cond_1d

    .line 1845
    const/16 v32, 0x1

    .line 1847
    :cond_1d
    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 1848
    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_7

    .line 1836
    .end local v20           #attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    .end local v32           #quality:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] oriTextureHandle is failTexture"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    .line 1838
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_8

    .line 1852
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] textureHandle is the same as store in textureMap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public notifyDataItemChanged(II)V
    .locals 7
    .parameter "mediaListIdx"
    .parameter "itemIdx"

    .prologue
    const/4 v6, 0x0

    .line 1391
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v4, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v4, p2, :cond_3

    .line 1395
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1397
    .local v1, currentIndex:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 1398
    .local v2, currentTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v4, :cond_2

    .line 1399
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1400
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1402
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1405
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1407
    .end local v1           #currentIndex:I
    .end local v2           #currentTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v4, :cond_4

    .line 1409
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 1410
    .local v0, attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v0, :cond_4

    .line 1411
    invoke-virtual {v0, p2, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 1413
    .end local v0           #attrs:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v3

    .line 1414
    .local v3, map:Lcom/htc/sunnyCore/common/TextureMap;
    if-eqz v3, :cond_0

    .line 1420
    invoke-virtual {v3, p2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunnyCore/Texture;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public notifyDataItemChanged(III)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "flag"

    .prologue
    .line 1379
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1380
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->checkImageUpdate(II)V

    .line 1386
    :goto_0
    return-void

    .line 1381
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1382
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->checkViewUpdate(II)V

    goto :goto_0

    .line 1384
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_3

    .line 302
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 306
    :cond_0
    if-ne p1, v2, :cond_4

    .line 307
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread GridView preparation start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 314
    :cond_2
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    .line 316
    :cond_3
    monitor-exit v1

    .line 317
    return-void

    .line 309
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 310
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread GridView preparation end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v11, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 1968
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v7, :cond_0

    .line 1969
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "onProcessPreparationIRT_Force stop"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    move v4, v5

    .line 2125
    :goto_0
    return v4

    .line 1974
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v7

    .line 1975
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    if-eqz v8, :cond_1

    .line 1978
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1979
    monitor-exit v7

    move v4, v6

    goto :goto_0

    .line 1981
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v7, :cond_2

    .line 1985
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "onProcessPreparationIRT_Not initialize"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 1986
    goto :goto_0

    .line 1981
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1988
    :cond_2
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v7, :cond_3

    move v4, v6

    .line 1991
    goto :goto_0

    .line 1996
    :cond_3
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v7, :cond_4

    .line 1997
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "Force stop"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    move v4, v5

    .line 1999
    goto :goto_0

    .line 2001
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v7, :cond_5

    .line 2002
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "DecodeItem is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    move v4, v6

    .line 2004
    goto :goto_0

    .line 2008
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v7, v11, :cond_8

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v7, v8, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v7, v8, :cond_8

    .line 2010
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeItem is expired "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v7, v8, :cond_7

    .line 2012
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2013
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v8, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2015
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2018
    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2022
    :cond_8
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v7

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v7

    if-nez v7, :cond_a

    .line 2027
    :cond_9
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mProcessTextureRealize:Z

    .line 2034
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v6

    goto/16 :goto_0

    .line 2030
    :cond_a
    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mProcessTextureRealize:Z

    goto :goto_1

    .line 2037
    :cond_b
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v5, :cond_c

    .line 2039
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->doDecodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 2043
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v5

    if-eqz v5, :cond_d

    move v4, v6

    goto/16 :goto_0

    .line 2045
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processMediaThumbnail(J)Z

    move-result v5

    if-eqz v5, :cond_e

    move v4, v6

    .line 2046
    goto/16 :goto_0

    .line 2049
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v5

    if-eqz v5, :cond_f

    move v4, v6

    goto/16 :goto_0

    .line 2052
    :cond_f
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v5, :cond_10

    .line 2053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, p1, v7

    .line 2054
    .local v2, processTime:J
    const-wide/16 v7, 0x1

    cmp-long v5, v2, v7

    if-lez v5, :cond_10

    .line 2056
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->doProcessViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 2060
    .end local v2           #processTime:J
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v5

    if-eqz v5, :cond_11

    move v4, v6

    goto/16 :goto_0

    .line 2062
    :cond_11
    const/4 v1, 0x0

    .line 2063
    .local v1, loopCount:I
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsSkiaDecodeCacheBitmap:Z

    if-eqz v5, :cond_14

    const/16 v0, 0x18

    .line 2065
    .local v0, limitLoopCount:I
    :cond_12
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, p1, v7

    .line 2066
    .restart local v2       #processTime:J
    const-wide/16 v7, 0x2

    cmp-long v5, v2, v7

    if-gez v5, :cond_15

    .line 2074
    :cond_13
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v5

    if-eqz v5, :cond_16

    move v4, v6

    goto/16 :goto_0

    .end local v0           #limitLoopCount:I
    .end local v2           #processTime:J
    :cond_14
    move v0, v4

    .line 2063
    goto :goto_2

    .line 2070
    .restart local v0       #limitLoopCount:I
    .restart local v2       #processTime:J
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processCurrentTask(J)Z

    .line 2071
    add-int/lit8 v1, v1, 0x1

    .line 2072
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v5

    if-nez v5, :cond_13

    if-lt v1, v0, :cond_12

    goto :goto_3

    .line 2076
    :cond_16
    const/4 v1, 0x0

    .line 2078
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v5

    if-nez v5, :cond_1f

    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsSkiaDecodeCacheBitmap:Z

    if-nez v5, :cond_17

    if-ge v1, v4, :cond_1f

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v5

    if-ge v5, v4, :cond_1f

    .line 2084
    :cond_17
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 2086
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v5, v11, :cond_1d

    .line 2088
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 2089
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 2090
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v5, :cond_1a

    .line 2094
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v5, :cond_18

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v7, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    .line 2096
    :cond_18
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-eq v5, v6, :cond_19

    .line 2097
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeFromCacheOrOriginalFile(J)Z

    .line 2122
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2099
    :cond_19
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    goto :goto_5

    .line 2102
    :cond_1a
    sget-boolean v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Texture cache is full, textureMap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", texturePool "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", decodeItem index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mTexturesCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFailTexture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_1b
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v5, :cond_1c

    .line 2104
    sget-boolean v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TextureMap2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", TextureMap3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", failTexture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_1c
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_5

    .line 2111
    :cond_1d
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mProcessTextureRealize:Z

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    if-nez v4, :cond_1f

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    if-nez v4, :cond_1f

    .line 2118
    :cond_1e
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    :cond_1f
    move v4, v6

    .line 2125
    goto/16 :goto_0
.end method

.method public pausePreparator()V
    .locals 2

    .prologue
    .line 3607
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 3608
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 3609
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3610
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 3611
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 3613
    :cond_0
    return-void

    .line 3609
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processCurrentTask(J)Z
    .locals 24
    .parameter "limitedTimeMillis"

    .prologue
    .line 2834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2837
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2846
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 3095
    :goto_1
    return v3

    .line 2839
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Task waiting time over time limit, request resume thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->resumeThread()V

    .line 2842
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto :goto_0

    .line 2849
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/sunnyCore/common/IterationTask;

    .line 2850
    .local v22, task:Lcom/htc/sunnyCore/common/IterationTask;
    if-nez v22, :cond_3

    .line 2851
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[processCurrentTask] IteratorTask is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    const/4 v3, 0x0

    goto :goto_1

    .line 2854
    :cond_3
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 2856
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->isTaskFinished()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2857
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2858
    const/16 v16, 0x0

    .line 2859
    .local v16, isFailed:Z
    const/4 v2, 0x0

    .line 2860
    .local v2, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v3, :cond_6

    move-object/from16 v13, v22

    .line 2862
    check-cast v13, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    .line 2863
    .local v13, decodeTask:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    invoke-virtual {v13}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v16

    .line 2864
    invoke-virtual {v13}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    .line 2875
    .end local v13           #decodeTask:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2877
    if-nez v2, :cond_9

    .line 2878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask] cacheItem is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2880
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_8

    .line 2881
    check-cast v22, Lcom/htc/sunny2/common/IterationTaskGallery;

    .end local v22           #task:Lcom/htc/sunnyCore/common/IterationTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 2885
    :goto_3
    const/16 v22, 0x0

    .line 2886
    .restart local v22       #task:Lcom/htc/sunnyCore/common/IterationTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2887
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2865
    :cond_6
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v3, :cond_7

    .line 2866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask] Encode cache task"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2869
    :cond_7
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v3, :cond_5

    move-object/from16 v13, v22

    .line 2871
    check-cast v13, Lcom/htc/sunny2/common/IterationDecodeTask;

    .line 2872
    .local v13, decodeTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    const/16 v16, 0x0

    .line 2873
    invoke-virtual {v13}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    goto :goto_2

    .line 2883
    .end local v13           #decodeTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_3

    .line 2889
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v23

    .line 2891
    .local v23, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v23, :cond_a

    .line 2894
    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v23

    .line 2896
    :cond_a
    if-nez v23, :cond_e

    .line 2897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "No reusable texture."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture cache is full, textureMap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", texturePool "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", decodeItem index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTexturesCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFailTextureCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v3, :cond_c

    .line 2900
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextureMap2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TextureMap3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", failTexture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2903
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2904
    const/4 v2, 0x0

    .line 2905
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_d

    .line 2906
    check-cast v22, Lcom/htc/sunny2/common/IterationTaskGallery;

    .end local v22           #task:Lcom/htc/sunnyCore/common/IterationTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 2910
    :goto_4
    const/16 v22, 0x0

    .line 2911
    .restart local v22       #task:Lcom/htc/sunnyCore/common/IterationTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2912
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2908
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_4

    .line 2914
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 2915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v21

    .line 2916
    .local v21, oldTexture:Lcom/htc/sunnyCore/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_f

    .line 2917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeTexture(II)Lcom/htc/sunnyCore/Texture;

    .line 2918
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2923
    :cond_f
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_10

    .line 2924
    check-cast v22, Lcom/htc/sunny2/common/IterationTaskGallery;

    .end local v22           #task:Lcom/htc/sunnyCore/common/IterationTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 2928
    :goto_5
    const/16 v22, 0x0

    .line 2930
    .restart local v22       #task:Lcom/htc/sunnyCore/common/IterationTask;
    if-eqz v16, :cond_12

    .line 2933
    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_11

    .line 2935
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    .line 2940
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2941
    const/4 v2, 0x0

    .line 2943
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2926
    :cond_10
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_5

    .line 2937
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Error on encode cache, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto :goto_6

    .line 2947
    :cond_12
    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_15

    .line 2948
    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2949
    .local v10, bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_14

    .line 2950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const/4 v4, 0x1

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 2953
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 3044
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3045
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3046
    const/4 v2, 0x0

    .line 3048
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2955
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto :goto_7

    .line 2961
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    :cond_15
    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2962
    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_1e

    .line 2964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2966
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v3, :cond_16

    iget v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    if-nez v3, :cond_16

    iget-boolean v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIsLoadFromExif:Z

    if-nez v3, :cond_16

    .line 2968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const/4 v4, 0x1

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 2972
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isCacheable(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v20

    .line 2976
    .local v20, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v20, :cond_17

    .line 2977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v18

    .line 2978
    .local v18, itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2980
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2981
    const/4 v2, 0x0

    .line 2982
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2985
    .end local v18           #itemCount:I
    :cond_17
    invoke-interface/range {v20 .. v20}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v11

    .line 2986
    .local v11, useService:Z
    invoke-interface/range {v20 .. v20}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2987
    invoke-interface/range {v20 .. v20}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v19

    .line 2988
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    if-eqz v19, :cond_18

    .line 2989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    check-cast v20, Lcom/htc/sunnyCore/IMediaData;

    .line 2990
    .restart local v20       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v20, :cond_19

    .line 2991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v18

    .line 2992
    .restart local v18       #itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2994
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2995
    const/4 v2, 0x0

    .line 2996
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2999
    .end local v18           #itemCount:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v18

    .line 3000
    .restart local v18       #itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] ITERATE: MediaDataList is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3002
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3003
    const/4 v2, 0x0

    .line 3004
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3008
    .end local v18           #itemCount:I
    .end local v19           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_19
    invoke-interface/range {v20 .. v20}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v15

    .line 3009
    .local v15, identifier:Ljava/lang/String;
    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 3011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3012
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3013
    const/4 v2, 0x0

    .line 3014
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3017
    :cond_1a
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] encode itemIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :cond_1b
    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v4

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual/range {v2 .. v11}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    .line 3019
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 3020
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 3021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 3022
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v12, 0x11

    .line 3023
    .local v12, cacheSourceType:I
    :goto_8
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v14

    check-cast v14, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    .line 3024
    .local v14, encodeTask:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v14, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 3025
    invoke-virtual {v14, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3026
    invoke-virtual {v14, v12}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 3027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v14, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 3028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v14, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    .line 3029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v3, :cond_1c

    if-eqz v14, :cond_1c

    .line 3031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3, v14}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 3035
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3036
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3022
    .end local v12           #cacheSourceType:I
    .end local v14           #encodeTask:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_1d
    const/4 v12, 0x1

    goto :goto_8

    .line 3039
    .end local v11           #useService:Z
    .end local v15           #identifier:Ljava/lang/String;
    .end local v20           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto/16 :goto_7

    .line 3051
    .end local v2           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v16           #isFailed:Z
    .end local v21           #oldTexture:Lcom/htc/sunnyCore/Texture;
    .end local v23           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_1f
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v3

    sget-object v4, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->CANCEL:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    if-ne v3, v4, :cond_26

    .line 3052
    sget-boolean v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask]-4 Cancel Task, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_20
    const/4 v2, 0x0

    .line 3055
    .restart local v2       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v3, :cond_23

    move-object/from16 v13, v22

    .line 3057
    check-cast v13, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    .line 3058
    .local v13, decodeTask:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    invoke-virtual {v13}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    .line 3068
    .end local v13           #decodeTask:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_21
    :goto_9
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_25

    .line 3069
    check-cast v22, Lcom/htc/sunny2/common/IterationTaskGallery;

    .end local v22           #task:Lcom/htc/sunnyCore/common/IterationTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 3074
    :goto_a
    const/16 v22, 0x0

    .line 3075
    .restart local v22       #task:Lcom/htc/sunnyCore/common/IterationTask;
    if-eqz v2, :cond_22

    .line 3076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->cancelTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 3079
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3080
    const/4 v2, 0x0

    .line 3082
    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3059
    :cond_23
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v3, :cond_24

    .line 3060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask][CANCEL] Encode cache task"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3062
    :cond_24
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v3, :cond_21

    move-object/from16 v13, v22

    .line 3064
    check-cast v13, Lcom/htc/sunny2/common/IterationDecodeTask;

    .line 3065
    .local v13, decodeTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    invoke-virtual {v13}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    goto :goto_9

    .line 3071
    .end local v13           #decodeTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_25
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_a

    .line 3086
    .end local v2           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask]-3 , incorrect status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_27

    move-object/from16 v3, v22

    .line 3088
    check-cast v3, Lcom/htc/sunny2/common/IterationTaskGallery;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskGallery;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v17

    .line 3089
    .local v17, item:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3090
    check-cast v22, Lcom/htc/sunny2/common/IterationTaskGallery;

    .end local v22           #task:Lcom/htc/sunnyCore/common/IterationTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 3094
    .end local v17           #item:Lcom/htc/sunny2/common/CacheItem;
    :goto_b
    const/16 v22, 0x0

    .line 3095
    .restart local v22       #task:Lcom/htc/sunnyCore/common/IterationTask;
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3092
    :cond_27
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_b
.end method

.method protected processMediaThumbnail(J)Z
    .locals 14
    .parameter "limitedTimeMillis"

    .prologue
    .line 2466
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2468
    const/4 v10, 0x0

    .line 2746
    :goto_0
    return v10

    .line 2471
    :cond_0
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/CacheItem;

    .line 2472
    .local v1, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v11

    if-ne v10, v11, :cond_1

    .line 2474
    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    .line 2475
    const/4 v10, 0x0

    goto :goto_0

    .line 2478
    :cond_1
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v12, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v11

    if-eq v10, v11, :cond_2

    .line 2480
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2481
    const/4 v1, 0x0

    .line 2482
    const/4 v10, 0x1

    goto :goto_0

    .line 2485
    :cond_2
    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v10, v11, :cond_3

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v10, v11, :cond_b

    .line 2488
    :cond_3
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 2489
    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v10, :cond_a

    .line 2490
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2491
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v10, v11}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    .line 2492
    .local v5, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v5, :cond_4

    .line 2493
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2495
    const/4 v1, 0x0

    .line 2496
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2497
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2500
    :cond_4
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    .line 2501
    .local v9, useService:Z
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2502
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2503
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    if-eqz v4, :cond_5

    .line 2504
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    check-cast v5, Lcom/htc/sunnyCore/IMediaData;

    .line 2505
    .restart local v5       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v5, :cond_6

    .line 2506
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2508
    const/4 v1, 0x0

    .line 2509
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2510
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2513
    :cond_5
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - MedaiDataList is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2515
    const/4 v1, 0x0

    .line 2516
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2517
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2520
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_6
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 2521
    .local v3, identifier:Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2523
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2524
    const/4 v1, 0x0

    .line 2525
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2526
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2530
    :cond_7
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v10

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 2531
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2532
    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 2533
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2534
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 2535
    iput-boolean v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 2536
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v2, 0x11

    .line 2537
    .local v2, cacheSourceType:I
    :goto_1
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    .line 2538
    .local v8, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 2539
    invoke-virtual {v8, v1}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2540
    invoke-virtual {v8, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2541
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2542
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    .line 2543
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v10, :cond_8

    if-eqz v8, :cond_8

    .line 2545
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v10, v8}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 2547
    :cond_8
    const/4 v1, 0x0

    .line 2548
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2549
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2536
    .end local v2           #cacheSourceType:I
    .end local v8           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 2551
    .end local v3           #identifier:Ljava/lang/String;
    .end local v5           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    .end local v9           #useService:Z
    :cond_a
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2552
    const/4 v1, 0x0

    .line 2553
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2554
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2558
    :cond_b
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    .line 2560
    .local v7, reusableTexture:Lcom/htc/sunnyCore/Texture;
    if-nez v7, :cond_c

    .line 2563
    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    .line 2566
    :cond_c
    if-eqz v7, :cond_24

    .line 2567
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2568
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_21

    .line 2569
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2570
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v7, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 2571
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v10, :cond_12

    .line 2572
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    .line 2573
    .local v6, oldTexture:Lcom/htc/sunnyCore/Texture;
    if-eqz v6, :cond_e

    .line 2574
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v10, :cond_11

    .line 2578
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v10

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v10, v11, :cond_f

    .line 2580
    :cond_d
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_e

    .line 2581
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 2582
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2584
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2659
    .end local v6           #oldTexture:Lcom/htc/sunnyCore/Texture;
    :cond_e
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2661
    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v10, :cond_20

    .line 2663
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v10, v11}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    .line 2664
    .restart local v5       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v5, :cond_1a

    .line 2665
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2667
    const/4 v1, 0x0

    .line 2668
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2669
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2588
    .end local v5           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    .restart local v6       #oldTexture:Lcom/htc/sunnyCore/Texture;
    :cond_f
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oldTexture not fail texture, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_10

    .line 2590
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 2591
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2593
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2596
    :cond_10
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2597
    const/4 v1, 0x0

    .line 2598
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2599
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2602
    :cond_11
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    .line 2603
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 2606
    .end local v6           #oldTexture:Lcom/htc/sunnyCore/Texture;
    :cond_12
    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    .line 2607
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    .line 2608
    .restart local v6       #oldTexture:Lcom/htc/sunnyCore/Texture;
    if-eqz v6, :cond_e

    .line 2609
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v10, :cond_15

    .line 2611
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "oldTexture not fail texture 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_14

    .line 2613
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 2614
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2616
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2618
    :cond_13
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 2619
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2621
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2624
    :cond_14
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2625
    const/4 v1, 0x0

    .line 2626
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2627
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2629
    :cond_15
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 2632
    .end local v6           #oldTexture:Lcom/htc/sunnyCore/Texture;
    :cond_16
    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    .line 2633
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    .line 2634
    .restart local v6       #oldTexture:Lcom/htc/sunnyCore/Texture;
    if-eqz v6, :cond_e

    .line 2635
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v10, :cond_19

    .line 2637
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "oldTexture not fail texture 3"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_18

    .line 2639
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 2640
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2642
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2644
    :cond_17
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 2645
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2647
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2650
    :cond_18
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2651
    const/4 v1, 0x0

    .line 2652
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2653
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2655
    :cond_19
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 2672
    .end local v6           #oldTexture:Lcom/htc/sunnyCore/Texture;
    .restart local v5       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    :cond_1a
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    .line 2673
    .restart local v9       #useService:Z
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2674
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2675
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    if-eqz v4, :cond_1b

    .line 2676
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    check-cast v5, Lcom/htc/sunnyCore/IMediaData;

    .line 2677
    .restart local v5       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v5, :cond_1c

    .line 2678
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2680
    const/4 v1, 0x0

    .line 2681
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2682
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2685
    :cond_1b
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - MediaDataList is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2687
    const/4 v1, 0x0

    .line 2688
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2689
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2693
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_1c
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 2694
    .restart local v3       #identifier:Ljava/lang/String;
    if-eqz v3, :cond_1d

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 2696
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2697
    const/4 v1, 0x0

    .line 2698
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2699
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2703
    :cond_1d
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v10

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 2704
    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 2705
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2706
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 2707
    iput-boolean v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 2708
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v10

    if-eqz v10, :cond_1f

    const/16 v2, 0x11

    .line 2709
    .restart local v2       #cacheSourceType:I
    :goto_3
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    .line 2710
    .restart local v8       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 2711
    invoke-virtual {v8, v1}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2712
    invoke-virtual {v8, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2713
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2714
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    .line 2715
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v10, :cond_1e

    if-eqz v8, :cond_1e

    .line 2717
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v10, v8}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    .line 2746
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #cacheSourceType:I
    .end local v3           #identifier:Ljava/lang/String;
    .end local v5           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    .end local v8           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    .end local v9           #useService:Z
    :cond_1e
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2708
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #identifier:Ljava/lang/String;
    .restart local v5       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    .restart local v9       #useService:Z
    :cond_1f
    const/4 v2, 0x1

    goto :goto_3

    .line 2720
    .end local v3           #identifier:Ljava/lang/String;
    .end local v5           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    .end local v9           #useService:Z
    :cond_20
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2721
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2722
    const/4 v1, 0x0

    goto :goto_4

    .line 2725
    :cond_21
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - get null bitmap, recycle texture"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 2727
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2729
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2731
    :cond_22
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v10, :cond_23

    .line 2732
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v11, 0x0

    iget v12, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2734
    :cond_23
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2735
    const/4 v1, 0x0

    goto :goto_4

    .line 2738
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_24
    sget-boolean v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v10, :cond_25

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - No reusable texture"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_25
    sget-boolean v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Texture cache is full, textureMap "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", texturePool "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", decodeItem index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mTexturesCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mFailTexture "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    :cond_26
    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v10, :cond_27

    .line 2741
    sget-boolean v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TextureMap2 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", TextureMap3 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", failTexture "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :cond_27
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2744
    const/4 v1, 0x0

    goto/16 :goto_4
.end method

.method protected queryTexture(I)Lcom/htc/sunnyCore/Texture;
    .locals 1
    .parameter "contentIndex"

    .prologue
    .line 3485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method protected queryTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 3489
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 3490
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    :goto_0
    return-object v1

    .line 3494
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    .line 3495
    .local v0, map:Lcom/htc/sunnyCore/common/TextureMap;
    if-nez v0, :cond_2

    .line 3496
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[queryTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3500
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method protected queryViewTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "viewIndex"

    .prologue
    const/4 v1, 0x0

    .line 4201
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 4202
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    :goto_0
    return-object v1

    .line 4206
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    .line 4207
    .local v0, map:Lcom/htc/sunnyCore/common/TextureMap;
    if-nez v0, :cond_2

    .line 4208
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[queryViewTexture] ViewTextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", viewIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4211
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method protected recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 546
    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/htc/sunny2/common/CacheItem;->release()V

    .line 549
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItemPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    return-void
.end method

.method protected recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {p1}, Lcom/htc/sunny2/common/IterationTaskGallery;->release()V

    .line 515
    invoke-virtual {p1}, Lcom/htc/sunny2/common/IterationTaskGallery;->getTaskId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 531
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 517
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationDecodeTaskPool:Ljava/util/LinkedList;

    check-cast p1, Lcom/htc/sunny2/common/IterationDecodeTask;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeTaskPool:Ljava/util/LinkedList;

    check-cast p1, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    .restart local p1
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    .restart local p1
    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeTaskPool:Ljava/util/LinkedList;

    check-cast p1, Lcom/htc/sunny2/common/ViewDecodeTask;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 1
    .parameter "task"
    .parameter "decodeItem"

    .prologue
    .line 4055
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    .line 4056
    if-eqz p2, :cond_0

    .line 4057
    iget-object v0, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4058
    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 4060
    :cond_0
    return-void
.end method

.method protected recycleViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 4
    .parameter "prototypeId"
    .parameter "bitmap"

    .prologue
    .line 4360
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 4361
    .local v0, bitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_0

    .line 4362
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #bitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4366
    .restart local v0       #bitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4368
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 4369
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4376
    :goto_0
    return-void

    .line 4372
    :cond_1
    sget-boolean v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[recycleViewBitmap] list is full, recycle bitamp. prototypeId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 4374
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 4035
    if-nez p1, :cond_1

    .line 4052
    :cond_0
    :goto_0
    return-void

    .line 4037
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne p1, v0, :cond_2

    .line 4038
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_0

    .line 4040
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_3

    .line 4041
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4042
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[recycleViewTexture] mViewTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 4044
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    goto :goto_0

    .line 4047
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[recycleViewTexture] mViewTexturePool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 4049
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    goto :goto_0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;
    .locals 6
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
    .line 925
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;
    .locals 17
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .parameter "refreshFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList;",
            "IZI)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 933
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refresh() - null mediaList "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_1
    const/4 v8, 0x1

    .line 937
    .local v8, checkImageUpdate:Z
    const/4 v9, 0x1

    .line 938
    .local v9, checkViewUpdate:Z
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_6

    .line 939
    const/4 v9, 0x0

    .line 944
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    .line 947
    invoke-virtual/range {p0 .. p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 948
    const/4 v12, 0x0

    .line 1091
    :cond_3
    :goto_3
    return-object v12

    .line 933
    .end local v8           #checkImageUpdate:Z
    .end local v9           #checkViewUpdate:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 940
    .restart local v8       #checkImageUpdate:Z
    .restart local v9       #checkViewUpdate:Z
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 941
    const/4 v8, 0x0

    goto :goto_2

    .line 951
    :cond_7
    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "refresh() - new media list count is 0"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v12, 0x0

    goto :goto_3

    .line 957
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 958
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_9

    .line 959
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-gez v2, :cond_9

    .line 961
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 964
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_a

    .line 965
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 966
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gez v2, :cond_a

    .line 967
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 970
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_b

    .line 971
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 972
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v2, :cond_b

    .line 973
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 976
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_c

    .line 977
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 978
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v2, :cond_c

    .line 979
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 984
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v2, :cond_d

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 988
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v2, :cond_e

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getMemCacheSize()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v5, v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->newMemoryCacheSet(II)Z

    .line 993
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 998
    :cond_f
    const/4 v12, 0x0

    .line 999
    .local v12, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    if-eqz v8, :cond_1a

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v2, :cond_13

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "decodeItem is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    .line 1015
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v5

    .line 1016
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_12
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/common/IterationTaskGallery;

    .line 1018
    .local v13, task:Lcom/htc/sunny2/common/IterationTaskGallery;
    if-eqz v13, :cond_12

    .line 1019
    invoke-virtual {v13}, Lcom/htc/sunny2/common/IterationTaskGallery;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v11

    .line 1020
    .local v11, item:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1021
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_5

    .line 1027
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #item:Lcom/htc/sunny2/common/CacheItem;
    .end local v13           #task:Lcom/htc/sunny2/common/IterationTaskGallery;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1002
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_10

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v5, :cond_14

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "refresh NG - mTexturePool is full"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1007
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1010
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_4

    .line 1024
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1027
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_16
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    if-nez p4, :cond_17

    new-instance v12, Ljava/util/LinkedList;

    .end local v12           #release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 1032
    .restart local v12       #release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    :cond_17
    const/4 v6, 0x0

    .local v6, j:I
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v6, v2, :cond_1a

    .line 1033
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v3

    .line 1035
    .local v3, oldMap:Lcom/htc/sunnyCore/common/TextureMap;
    if-eqz v3, :cond_18

    .line 1036
    new-instance v4, Lcom/htc/sunnyCore/common/TextureMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v4, v2}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    .line 1037
    .local v4, newMap:Lcom/htc/sunnyCore/common/TextureMap;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V

    .line 1039
    new-instance v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    .line 1040
    .local v7, newAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-nez v6, :cond_19

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".ItemsAttributes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    .line 1045
    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureReuseForNewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V

    .line 1046
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Ljava/util/List;Z)V

    .line 1047
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setItemsAttrbutes(ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V

    .line 1032
    .end local v4           #newMap:Lcom/htc/sunnyCore/common/TextureMap;
    .end local v7           #newAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1043
    .restart local v4       #newMap:Lcom/htc/sunnyCore/common/TextureMap;
    .restart local v7       #newAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".ItemsAttributes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    goto :goto_7

    .line 1054
    .end local v3           #oldMap:Lcom/htc/sunnyCore/common/TextureMap;
    .end local v4           #newMap:Lcom/htc/sunnyCore/common/TextureMap;
    .end local v6           #j:I
    .end local v7           #newAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v2, :cond_1d

    if-eqz v9, :cond_1d

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_1b

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    .line 1059
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v5

    .line 1060
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/common/IterationTaskGallery;

    .line 1062
    .restart local v13       #task:Lcom/htc/sunny2/common/IterationTaskGallery;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_8

    .line 1067
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #task:Lcom/htc/sunny2/common/IterationTaskGallery;
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1065
    :cond_1c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1067
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1069
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v15

    .line 1070
    .local v15, viewOldMap:Lcom/htc/sunnyCore/common/TextureMap;
    if-eqz v15, :cond_1d

    .line 1071
    new-instance v14, Lcom/htc/sunnyCore/common/TextureMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v14, v2}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    .line 1072
    .local v14, viewNewMap:Lcom/htc/sunnyCore/common/TextureMap;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V

    .line 1074
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v14, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureReuseForNewViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;)V

    .line 1075
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->viewTextureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Z)V

    .line 1081
    .end local v14           #viewNewMap:Lcom/htc/sunnyCore/common/TextureMap;
    .end local v15           #viewOldMap:Lcom/htc/sunnyCore/common/TextureMap;
    :cond_1d
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 1083
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 1084
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    move/from16 v16, v0

    mul-int v5, v5, v16

    if-le v2, v5, :cond_1e

    .line 1085
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 1087
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 1088
    sget-boolean v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[refresh] Buffer range "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_1f
    sget-boolean v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refresh-, item count "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected removeTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 3504
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 3505
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :goto_0
    return-object v1

    .line 3508
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    .line 3509
    .local v0, map:Lcom/htc/sunnyCore/common/TextureMap;
    if-nez v0, :cond_2

    .line 3510
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3514
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method protected removeViewTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "viewIndex"

    .prologue
    const/4 v1, 0x0

    .line 4215
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 4216
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4226
    :goto_0
    return-object v1

    .line 4220
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    .line 4221
    .local v0, map:Lcom/htc/sunnyCore/common/TextureMap;
    if-nez v0, :cond_2

    .line 4222
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeViewTexture] ViewTextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", viewIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4226
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method public resetDecodeDirection()V
    .locals 1

    .prologue
    .line 1957
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setDecodeDirection(I)V

    .line 1958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1959
    return-void
.end method

.method public resumePreparator()V
    .locals 2

    .prologue
    .line 3616
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 3617
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 3618
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3619
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 3622
    :cond_0
    return-void

    .line 3618
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setColumnNumber(I)V
    .locals 3
    .parameter "numColumn"

    .prologue
    .line 573
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_1

    .line 574
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    .line 577
    :cond_1
    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1963
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 1964
    return-void
.end method

.method public setEnableSkiaDecodeCacheBitmap(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 4353
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsSkiaDecodeCacheBitmap:Z

    .line 4354
    return-void
.end method

.method protected setFailTextureToCurrentTask()V
    .locals 1

    .prologue
    .line 3445
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 3446
    return-void
.end method

.method protected setFailTextureToCurrentTask(Z)V
    .locals 5
    .parameter "notifyFail"

    .prologue
    const/4 v4, 0x0

    .line 3449
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3451
    const/4 p1, 0x0

    .line 3454
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    .line 3455
    .local v0, textureMap:Lcom/htc/sunnyCore/common/TextureMap;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3457
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 3459
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 3461
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 3462
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3465
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v1, v2, :cond_6

    .line 3466
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v1, :cond_5

    .line 3467
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3468
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setFailTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3470
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 3477
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 3482
    :cond_4
    :goto_1
    return-void

    .line 3473
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3474
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 3478
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v1, v2, :cond_4

    .line 3480
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[setFailTextureToCurrentTask] current texture is FailTexture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setItemsAttrbutes(ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V
    .locals 0
    .parameter "subIdx"
    .parameter "attribute"

    .prologue
    .line 2379
    if-nez p2, :cond_0

    .line 2395
    :goto_0
    return-void

    .line 2382
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2384
    :pswitch_0
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    .line 2387
    :pswitch_1
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    .line 2390
    :pswitch_2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    .line 2382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 293
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 296
    :cond_0
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V
    .locals 3
    .parameter "map"
    .parameter "subIdx"

    .prologue
    .line 3536
    packed-switch p2, :pswitch_data_0

    .line 3547
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTextureMap] Error subIdx, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :goto_0
    return-void

    .line 3538
    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    .line 3541
    :pswitch_1
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    .line 3544
    :pswitch_2
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    .line 3536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setTextureToCurrentTask(Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "bmp"

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 3281
    if-nez p1, :cond_4

    .line 3282
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[setTextureToCurrentTask] bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v3, :cond_1

    .line 3284
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_3

    .line 3285
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3286
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3288
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 3294
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v12, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 3296
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 3297
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v12}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 3442
    :cond_2
    :goto_1
    return-void

    .line 3291
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3292
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 3301
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 3302
    .local v10, width:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 3303
    .local v7, height:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 3304
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_5

    .line 3305
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setTextureToCurrentTask NG - mDecodeItem.mTexture is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3309
    :cond_5
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    invoke-static {v2, p1}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByAndroidBitmapAndRealize(ILandroid/graphics/Bitmap;)Z

    .line 3310
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Texture;->setWidth(I)V

    .line 3311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Texture;->setHeight(I)V

    .line 3312
    iput-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mProcessTextureRealize:Z

    .line 3314
    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/Texture;->setSourceWidth(I)V

    .line 3315
    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Texture;->setSourceHeight(I)V

    .line 3316
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 3317
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v2, :cond_6

    .line 3318
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunnyCore/Texture;->setBorder(IIIIII)V

    .line 3322
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v2, :cond_10

    .line 3324
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 3325
    .local v8, oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-nez v8, :cond_9

    .line 3326
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3328
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 3329
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 3330
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_7

    .line 3331
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 3437
    .end local v8           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_8

    .line 3438
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v12}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 3441
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v12, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    goto/16 :goto_1

    .line 3333
    .restart local v8       #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_9
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3335
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_a

    .line 3336
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 3337
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3338
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    .line 3341
    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 3342
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 3343
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_7

    .line 3344
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto :goto_2

    .line 3347
    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_d

    .line 3352
    :goto_3
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_f

    .line 3353
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 3354
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 3355
    .local v9, recycledTexture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 3356
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3358
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 3360
    :cond_c
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3363
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 3364
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_7

    .line 3365
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto/16 :goto_2

    .line 3350
    .end local v9           #recycledTexture:Lcom/htc/sunnyCore/Texture;
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTexture NG 1 - oriTextureHandle != 0, isFailTexture "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v8, v2, :cond_e

    move v2, v11

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    move v2, v1

    goto :goto_4

    .line 3368
    :cond_f
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3372
    .end local v8           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_10
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-ne v2, v11, :cond_15

    .line 3374
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 3375
    .restart local v8       #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-nez v8, :cond_11

    .line 3376
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3377
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_2

    .line 3379
    :cond_11
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_13

    .line 3384
    :goto_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_14

    .line 3385
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 3386
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 3387
    .restart local v9       #recycledTexture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3388
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3390
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 3392
    :cond_12
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3393
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 3394
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_7

    .line 3395
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto/16 :goto_2

    .line 3382
    .end local v9           #recycledTexture:Lcom/htc/sunnyCore/Texture;
    :cond_13
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 2 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3398
    :cond_14
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3402
    .end local v8           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_15
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 3404
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 3405
    .restart local v8       #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-nez v8, :cond_16

    .line 3406
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3407
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_2

    .line 3409
    :cond_16
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_18

    .line 3414
    :goto_6
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_19

    .line 3415
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 3416
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 3417
    .restart local v9       #recycledTexture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3418
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3420
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 3422
    :cond_17
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 3423
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 3424
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_7

    .line 3425
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto/16 :goto_2

    .line 3412
    .end local v9           #recycledTexture:Lcom/htc/sunnyCore/Texture;
    :cond_18
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 3 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3428
    :cond_19
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3433
    .end local v8           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    :cond_1a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Add decodeItem to mTextureMap is Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3435
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_2
.end method

.method protected setViewTexture(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 12
    .parameter "task"
    .parameter "decodeItem"

    .prologue
    .line 4121
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4198
    :cond_0
    :goto_0
    return-void

    .line 4123
    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskIndex()I

    move-result v1

    .line 4124
    .local v1, contentIndex:I
    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4125
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a

    .line 4126
    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v5

    .line 4127
    .local v5, taskPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v4

    .line 4128
    .local v4, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v5, :cond_2

    if-eq v5, v4, :cond_4

    .line 4129
    :cond_2
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "[setViewTexture] Prototype is null or not the same."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    const/4 v9, 0x0

    invoke-virtual {p0, v1, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4134
    iget-object v9, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4135
    if-eqz v5, :cond_3

    .line 4136
    invoke-interface {v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getPrototypeId()I

    move-result v9

    invoke-virtual {p0, v9, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4138
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4139
    const/4 v0, 0x0

    goto :goto_0

    .line 4144
    :cond_4
    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getViewId()Ljava/lang/String;

    move-result-object v7

    .line 4145
    .local v7, viewId:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 4146
    .local v8, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 4147
    .local v2, height:I
    iget-object v6, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 4148
    .local v6, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v6, :cond_5

    .line 4149
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "[setViewTexture] decodeItem.mTexture is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    invoke-interface {v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getPrototypeId()I

    move-result v9

    invoke-virtual {p0, v9, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4157
    :cond_5
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v9

    invoke-static {v9, v0}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByAndroidBitmapAndRealize(ILandroid/graphics/Bitmap;)Z

    .line 4158
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/sunnyCore/Texture;->setWidth(I)V

    .line 4159
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/sunnyCore/Texture;->setHeight(I)V

    .line 4160
    invoke-virtual {v6, v8}, Lcom/htc/sunnyCore/Texture;->setSourceWidth(I)V

    .line 4161
    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/Texture;->setSourceHeight(I)V

    .line 4162
    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 4164
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mProcessTextureRealize:Z

    .line 4166
    invoke-interface {v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getPrototypeId()I

    move-result v9

    invoke-virtual {p0, v9, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4168
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-nez v9, :cond_6

    .line 4170
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "[setViewTexture] ViewTextureMap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_0

    .line 4177
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {p0, v1, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    .line 4178
    .local v3, oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    if-nez v3, :cond_7

    .line 4179
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9, v1, v6, v7}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 4190
    :goto_1
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v9, :cond_0

    .line 4191
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewBundle:Landroid/os/Bundle;

    invoke-interface {v9, v10, v1, v11}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4181
    :cond_7
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[setViewTexture] oriTextureHandle is not null, isFailTexture "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v3, v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    if-eq v3, v6, :cond_9

    .line 4183
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4184
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9, v1, v6, v7}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto :goto_1

    .line 4181
    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 4186
    :cond_9
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "[setViewTexture] texture is the same as store in viewTextureMap"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4195
    .end local v2           #height:I
    .end local v3           #oriTextureHandle:Lcom/htc/sunnyCore/Texture;
    .end local v4           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .end local v5           #taskPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .end local v6           #texture:Lcom/htc/sunnyCore/Texture;
    .end local v7           #viewId:Ljava/lang/String;
    .end local v8           #width:I
    :cond_a
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[setViewTexture] Bitmap is null, content index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", view id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getViewId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    const/4 v9, 0x1

    invoke-direct {p0, p2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V

    goto/16 :goto_0
.end method

.method protected setViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V
    .locals 3
    .parameter "map"
    .parameter "viewIdx"

    .prologue
    .line 4238
    packed-switch p2, :pswitch_data_0

    .line 4243
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setViewTextureMap] Unsupported view idex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :goto_0
    return-void

    .line 4240
    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    .line 4238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibleRange(III)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1870
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v2, :cond_1

    .line 1871
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Not initialize"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 1876
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Visible range setting error. beginIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1879
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 1880
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1881
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 1882
    .local v1, intervalCount:I
    if-gez v1, :cond_4

    .line 1884
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "visible range is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1888
    :cond_4
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-nez v2, :cond_5

    .line 1889
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "item count is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1893
    :cond_5
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_6

    .line 1894
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 1897
    :cond_6
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    .line 1898
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1902
    :cond_7
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_8

    .line 1903
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1904
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1906
    :cond_8
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int v0, v2, v1

    .line 1907
    .local v0, difference:I
    if-ltz v0, :cond_11

    .line 1909
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1910
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v2, :cond_10

    .line 1912
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1917
    :cond_9
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1918
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_a

    .line 1919
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1920
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1930
    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v2, :cond_b

    .line 1931
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->setVisibleRange(II)V

    .line 1933
    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v2, :cond_e

    .line 1934
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v2, v2, -0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 1935
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v2, v3, :cond_c

    .line 1936
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 1938
    :cond_c
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 1939
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v2, v3, :cond_d

    .line 1940
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 1942
    :cond_d
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 1944
    :cond_e
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_f

    .line 1945
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setVisibleRange(II)V

    .line 1948
    :cond_f
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_0

    .line 1949
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setVisibleRange(II)V

    goto/16 :goto_0

    .line 1913
    :cond_10
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_9

    .line 1915
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    goto/16 :goto_1

    .line 1925
    :cond_11
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1926
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "top = bottom = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 20
    .parameter "mediaItem"

    .prologue
    .line 3189
    const/4 v13, 0x0

    .line 3190
    .local v13, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    const/16 v19, 0x1001

    .line 3191
    .local v19, type:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3192
    const/16 v19, 0x1002

    .line 3194
    :cond_0
    packed-switch v19, :pswitch_data_0

    .line 3210
    :goto_0
    if-nez v13, :cond_3

    .line 3278
    :goto_1
    return-void

    .line 3196
    :pswitch_0
    new-instance v2, Lcom/htc/sunny2/common/ImageDecodeItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v2 .. v9}, Lcom/htc/sunny2/common/ImageDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .line 3197
    .local v2, imageDecodeItem:Lcom/htc/sunny2/common/ImageDecodeItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v3

    or-int/lit8 v10, v3, 0x20

    .line 3198
    .local v10, decodeFlags:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableLoadFromExif:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-nez v3, :cond_1

    .line 3199
    or-int/lit8 v10, v10, 0x10

    .line 3201
    :cond_1
    invoke-virtual {v2, v10}, Lcom/htc/sunny2/common/ImageDecodeItem;->setDecodeFlags(I)V

    .line 3202
    move-object v13, v2

    .line 3203
    goto :goto_0

    .line 3205
    .end local v2           #imageDecodeItem:Lcom/htc/sunny2/common/ImageDecodeItem;
    .end local v10           #decodeFlags:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    const/16 v18, 0x0

    .line 3206
    .local v18, resources:Landroid/content/res/Resources;
    :goto_2
    new-instance v13, Lcom/htc/sunny2/common/ImageResourceDecodeItem;

    .end local v13           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v13, v3, v4, v0, v1}, Lcom/htc/sunny2/common/ImageResourceDecodeItem;-><init>(IILcom/htc/sunnyCore/IMediaData;Landroid/content/res/Resources;)V

    .restart local v13       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    goto :goto_0

    .line 3205
    .end local v18           #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    goto :goto_2

    .line 3212
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v15

    .line 3213
    .local v15, mediaSourceType:I
    iput v15, v13, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 3214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v3, v13, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 3215
    const/4 v12, 0x0

    .line 3216
    .local v12, hasError:Z
    packed-switch v15, :pswitch_data_1

    .line 3246
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v11

    .line 3247
    .local v11, filePath:Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 3248
    :cond_4
    const/4 v12, 0x1

    .line 3253
    .end local v11           #filePath:Ljava/lang/String;
    :cond_5
    :goto_3
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v3

    iput v3, v13, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 3254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v3

    iput v3, v13, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 3255
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 3256
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 3257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iput v3, v13, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 3258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v3, v13, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 3260
    if-nez v12, :cond_b

    const/4 v3, 0x1

    :goto_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 3261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v13}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 3263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v14

    .line 3264
    .local v14, itemAttribute:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v14, :cond_7

    .line 3265
    iget v0, v13, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v16, v0

    .line 3266
    .local v16, position:I
    const/4 v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 3267
    const/16 v17, 0x0

    .line 3268
    .local v17, quality:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v3, :cond_6

    .line 3269
    const/16 v17, 0x1

    .line 3271
    :cond_6
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 3272
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 3275
    .end local v14           #itemAttribute:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    .end local v16           #position:I
    .end local v17           #quality:I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 3276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 3277
    const/4 v13, 0x0

    .line 3278
    goto/16 :goto_1

    .line 3218
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3219
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_3

    .line 3221
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "setupCurrentTaskToMediaDecodeThread: MediaData ParcelFileDescriptor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    const/4 v12, 0x1

    .line 3224
    goto/16 :goto_3

    .line 3226
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 3227
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto/16 :goto_3

    .line 3229
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "setupCurrentTaskToMediaDecodeThread: MediaData Uri is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    const/4 v12, 0x1

    .line 3232
    goto/16 :goto_3

    .line 3234
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 3235
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    goto/16 :goto_3

    .line 3237
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "setupCurrentTaskToMediaDecodeThread: MediaData InputStream is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    const/4 v12, 0x1

    .line 3240
    goto/16 :goto_3

    .line 3260
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 3194
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3216
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected textureReuseForNewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V
    .locals 14
    .parameter "oldMap"
    .parameter "newMap"
    .parameter "medialist"
    .parameter "subIdx"
    .parameter "attributes"

    .prologue
    .line 1095
    if-nez p1, :cond_1

    .line 1146
    :cond_0
    return-void

    .line 1097
    :cond_1
    const/4 v7, 0x0

    .line 1098
    .local v7, originalOldMapSize:I
    const/4 v8, 0x0

    .line 1100
    .local v8, recycledCount:I
    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v7

    .line 1101
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .local v2, i:I
    :goto_0
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v2, v11, :cond_0

    .line 1103
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    .line 1104
    .local v5, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-nez v5, :cond_3

    .line 1106
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[textureReuseForNewTextureMap] null media data, item count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", item index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1109
    :cond_3
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1110
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1111
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v12, p4, 0x1

    if-lt v11, v12, :cond_2

    .line 1114
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    check-cast v5, Lcom/htc/sunnyCore/IMediaData;

    .line 1115
    .restart local v5       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v5, :cond_2

    .line 1120
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_4
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v9

    .line 1121
    .local v9, sourceType:I
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1126
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, identifier:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    .line 1128
    .local v10, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v10, :cond_2

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v10, v11, :cond_2

    .line 1130
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 1131
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v11, :cond_5

    .line 1132
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v11, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 1133
    .local v1, data:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1134
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v6

    .line 1135
    .local v6, oldAttribute:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v6, :cond_5

    .line 1136
    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getDecodedQuality(I)I

    move-result v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    .line 1137
    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getDecodedQuality(I)I

    move-result v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 1141
    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    .end local v6           #oldAttribute:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public unbind(I)V
    .locals 13
    .parameter "mediaListIdx"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1187
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v9, :cond_4

    .line 1188
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "decodeItem is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v9, :cond_1

    .line 1204
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v9}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 1205
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v9, v11}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 1208
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v9}, Lcom/htc/sunny2/common/CachePuller;->free()V

    .line 1210
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v9, :cond_2

    .line 1211
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->freeInvisibleRange()V

    .line 1215
    :cond_2
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v9, :cond_9

    .line 1218
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v6

    .local v6, s:I
    :goto_1
    if-ge v2, v6, :cond_8

    .line 1220
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 1221
    .local v8, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_7

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v9, :cond_7

    .line 1223
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1224
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1218
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1190
    .end local v2           #i:I
    .end local v6           #s:I
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 1191
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v9, :cond_5

    .line 1192
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    .line 1193
    :cond_5
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v9, v10, :cond_6

    .line 1194
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1195
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "unbind NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1197
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1200
    :cond_6
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 1225
    .restart local v2       #i:I
    .restart local v6       #s:I
    .restart local v8       #texture:Lcom/htc/sunnyCore/Texture;
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v8, v9, :cond_3

    .line 1226
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_2

    .line 1229
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_8
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 1232
    .end local v2           #i:I
    .end local v6           #s:I
    :cond_9
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v9, :cond_d

    .line 1233
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v6

    .restart local v6       #s:I
    :goto_3
    if-ge v2, v6, :cond_c

    .line 1235
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 1236
    .restart local v8       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v9, :cond_b

    .line 1238
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1239
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1233
    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1240
    :cond_b
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v8, v9, :cond_a

    .line 1241
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_4

    .line 1244
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_c
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    .line 1247
    .end local v2           #i:I
    .end local v6           #s:I
    :cond_d
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v9, :cond_11

    .line 1248
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v6

    .restart local v6       #s:I
    :goto_5
    if-ge v2, v6, :cond_10

    .line 1250
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 1251
    .restart local v8       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_f

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v9, :cond_f

    .line 1253
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1254
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1248
    :cond_e
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1255
    :cond_f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v8, v9, :cond_e

    .line 1256
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_6

    .line 1259
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_10
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    .line 1262
    .end local v2           #i:I
    .end local v6           #s:I
    :cond_11
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_14

    .line 1265
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v6

    .restart local v6       #s:I
    :goto_7
    if-ge v2, v6, :cond_13

    .line 1267
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 1268
    .restart local v8       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_12

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v9, :cond_12

    .line 1270
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1271
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1265
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1274
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_13
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 1277
    .end local v2           #i:I
    .end local v6           #s:I
    :cond_14
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v9, :cond_17

    .line 1278
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_15
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/sunny2/common/IterationTaskGallery;

    .line 1279
    .local v7, task:Lcom/htc/sunny2/common/IterationTaskGallery;
    if-eqz v7, :cond_15

    .line 1280
    invoke-virtual {v7}, Lcom/htc/sunny2/common/IterationTaskGallery;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v4

    .line 1281
    .local v4, item:Lcom/htc/sunny2/common/CacheItem;
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1282
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_8

    .line 1285
    .end local v4           #item:Lcom/htc/sunny2/common/CacheItem;
    .end local v7           #task:Lcom/htc/sunny2/common/IterationTaskGallery;
    :cond_16
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1288
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_17
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v9, :cond_20

    .line 1289
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v9, :cond_1b

    .line 1290
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v6

    .restart local v6       #s:I
    :goto_9
    if-ge v2, v6, :cond_1a

    .line 1291
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v9, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 1292
    .restart local v8       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_19

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v9, :cond_19

    .line 1293
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1294
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    .line 1290
    :cond_18
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1295
    :cond_19
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v8, v9, :cond_18

    .line 1296
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_a

    .line 1299
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_1a
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    .line 1302
    .end local v2           #i:I
    .end local v6           #s:I
    :cond_1b
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_1e

    .line 1303
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v6

    .restart local v6       #s:I
    :goto_b
    if-ge v2, v6, :cond_1d

    .line 1305
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 1306
    .restart local v8       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v8, :cond_1c

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v9, :cond_1c

    .line 1308
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1309
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    .line 1303
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1312
    .end local v8           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_1d
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 1315
    .end local v2           #i:I
    .end local v6           #s:I
    :cond_1e
    iput v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    .line 1316
    iput v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    .line 1318
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v9, :cond_20

    .line 1319
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/sunny2/common/IterationTaskGallery;

    .line 1320
    .restart local v7       #task:Lcom/htc/sunny2/common/IterationTaskGallery;
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_c

    .line 1322
    .end local v7           #task:Lcom/htc/sunny2/common/IterationTaskGallery;
    :cond_1f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1326
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_20
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v9

    if-eqz v9, :cond_21

    .line 1328
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1329
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    .line 1332
    :cond_21
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1333
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1334
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1337
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v9, :cond_22

    .line 1338
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1339
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    .line 1341
    :cond_22
    iput v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 1343
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_23

    .line 1344
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1345
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "Clear video tasks."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_23
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v9, :cond_24

    .line 1350
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "Release mContentList"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iput-boolean v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 1352
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 1355
    :cond_24
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1356
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeTaskPool:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 1357
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationDecodeTaskPool:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 1358
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeTaskPool:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 1360
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    if-eqz v9, :cond_28

    .line 1361
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1362
    .local v5, loop:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_d
    if-ge v2, v5, :cond_27

    .line 1363
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 1364
    .local v1, bitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_25
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1365
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_25

    .line 1366
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_e

    .line 1369
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_26
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1362
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1371
    .end local v1           #bitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_27
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBitmapList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1374
    .end local v2           #i:I
    .end local v5           #loop:I
    :cond_28
    invoke-virtual {p0, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 1375
    sget-boolean v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v9, :cond_29

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "unbind-"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_29
    return-void
.end method
