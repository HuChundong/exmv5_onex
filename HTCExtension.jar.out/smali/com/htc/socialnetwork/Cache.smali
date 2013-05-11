.class public Lcom/htc/socialnetwork/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/socialnetwork/Cache$BufferPool;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final APTC_TAG:Ljava/lang/String; = "APTC"

.field private static final CACHE_RESERVED_RATIO:F = 0.7f

.field private static final DEFAULT_BUFFER_LENGTH:I = 0x800

.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork-Cache"

.field private static final MAX_PATH_LENGTH:I = 0xff

.field private static final PRESERVED_BLOCKS:I = 0xa


# instance fields
.field private final CACHE_RESERVED_SIZE:J

.field private final mBufferPool:Lcom/htc/socialnetwork/Cache$BufferPool;

.field private final mCachePath:Ljava/io/File;

.field private final mCacheSize:J

.field private mCurrentCacheSize:J

.field private final mPhotoPath:Ljava/lang/String;

.field private modifiedTimeAscendingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/htc/socialnetwork/Cache$BufferPool;

    const/4 v1, 0x2

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/Cache$BufferPool;-><init>(II)V

    iput-object v0, p0, Lcom/htc/socialnetwork/Cache;->mBufferPool:Lcom/htc/socialnetwork/Cache$BufferPool;

    .line 32
    new-instance v0, Lcom/htc/socialnetwork/Cache$1;

    invoke-direct {v0, p0}, Lcom/htc/socialnetwork/Cache$1;-><init>(Lcom/htc/socialnetwork/Cache;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/Cache;->modifiedTimeAscendingComparator:Ljava/util/Comparator;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 48
    iput-object p1, p0, Lcom/htc/socialnetwork/Cache;->mPhotoPath:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/htc/socialnetwork/Cache;->mCacheSize:J

    .line 50
    iget-wide v0, p0, Lcom/htc/socialnetwork/Cache;->mCacheSize:J

    long-to-float v0, v0

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/socialnetwork/Cache;->CACHE_RESERVED_SIZE:J

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/Cache;->mCachePath:Ljava/io/File;

    .line 55
    iget-object v0, p0, Lcom/htc/socialnetwork/Cache;->mCachePath:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/htc/socialnetwork/Cache;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 57
    const-string v0, "SocialNetwork-Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial cache size for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/Cache;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "SocialNetwork-Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-wide v0, p0, Lcom/htc/socialnetwork/Cache;->mCacheSize:J

    iget-wide v2, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 62
    iget-wide v0, p0, Lcom/htc/socialnetwork/Cache;->CACHE_RESERVED_SIZE:J

    invoke-direct {p0, v0, v1}, Lcom/htc/socialnetwork/Cache;->reduceCacheSize(J)V

    .line 63
    :cond_0
    return-void
.end method

.method private declared-synchronized ensureCacheSize(J)V
    .locals 8
    .parameter "ecpectedFileSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/socialnetwork/Cache;->getFsFreeSpace()J

    move-result-wide v2

    .line 233
    .local v2, freeSpace:J
    invoke-direct {p0}, Lcom/htc/socialnetwork/Cache;->getAvailSize()J

    move-result-wide v0

    .line 234
    .local v0, cacheAvail:J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 236
    .local v4, realAvailSize:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    iget-wide v6, p0, Lcom/htc/socialnetwork/Cache;->CACHE_RESERVED_SIZE:J

    invoke-direct {p0, v6, v7}, Lcom/htc/socialnetwork/Cache;->reduceCacheSize(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v0           #cacheAvail:J
    .end local v2           #freeSpace:J
    .end local v4           #realAvailSize:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private getAvailSize()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 250
    iget-wide v4, p0, Lcom/htc/socialnetwork/Cache;->mCacheSize:J

    iget-wide v6, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    sub-long v0, v4, v6

    .line 252
    .local v0, availSize:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 255
    .end local v0           #availSize:J
    :cond_0
    return-wide v0
.end method

.method private declared-synchronized getCurrentSize()J
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFileSize(Ljava/io/File;)J
    .locals 10
    .parameter "file"

    .prologue
    const-wide/16 v7, 0x0

    .line 186
    const-wide/16 v5, 0x0

    .line 188
    .local v5, size:J
    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-wide v7

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 195
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 198
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 199
    .local v1, currentFile:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/htc/socialnetwork/Cache;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #currentFile:Ljava/io/File;
    :cond_3
    move-wide v7, v5

    .line 201
    goto :goto_0
.end method

.method private getFsFreeSpace()J
    .locals 4

    .prologue
    .line 323
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/htc/socialnetwork/Cache;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, data_partition:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 327
    .local v0, blocks:I
    const/16 v2, 0xa

    if-le v2, v0, :cond_0

    .line 328
    const-wide/16 v2, 0x0

    .line 330
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-long v2, v2

    goto :goto_0
.end method

.method private static declared-synchronized getTempFileNameForAPTC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"
    .parameter "reference"

    .prologue
    .line 166
    const-class v2, Lcom/htc/socialnetwork/Cache;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 168
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "APTC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 166
    .end local v0           #buf:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private declared-synchronized increaseCurrentSize(J)V
    .locals 2
    .parameter "addSize"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reduceCacheSize(J)V
    .locals 27
    .parameter "limitSize"

    .prologue
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 264
    .local v18, start:J
    const/4 v5, 0x0

    .line 265
    .local v5, deletedCount:I
    const-wide/16 v6, 0x0

    .line 266
    .local v6, deletedSize:J
    const-wide/16 v20, 0x0

    .line 271
    .local v20, totalSize:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/Cache;->mCachePath:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 273
    .local v10, files:[Ljava/io/File;
    if-eqz v10, :cond_5

    .line 274
    move-object v3, v10

    .local v3, arr$:[Ljava/io/File;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v4, v3, v11

    .line 275
    .local v4, currentFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v22

    add-long v20, v20, v22

    .line 274
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 277
    .end local v4           #currentFile:Ljava/io/File;
    :cond_0
    const-string v22, "SocialNetwork-Cache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Need to clear cache. Cache size before clear: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v22, v0

    cmp-long v22, v20, v22

    if-eqz v22, :cond_1

    .line 282
    const-string v22, "SocialNetwork-Cache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mCurrentCacheSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 289
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/Cache;->modifiedTimeAscendingComparator:Ljava/util/Comparator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 291
    move-object v3, v10

    array-length v12, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v4, v3, v11

    .line 292
    .restart local v4       #currentFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 293
    .local v13, length:J
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    add-long/2addr v6, v13

    .line 296
    add-int/lit8 v5, v5, 0x1

    .line 298
    sub-long v22, v20, v6

    cmp-long v22, v22, p1

    if-gez v22, :cond_4

    .line 308
    .end local v3           #arr$:[Ljava/io/File;
    .end local v4           #currentFile:Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #length:J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 309
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_3

    .line 310
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 312
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 313
    .local v8, end:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCacheSize:J

    move-wide/from16 v22, v0

    sub-long v24, v20, v6

    sub-long v15, v22, v24

    .line 315
    .local v15, realAvail:J
    const-string v22, "SocialNetwork-Cache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Finish clear cache. duration: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sub-long v24, v8, v18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v22, "SocialNetwork-Cache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/Cache;->mPhotoPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " delete "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " files, deleted size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , realAvail: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , currentFilesSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .end local v10           #files:[Ljava/io/File;
    :goto_3
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 291
    .end local v8           #end:J
    .end local v15           #realAvail:J
    .restart local v3       #arr$:[Ljava/io/File;
    .restart local v4       #currentFile:Ljava/io/File;
    .restart local v10       #files:[Ljava/io/File;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #length:J
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 302
    .end local v3           #arr$:[Ljava/io/File;
    .end local v4           #currentFile:Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #length:J
    :cond_5
    :try_start_1
    const-string v22, "SocialNetwork-Cache"

    const-string v23, "Failed to list file in reduceCacheSize()"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 304
    .end local v10           #files:[Ljava/io/File;
    :catch_0
    move-exception v17

    .line 305
    .local v17, se:Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 309
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_6

    .line 310
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 312
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 313
    .restart local v8       #end:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCacheSize:J

    move-wide/from16 v22, v0

    sub-long v24, v20, v6

    sub-long v15, v22, v24

    .line 315
    .restart local v15       #realAvail:J
    const-string v22, "SocialNetwork-Cache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Finish clear cache. duration: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sub-long v24, v8, v18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v22, "SocialNetwork-Cache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/Cache;->mPhotoPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " delete "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " files, deleted size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , realAvail: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , currentFilesSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    .line 308
    .end local v8           #end:J
    .end local v15           #realAvail:J
    .end local v17           #se:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v23, v0

    sub-long v23, v23, v6

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 309
    const-wide/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-lez v23, :cond_7

    .line 310
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    .line 312
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 313
    .restart local v8       #end:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCacheSize:J

    move-wide/from16 v23, v0

    sub-long v25, v20, v6

    sub-long v15, v23, v25

    .line 315
    .restart local v15       #realAvail:J
    const-string v23, "SocialNetwork-Cache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Finish clear cache. duration: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v25, v8, v18

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v23, "SocialNetwork-Cache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/Cache;->mPhotoPath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " delete "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " files, deleted size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " , realAvail: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " , currentFilesSize: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/Cache;->mCurrentCacheSize:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    throw v22
.end method


# virtual methods
.method protected addPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 20
    .parameter "bitmap"
    .parameter "ratio"
    .parameter "pathname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 107
    .local v13, start:J
    const/4 v10, 0x0

    .line 108
    .local v10, res:Z
    const-wide/16 v5, 0x0

    .line 109
    .local v5, existSize:J
    const-wide/16 v7, 0x0

    .line 112
    .local v7, finalSize:J
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v9, photoFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 115
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 116
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 120
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/Cache;->mCachePath:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/socialnetwork/Cache;->getTempFileNameForAPTC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 122
    .local v15, tempFilaName:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v16, tempFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_1

    .line 125
    const-string v17, "SocialNetwork-Cache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Temp file alreay exists: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 127
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 131
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v17, v17, v18

    mul-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    int-to-long v11, v0

    .line 132
    .local v11, size:J
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/htc/socialnetwork/Cache;->ensureCacheSize(J)V

    .line 134
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 140
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 141
    const-string v17, "SocialNetwork-Cache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to rename "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_2
    const-wide/16 v17, 0x0

    cmp-long v17, v7, v17

    if-ltz v17, :cond_3

    .line 149
    sub-long v17, v7, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/Cache;->increaseCurrentSize(J)V

    .line 159
    :cond_3
    return v10

    .line 143
    .end local v9           #photoFile:Ljava/io/File;
    .end local v11           #size:J
    .end local v15           #tempFilaName:Ljava/lang/String;
    .end local v16           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 144
    .local v4, e:Ljava/io/IOException;
    :try_start_1
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d8

    const-string v19, "IOException in addPhotoToCache"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-ltz v18, :cond_4

    .line 149
    sub-long v18, v7, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/Cache;->increaseCurrentSize(J)V

    :cond_4
    throw v17
.end method

.method protected writeToCache(Ljava/io/InputStream;JLjava/io/FileOutputStream;)Z
    .locals 10
    .parameter "is"
    .parameter "photoSize"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 71
    .local v4, start:J
    invoke-direct {p0, p2, p3}, Lcom/htc/socialnetwork/Cache;->ensureCacheSize(J)V

    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .local v2, size:J
    iget-object v7, p0, Lcom/htc/socialnetwork/Cache;->mBufferPool:Lcom/htc/socialnetwork/Cache$BufferPool;

    invoke-virtual {v7}, Lcom/htc/socialnetwork/Cache$BufferPool;->acquire()[B

    move-result-object v0

    .line 77
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-lez v1, :cond_0

    .line 78
    invoke-virtual {p4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 79
    int-to-long v7, v1

    add-long/2addr v2, v7

    goto :goto_0

    .line 81
    :cond_0
    iget-object v7, p0, Lcom/htc/socialnetwork/Cache;->mBufferPool:Lcom/htc/socialnetwork/Cache$BufferPool;

    invoke-virtual {v7, v0}, Lcom/htc/socialnetwork/Cache$BufferPool;->release([B)V

    .line 84
    cmp-long v7, p2, v2

    if-eqz v7, :cond_1

    .line 85
    const-string v7, "SocialNetwork-Cache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "photoSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " outSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 89
    invoke-direct {p0, v2, v3}, Lcom/htc/socialnetwork/Cache;->increaseCurrentSize(J)V

    .line 100
    const/4 v6, 0x1

    :cond_2
    return v6
.end method
