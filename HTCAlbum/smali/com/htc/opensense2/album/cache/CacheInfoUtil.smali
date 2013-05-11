.class public Lcom/htc/opensense2/album/cache/CacheInfoUtil;
.super Ljava/lang/Object;
.source "CacheInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final GetFolderIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "sData"
    .parameter "arr_DMCFOLDER"

    .prologue
    const/4 v5, -0x1

    .line 97
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, s:[Ljava/lang/String;
    array-length v3, v4

    .line 101
    .local v3, n:I
    add-int/lit8 v2, v3, -0x2

    .line 103
    .local v2, idx:I
    if-gez v2, :cond_1

    move v1, v5

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    aget-object v0, v4, v2

    .line 109
    .local v0, folder:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 110
    aget-object v6, p1, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v5

    .line 115
    goto :goto_0
.end method

.method public static final GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 3
    .parameter "nWhichStorage"

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, root:Ljava/lang/String;
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    .line 40
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 41
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    .line 42
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    .line 44
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "thumbnail_count"
    .parameter "sRootPath"
    .parameter "folderName"

    .prologue
    .line 52
    array-length v2, p0

    .line 54
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_2

    if-ge v1, v2, :cond_2

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, s:Ljava/lang/String;
    const-wide/16 v5, 0x0

    aput-wide v5, p0, v1

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, names:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    aput-wide v5, p0, v1

    goto :goto_1

    .line 72
    .end local v0           #f:Ljava/io/File;
    .end local v3           #names:[Ljava/lang/String;
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static final addFolderCount([JLjava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;[Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "thumbnail_count"
    .parameter "sData"
    .parameter "storage"
    .parameter "ARR_FOLDER"
    .parameter "LOG_TAG"

    .prologue
    const-wide/16 v1, 0x0

    .line 77
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-wide v1

    .line 81
    :cond_1
    invoke-static {p1, p3}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetFolderIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, nFolder:I
    if-ltz v0, :cond_0

    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 88
    const-wide/16 v1, 0x1

    aget-wide v3, p0, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 92
    aget-wide v1, p0, v0

    goto :goto_0
.end method

.method public static final isRightCache(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .parameter "path"
    .parameter "ARR_FOLDER"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, folder:[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v3

    .line 20
    :cond_1
    array-length v5, v0

    add-int/lit8 v2, v5, -0x2

    .line 22
    .local v2, idx:I
    if-lez v2, :cond_0

    .line 26
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 27
    aget-object v5, p1, v1

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    .line 28
    goto :goto_0

    .line 26
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "volume"
    .parameter "thumbprefix"
    .parameter "sAction"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
