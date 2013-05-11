.class public Lcom/htc/opensense2/album/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final MAX_LISTVIEW_MEM_BUFFER:I = 0x0

.field private static final MAX_MEM_BUFFER_LISTVIEW:[I = null

#the value of this static final field might be set in the static constructor
.field public static final NEXT_LISTVIEW_VISIBLE_RANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PREV_LISTVIEW_VISIBLE_RANGE:I = 0x0

.field public static final SOURCE_BOTH:I = 0x3

.field public static final SOURCE_MEMORY:I = 0x1

.field public static final SOURCE_STORAGE:I = 0x2

.field private static final VISIBLE_RANGE_LISTVIEW_NEXT:[I

.field private static final VISIBLE_RANGE_LISTVIEW_PREV:[I


# instance fields
.field private mEnableFileCache:Z

.field private mEnableMemCache:Z

.field private mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

.field private final mLocker:Ljava/lang/Object;

.field private mMaxSize:I

.field private mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

.field private mMemCacheKey:I

.field private mMemCacheSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_MEM_BUFFER_LISTVIEW:[I

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_PREV:[I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_NEXT:[I

    .line 30
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_MEM_BUFFER_LISTVIEW:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    .line 31
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_PREV:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/opensense2/album/cache/CacheManager;->PREV_LISTVIEW_VISIBLE_RANGE:I

    .line 32
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_NEXT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/opensense2/album/cache/CacheManager;->NEXT_LISTVIEW_VISIBLE_RANGE:I

    .line 49
    const-class v0, Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 26
    :array_0
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    .line 27
    :array_1
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    .line 28
    :array_2
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "memCacheSize"
    .parameter "fileCacheSize"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    .line 453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 456
    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 457
    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 458
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    .line 57
    iput-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    .line 58
    iput-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    .line 60
    if-lez p3, :cond_0

    .line 62
    new-instance v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-direct {v0, p1, p3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    .line 63
    iput-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    .line 65
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->newMemoryCache(II)V

    .line 66
    return-void
.end method

.method private getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 438
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 440
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 442
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 443
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 446
    :cond_0
    return-object v0
.end method

.method private newMemoryCache(II)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->removeMemoryCache(I)V

    .line 357
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[newMemoryCache] New cache key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-direct {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 359
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 360
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-void
.end method

.method private pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"
    .parameter "fileName"
    .parameter "pos"

    .prologue
    .line 405
    iget-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_1

    .line 407
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 408
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 409
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v1

    .line 412
    .local v1, item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v1, :cond_0

    .line 413
    iget-object v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    monitor-exit v3

    .line 418
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v1           #item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :goto_0
    return-object v2

    .line 415
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_0
    monitor-exit v3

    .line 418
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "key"
    .parameter "fileName"
    .parameter "pos"
    .parameter "bmp"

    .prologue
    .line 383
    iget-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_2

    .line 385
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 386
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 387
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_1

    .line 389
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;-><init>()V

    .line 390
    .local v1, item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    iput p3, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    .line 391
    iput-object p4, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    .line 392
    iput p1, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->type:I

    .line 393
    if-nez p4, :cond_0

    .line 394
    const-string v2, "CacheManager"

    const-string v4, "pushMemBitmap bmp=null"

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    :cond_0
    invoke-virtual {v0, p2, v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    .end local v1           #item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :cond_1
    monitor-exit v3

    .line 401
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_2
    return-void

    .line 399
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeMemBitmap(ILjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "fileName"

    .prologue
    .line 423
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_1

    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    .line 431
    :cond_0
    monitor-exit v2

    .line 433
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    return-void

    .line 431
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeMemoryCache(I)V
    .locals 5
    .parameter "key"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 342
    :try_start_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeMemoryCache] Remove cache key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 345
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 348
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_0
    monitor-exit v2

    .line 351
    return-void

    .line 350
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchCache(I)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[switchCache] Switch key from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 304
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 306
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 193
    :cond_0
    return-void
.end method

.method public enableCache(ZI)V
    .locals 1
    .parameter "bEnable"
    .parameter "source"

    .prologue
    .line 171
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 173
    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/CacheManager;->release()V

    .line 179
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 183
    iput-boolean p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    goto :goto_0
.end method

.method public freeInvisibleRange()V
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[freeInvisibleRange] CacheKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visible range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_0

    .line 324
    monitor-exit v1

    .line 337
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->removeInvisibleRange()V

    .line 336
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheKey()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, -0x1

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v0

    goto :goto_0
.end method

.method public onMediaMounted()V
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->onMediaMounted()V

    .line 258
    :cond_0
    return-void
.end method

.method public pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"
    .parameter "source"

    .prologue
    .line 104
    const/4 v6, 0x0

    .line 109
    .local v6, bmp:Landroid/graphics/Bitmap;
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p6, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 112
    :cond_0
    if-nez v6, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->pull(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 123
    :goto_0
    if-eqz v6, :cond_1

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, p6, p1, p2, v6}, Lcom/htc/opensense2/album/cache/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 131
    :cond_1
    return-object v6

    .line 115
    :catch_0
    move-exception v7

    .line 117
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V
    .locals 8
    .parameter "bmp"
    .parameter "pos"
    .parameter "key"
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "source"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p4

    move-wide v2, p5

    move v4, p7

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 91
    :cond_1
    return-void

    .line 83
    :catch_0
    move-exception v7

    .line 84
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, cacheSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;>;"
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    monitor-enter v4

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 203
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 207
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_0

    .line 203
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 210
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    iget-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->release()V

    .line 213
    :cond_1
    return-void
.end method

.method public removeCache(Ljava/lang/String;IJII)V
    .locals 6
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"

    .prologue
    .line 157
    invoke-direct {p0, p6, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->removeMemBitmap(ILjava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->remove(Ljava/lang/String;JII)V

    .line 161
    :cond_0
    return-void
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"
    .parameter "keepVisible"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->switchCache(I)Z

    .line 229
    const/4 v0, 0x1

    .line 231
    .local v0, doCreate:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v2

    if-eq p2, v2, :cond_2

    const/4 v1, 0x1

    .line 236
    .local v1, sizeChanged:Z
    :goto_0
    if-nez v1, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 239
    if-eqz p3, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/CacheManager;->freeInvisibleRange()V

    .line 246
    .end local v1           #sizeChanged:Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->newMemoryCache(II)V

    .line 250
    :cond_1
    return-void

    .line 233
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    .restart local v1       #sizeChanged:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_1
.end method

.method public setRangeBoundary(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 293
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    .line 294
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setRangeBoundaries(II)V

    .line 295
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 4
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    const/4 v3, 0x0

    .line 266
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 267
    iput p2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 269
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_0

    .line 271
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    neg-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 272
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 275
    :cond_0
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    if-le v1, v2, :cond_1

    .line 277
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    sub-int v0, v1, v2

    .line 278
    .local v0, extra:I
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 279
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 281
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_1

    .line 282
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 285
    .end local v0           #extra:I
    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setVisibleRange(II)V

    .line 289
    :cond_2
    return-void
.end method
