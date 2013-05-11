.class final Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;
.super Ljava/lang/Thread;
.source "AlbumCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/ObjectWriter/AlbumCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadCacheUpdate"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCancel:Z

.field mContext:Landroid/content/Context;

.field mMediaType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 2
    .parameter "cxt"
    .parameter "bundle"
    .parameter "mediaType"

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    .line 444
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    .line 445
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    .line 446
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mMediaType:I

    .line 449
    iput-object p1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    .line 450
    iput-object p2, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    .line 451
    iput p3, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mMediaType:I

    .line 452
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    .line 478
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 456
    const-string v1, "AlbumCacher"

    const-string v2, "[HTCAlbum][AlbumCacher][updateCache]: Begin"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 458
    const-string v0, "AlbumCacher"

    const-string v1, "[HTCAlbum][AlbumCacher][updateCache]: null context or filename"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mBundle:Landroid/os/Bundle;

    const-string v2, "MimeTypeFilter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 462
    .local v7, filter:Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v6}, Lcom/htc/album/helper/FolderManager;-><init>()V

    .line 464
    .local v6, collectionMgr:Lcom/htc/album/helper/FolderManager;
    iget-boolean v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    if-eq v1, v5, :cond_0

    .line 466
    iget-object v1, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mMediaType:I

    invoke-virtual {v6, v1, v2, v7, v0}, Lcom/htc/album/helper/FolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v3

    .line 468
    .local v3, newCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-boolean v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mCancel:Z

    if-eq v0, v5, :cond_0

    .line 470
    iget-object v0, p0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 473
    const-string v0, "AlbumCacher"

    const-string v1, "[HTCAlbum][AlbumCacher][updateCache]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3           #newCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v6           #collectionMgr:Lcom/htc/album/helper/FolderManager;
    .end local v7           #filter:Ljava/lang/String;
    :cond_2
    move-object v7, v0

    .line 461
    goto :goto_1
.end method
