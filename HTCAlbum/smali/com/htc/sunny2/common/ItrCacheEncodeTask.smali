.class public Lcom/htc/sunny2/common/ItrCacheEncodeTask;
.super Lcom/htc/sunny2/common/IterationTaskGallery;
.source "ItrCacheEncodeTask.java"


# static fields
.field private static final CANCEL_TASK:I = -0x1

.field private static final DEFAULT_TIME_LIMIT:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ItrCacheEncodeTask"


# instance fields
.field private mIsSetup:Z

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field private mResultCode:I

.field private mSourceType:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 15
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mStartTime:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mID:I

    .line 21
    return-void
.end method

.method private getTimeLimit()J
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private shouldContinue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isFailed()Z
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    .line 48
    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 6

    .prologue
    .line 52
    sget-boolean v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "ItrCacheEncodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ItrCacheEncodeTask][onEnd] Total spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public onIterate()Z
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->shouldContinue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->getTimeLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->shouldContinue()Z

    move-result v0

    :goto_0
    return v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mStartTime:J

    .line 40
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v2, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->getTimeLimit()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->push(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 42
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    .line 78
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 80
    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;->release()V

    .line 81
    return-void
.end method

.method public setCacheSourceType(I)V
    .locals 0
    .parameter "cacheSourceType"

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    .line 85
    return-void
.end method

.method public setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V
    .locals 0
    .parameter "iteratorCacheManager"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 89
    return-void
.end method
