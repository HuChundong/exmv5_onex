.class public Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;
.super Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;
.source "MemoryCacheBitmapByBytes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrCacheSize:I

.field private mMaxCacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxCacheSize"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;-><init>()V

    .line 102
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    .line 103
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    .line 25
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    .line 26
    return-void
.end method


# virtual methods
.method protected checkCapacity(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    .line 53
    .local v0, size:I
    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic checkCapacity(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->checkCapacity(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 87
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 88
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 92
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 95
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    const-string v3, "skyer"

    const-string v4, "clear bitmap"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->clear()V

    .line 98
    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->push(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public push(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter "key"
    .parameter "item"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 35
    .local v0, ret:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->lock()V

    .line 38
    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->unlock()V

    .line 44
    :cond_0
    return v0

    .line 40
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->unlock()V

    throw v1
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 63
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v5

    .line 65
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 66
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 71
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v4, v5, v6

    .line 74
    .local v4, size:I
    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v5, 0x1

    goto :goto_0
.end method
