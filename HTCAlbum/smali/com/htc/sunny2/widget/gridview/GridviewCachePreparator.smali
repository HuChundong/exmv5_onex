.class public Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;
.super Ljava/lang/Object;
.source "GridviewCachePreparator.java"


# static fields
.field public static final CACHE_RESULT_CONTINUE:I = 0x2

.field public static final CACHE_RESULT_ERROR:I = 0x3

.field public static final CACHE_RESULT_FINISH:I = 0x4

.field public static final CACHE_RESULT_OK:I = 0x1

.field public static final CACHE_SET_CUSTOM:I = 0x64

.field public static final CACHE_SET_DEFAULT:I = -0x1

.field public static final CACHE_SET_FOLDER:I = 0x65

.field public static final CACHE_SET_GRID:I = 0xa

.field public static final CACHE_SET_HIGH:I = 0xc

.field public static final CACHE_SET_MIDIUM:I = 0xb

.field public static final CACHE_TASK_DECODE:I = 0x2

.field public static final CACHE_TASK_ENCODE:I = 0x1

.field public static final FULL_FILM_ID:I = 0x1

.field public static final GRID_ID:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "GridviewCachePreparator"

.field private static final MAX_MEM_CACHE_LIMIT_COUNT:I = 0x12

.field public static final SOURCE_BOTH:I = 0x11

.field public static final SOURCE_MEMORY:I = 0x1

.field public static final SOURCE_STORAGE:I = 0x10


# instance fields
.field private mEnableFileCache:Z

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "memCacheSize"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;-><init>(Landroid/content/Context;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "memCacheSize"
    .parameter "fileCacheSize"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mEnableFileCache:Z

    .line 47
    const/16 v0, 0x12

    if-le p2, v0, :cond_0

    .line 48
    const/16 p2, 0x12

    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 53
    const-string v0, "GridviewCachePreparator"

    const-string v1, "Context is null, reset fileCacheSize to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 p3, 0x0

    .line 56
    :cond_1
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-direct {v0, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 57
    if-lez p3, :cond_2

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mEnableFileCache:Z

    .line 59
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableFileCache(Landroid/content/Context;I)Z

    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->clear()V

    .line 101
    return-void
.end method

.method public enableCache(ZI)V
    .locals 1
    .parameter "bEnable"
    .parameter "source"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableCache(ZI)V

    .line 97
    return-void
.end method

.method public executeCacheTask(J)I
    .locals 1
    .parameter "limitedTimeMillis"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v0

    return v0
.end method

.method public freeInvisibleRange()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 125
    return-void
.end method

.method public getBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "item"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getDefaultCacheKey()I

    move-result v0

    return v0
.end method

.method public getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    return-object v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getMemCacheSize()I

    move-result v0

    return v0
.end method

.method public hasFileCache()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mEnableFileCache:Z

    return v0
.end method

.method public newMemoryCacheSet(II)Z
    .locals 1
    .parameter "cacheSetID"
    .parameter "memCacheSize"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    move-result v0

    return v0
.end method

.method public onMediaMounted()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->onMediaMounted()V

    .line 113
    return-void
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I
    .locals 1
    .parameter "item"
    .parameter "source"
    .parameter "exeTime"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v0

    return v0
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I
    .locals 1
    .parameter "item"
    .parameter "source"
    .parameter "exeTime"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->push(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->release()V

    .line 105
    return-void
.end method

.method public removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 93
    return-void
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 1
    .parameter "key"
    .parameter "cacheSize"
    .parameter "keepVisible"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->resetMemoryCacheSize(IIZ)V

    .line 109
    return-void
.end method

.method public setRangeBoundary(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setRangeBoundary(I)V

    .line 121
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setVisibleRange(II)V

    .line 117
    return-void
.end method
