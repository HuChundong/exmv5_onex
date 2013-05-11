.class public Lcom/htc/opensense2/album/cache/InkCacheManager;
.super Ljava/lang/Object;
.source "InkCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;,
        Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_LOAD_COMPLETED:I = 0x3e8

.field private static final CACHE_FILE_LOAD_FAILED:I = 0x3e9

.field public static final CACHE_SET_INK_PNG:I = 0x65

.field public static final CACHE_SET_INK_STROKE:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;

.field private mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

.field private mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V
    .locals 1
    .parameter "context"
    .parameter "bmpSize"
    .parameter "fileSize"
    .parameter "listener"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    invoke-direct {v0, p2}, Lcom/htc/opensense2/album/cache/InkScreenCachePool;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    .line 43
    new-instance v0, Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    invoke-direct {v0, p3}, Lcom/htc/opensense2/album/cache/InkStrokeCachePool;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    .line 44
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    invoke-direct {v0, p0, p1, p3}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;-><init>(Lcom/htc/opensense2/album/cache/InkCacheManager;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    .line 45
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->start()V

    .line 46
    iput-object p4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mListener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;

    .line 47
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheManager$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/cache/InkCacheManager$1;-><init>(Lcom/htc/opensense2/album/cache/InkCacheManager;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/cache/InkCacheManager;Lcom/htc/opensense2/album/cache/InkCacheTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->saveToPool(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense2/album/cache/InkCacheManager;)Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mListener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense2/album/cache/InkCacheManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private pullFromPool(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z
    .locals 8
    .parameter "task"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, result:Lcom/htc/opensense2/album/cache/InkCacheTask;
    iget v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_2

    .line 129
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/cache/InkScreenCachePool;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Lcom/htc/opensense2/album/cache/InkCacheTask;
    check-cast v2, Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 136
    .restart local v2       #result:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    move v0, v3

    .line 137
    .local v0, bRet:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mListener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;

    .line 138
    .local v1, listener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;->onInkCacheReady(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 141
    :cond_1
    sget-object v5, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "[pullFromPool] Set = "

    aput-object v7, v6, v4

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, ", Result = "

    aput-object v4, v6, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return v0

    .line 131
    .end local v0           #bRet:Z
    .end local v1           #listener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;
    :cond_2
    iget v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v6, 0x66

    if-ne v5, v6, :cond_0

    .line 133
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/cache/InkStrokeCachePool;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Lcom/htc/opensense2/album/cache/InkCacheTask;
    check-cast v2, Lcom/htc/opensense2/album/cache/InkCacheTask;

    .restart local v2       #result:Lcom/htc/opensense2/album/cache/InkCacheTask;
    goto :goto_0

    :cond_3
    move v0, v4

    .line 136
    goto :goto_1
.end method

.method private saveToPool(Lcom/htc/opensense2/album/cache/InkCacheTask;)V
    .locals 4
    .parameter "task"

    .prologue
    .line 110
    sget-object v0, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[saveToPool] Set = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-boolean v0, p1, Lcom/htc/opensense2/album/cache/InkCacheTask;->mMarkDelete:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/opensense2/album/cache/InkScreenCachePool;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_2
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/opensense2/album/cache/InkStrokeCachePool;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z
    .locals 6
    .parameter "task"

    .prologue
    const/4 v5, 0x2

    .line 97
    sget-object v1, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[pull] task = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pullFromPool(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    move-result v0

    .line 99
    .local v0, bRet:Z
    if-nez v0, :cond_0

    .line 101
    iput v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 102
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->addTask(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    move-result v0

    .line 105
    :cond_0
    return v0
.end method

.method public push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z
    .locals 5
    .parameter "task"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    sget-object v0, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[push] task = "

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iput v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 90
    iput-boolean v3, p1, Lcom/htc/opensense2/album/cache/InkCacheTask;->mMarkDelete:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->saveToPool(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 92
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->addTask(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 154
    sget-object v1, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] ++"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->cancel()V

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mListener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;

    .line 169
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/InkScreenCachePool;->clear()V

    .line 170
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/InkStrokeCachePool;->clear()V

    .line 171
    sget-object v1, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] --"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/opensense2/album/cache/InkCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[release] Exception during join worker, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 176
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/htc/opensense2/album/cache/InkCacheTask;->mMarkDelete:Z

    .line 180
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mWorker:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->removeTask(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 185
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 186
    .local v0, key:I
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/cache/InkScreenCachePool;->remove(I)V

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/cache/InkStrokeCachePool;->remove(I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mBitmapPool:Lcom/htc/opensense2/album/cache/InkScreenCachePool;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/cache/InkScreenCachePool;->setVisibleRange(II)V

    .line 149
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager;->mStrokePool:Lcom/htc/opensense2/album/cache/InkStrokeCachePool;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/cache/InkStrokeCachePool;->setVisibleRange(II)V

    .line 150
    return-void
.end method
