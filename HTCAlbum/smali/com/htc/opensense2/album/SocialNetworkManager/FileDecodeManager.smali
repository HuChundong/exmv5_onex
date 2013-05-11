.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "FileDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;",
        "Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final CACHE_LOCKER:Ljava/lang/Object;

.field protected mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

.field protected mUIScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    .line 13
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mUIScrollState:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->CACHE_LOCKER:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    sget v1, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->CACHE_LOCKER:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 27
    :cond_0
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"
    .parameter "source"

    .prologue
    .line 43
    const/4 v8, 0x0

    .line 44
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->CACHE_LOCKER:Ljava/lang/Object;

    monitor-enter v9

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 48
    :cond_0
    monitor-exit v9

    .line 49
    return-object v8

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "nScrollState"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mUIScrollState:I

    .line 32
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 2
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->CACHE_LOCKER:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->setVisibleRange(II)V

    .line 39
    :cond_0
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
