.class public Lcom/htc/sunny2/common/CachePuller;
.super Ljava/lang/Object;
.source "CachePuller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/CachePuller$STATE;
    }
.end annotation


# static fields
.field private static final LTAG:Ljava/lang/String; = "CachePuller"


# instance fields
.field cacheIdentifier:Ljava/lang/String;

.field cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field cacheSet:I

.field cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field cacheTimeStamp:J

.field itemIndex:I

.field originalFileSize:I

.field specialFlag:I

.field state:Lcom/htc/sunny2/common/CachePuller$STATE;

.field targetCacheSource:I

.field useService:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 30
    iput-object v3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    .line 34
    iput v2, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    .line 35
    iput v2, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    .line 36
    iput v2, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    .line 37
    iput-boolean v2, p0, Lcom/htc/sunny2/common/CachePuller;->useService:Z

    .line 38
    iput v2, p0, Lcom/htc/sunny2/common/CachePuller;->specialFlag:I

    .line 41
    iput-object v3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 48
    return-void
.end method


# virtual methods
.method public free()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_0

    .line 91
    const-string v0, "CachePuller"

    const-string v1, "free() - Cancel pull task"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-eqz v0, :cond_1

    .line 97
    iput-object v4, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 100
    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    .line 104
    iput v3, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    .line 105
    iput v3, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    .line 106
    iput v3, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    .line 107
    iput v3, p0, Lcom/htc/sunny2/common/CachePuller;->specialFlag:I

    .line 109
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 110
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v2, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-eq v1, v2, :cond_0

    .line 196
    :goto_0
    return-object v0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v1, :cond_1

    .line 192
    const-string v1, "CachePuller"

    const-string v2, "getBitmap() NG - null cacheTask"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public iterate(J)Z
    .locals 10
    .parameter "timeLimit"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_BEGIN:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_5

    .line 124
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-eqz v0, :cond_3

    .line 131
    const-string v0, "CachePuller"

    const-string v1, "iterate() NG - cacheItem is not null when begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    iget-object v2, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    iget v5, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    int-to-long v5, v5

    iget v7, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    iget-boolean v8, p0, Lcom/htc/sunny2/common/CachePuller;->useService:Z

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v1, p0, Lcom/htc/sunny2/common/CachePuller;->specialFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v2, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v9

    .line 138
    .local v9, rs:I
    const/4 v0, 0x1

    if-eq v9, v0, :cond_4

    const/4 v0, 0x2

    if-ne v9, v0, :cond_6

    .line 140
    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 155
    .end local v9           #rs:I
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_b

    .line 157
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    .restart local v9       #rs:I
    :cond_6
    const/4 v0, 0x4

    if-ne v9, v0, :cond_7

    .line 144
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 145
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_7
    const-string v0, "CachePuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iterate() NG - pull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 151
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 162
    .end local v9           #rs:I
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v9

    .line 163
    .restart local v9       #rs:I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_9

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    :cond_9
    const/4 v0, 0x4

    if-ne v9, v0, :cond_a

    .line 169
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 170
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string v0, "CachePuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iterate() NG - executeCacheTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 176
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 180
    .end local v9           #rs:I
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIIII)Z
    .locals 11
    .parameter "cacheManager"
    .parameter "cacheSet"
    .parameter "cacheIdentifier"
    .parameter "cacheTimeStamp"
    .parameter "originalFileSize"
    .parameter "itemIndex"
    .parameter "targetCacheSource"
    .parameter "specialFlag"

    .prologue
    .line 52
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/sunny2/common/CachePuller;->setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIIIZI)Z

    move-result v0

    return v0
.end method

.method public setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIIIZI)Z
    .locals 2
    .parameter "cacheManager"
    .parameter "cacheSet"
    .parameter "cacheIdentifier"
    .parameter "cacheTimeStamp"
    .parameter "originalFileSize"
    .parameter "itemIndex"
    .parameter "targetCacheSource"
    .parameter "useService"
    .parameter "specialFlag"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/sunny2/common/CachePuller;->free()V

    .line 59
    if-nez p1, :cond_0

    .line 61
    const-string v0, "CachePuller"

    const-string v1, "setup() NG - null cacheManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/htc/sunny2/common/CachePuller;->free()V

    .line 63
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 66
    :cond_0
    if-nez p3, :cond_1

    .line 68
    const-string p3, ""

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 72
    iput p2, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    .line 73
    iput-object p3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    .line 74
    iput-wide p4, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    .line 75
    iput p6, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    .line 76
    iput p7, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    .line 77
    iput p8, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    .line 78
    iput-boolean p9, p0, Lcom/htc/sunny2/common/CachePuller;->useService:Z

    .line 79
    iput p10, p0, Lcom/htc/sunny2/common/CachePuller;->specialFlag:I

    .line 81
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_BEGIN:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method
