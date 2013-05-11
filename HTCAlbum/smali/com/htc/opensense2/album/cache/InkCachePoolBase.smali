.class public Lcom/htc/opensense2/album/cache/InkCachePoolBase;
.super Ljava/lang/Object;
.source "InkCachePoolBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mCacheSize:I

.field protected mLocker:Ljava/lang/Object;

.field protected mPool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mRangeBegin:I

.field protected mRangeEnd:I

.field protected mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 27
    .local p0, this:Lcom/htc/opensense2/album/cache/InkCachePoolBase;,"Lcom/htc/opensense2/album/cache/InkCachePoolBase<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    .line 29
    iput p1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mCacheSize:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 125
    .local p0, this:Lcom/htc/opensense2/album/cache/InkCachePoolBase;,"Lcom/htc/opensense2/album/cache/InkCachePoolBase<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/htc/opensense2/album/cache/InkCachePoolBase;,"Lcom/htc/opensense2/album/cache/InkCachePoolBase<TT;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, object:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    .line 62
    :cond_0
    monitor-exit v2

    .line 64
    return-object v0

    .line 62
    .end local v0           #object:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/htc/opensense2/album/cache/InkCachePoolBase;,"Lcom/htc/opensense2/album/cache/InkCachePoolBase<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 38
    .local v0, index:I
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 40
    .local v1, size:I
    if-gez v0, :cond_1

    .line 42
    iget v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mCacheSize:I

    if-lt v1, v2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->removeOldestItem()Z

    .line 47
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    monitor-exit v3

    .line 52
    return-void

    .line 51
    .end local v0           #index:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public remove(I)V
    .locals 3
    .parameter "key"

    .prologue
    .line 134
    .local p0, this:Lcom/htc/opensense2/album/cache/InkCachePoolBase;,"Lcom/htc/opensense2/album/cache/InkCachePoolBase<TT;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 137
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 138
    iget v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    monitor-exit v2

    .line 141
    return-void

    .line 140
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected removeOldestItem()Z
    .locals 14

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/cache/InkCachePoolBase;,"Lcom/htc/opensense2/album/cache/InkCachePoolBase<TT;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 75
    iget-object v6, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    .line 76
    .local v6, pool:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TT;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 77
    .local v7, size:I
    if-gtz v7, :cond_0

    .line 120
    :goto_0
    return v13

    .line 80
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeBegin:I

    .local v0, begin:I
    iget v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeEnd:I

    .line 81
    .local v1, end:I
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .local v8, upper:I
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 83
    .local v4, lower:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 85
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 87
    .local v3, key:I
    if-ge v2, v4, :cond_2

    .line 89
    move v4, v2

    .line 83
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_2
    if-le v2, v8, :cond_1

    .line 93
    move v8, v2

    goto :goto_2

    .line 97
    .end local v3           #key:I
    :cond_3
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 98
    sget-object v9, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeOldestItem] upper : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lower "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_4
    const/4 v5, -0x1

    .line 102
    .local v5, pickedKey:I
    if-ge v4, v0, :cond_5

    .line 104
    move v5, v4

    .line 116
    :goto_3
    invoke-virtual {p0, v5}, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->remove(I)V

    .line 118
    iget v9, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    goto :goto_0

    .line 106
    :cond_5
    if-le v8, v1, :cond_6

    .line 108
    move v5, v8

    goto :goto_3

    .line 112
    :cond_6
    sget-object v9, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeOldestItem] No space outside visible range. ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    goto :goto_3
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 69
    .local p0, this:Lcom/htc/opensense2/album/cache/InkCachePoolBase;,"Lcom/htc/opensense2/album/cache/InkCachePoolBase<TT;>;"
    iput p1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeBegin:I

    .line 70
    iput p2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeEnd:I

    .line 71
    return-void
.end method
