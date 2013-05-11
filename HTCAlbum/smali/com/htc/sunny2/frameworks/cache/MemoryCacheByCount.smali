.class public Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;
.super Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;
.source "MemoryCacheByCount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KEY:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase",
        "<TKEY;TT;>;"
    }
.end annotation


# instance fields
.field private mCount:I

.field protected mKeyQueues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TKEY;>;"
        }
    .end annotation
.end field

.field protected mTop:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 21
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    .line 23
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mCount:I

    .line 24
    return-void
.end method


# virtual methods
.method protected checkCapacity(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mCount:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 148
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->lock()V

    .line 149
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->unlock()V

    .line 155
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->clear()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    .line 158
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->unlock()V

    throw v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 173
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mCount:I

    return v0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    .line 31
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v3

    .line 78
    :cond_1
    :goto_0
    return v1

    .line 33
    :cond_2
    const/4 v1, 0x0

    .line 36
    .local v1, ret:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->lock()V

    .line 37
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 39
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->unlock()V

    .line 76
    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, t:Ljava/lang/Object;,"TT;"
    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->unlock()V

    move v1, v3

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    :try_start_2
    instance-of v3, p2, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v3, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    move-object v3, v0

    iget v3, v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 51
    if-eqz v2, :cond_5

    .line 53
    const-string v3, "MemoryCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key exists. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 58
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 73
    .end local v2           #t:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->unlock()V

    throw v3

    .line 64
    .restart local v2       #t:Ljava/lang/Object;,"TT;"
    :cond_6
    if-eqz v2, :cond_7

    .line 66
    :try_start_3
    const-string v3, "MemoryCache"

    const-string v4, "Key exists. remove old item."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->releaseItemResource(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :cond_7
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, item:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->lock()V

    .line 128
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->releaseItemResource(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->unlock()V

    .line 136
    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    .line 137
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->unlock()V

    throw v1
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;,"Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount<TKEY;TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v4

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, key:Ljava/lang/Object;,"TKEY;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, item:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_2

    .line 101
    new-instance v2, Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;

    const-string v3, "item null"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->releaseItemResource(Ljava/lang/Object;)V

    .line 109
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    goto :goto_0
.end method
