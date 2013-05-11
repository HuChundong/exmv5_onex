.class Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;
.super Ljava/lang/Object;
.source "DMCOnlineImageProvider.java"

# interfaces
.implements Lcom/htc/opensense/cache/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;->this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 6
    .parameter "ex"
    .parameter "bundle"

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, szPhotoUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 250
    .local v1, szPhotoId:Ljava/lang/String;
    const/4 v0, -0x1

    .line 252
    .local v0, nCacheIndex:I
    const-string v3, "photo_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "photo_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    const-string v3, "index_id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 256
    const-string v3, "DMCImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [DMCProvider][onDownloadError]: ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7
    .parameter "uri"
    .parameter "bundle"

    .prologue
    .line 262
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;->this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 264
    const-string v4, "DMCImageProvider"

    const-string v5, "KA>>> [DMCProvider][onDownloadSuccess]: not run on UI thread !"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    const/4 v3, 0x0

    .line 268
    .local v3, szPhotoUrl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 269
    .local v2, szPhotoId:Ljava/lang/String;
    const/4 v1, -0x1

    .line 271
    .local v1, nCacheIndex:I
    const-string v4, "photo_url"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    const-string v4, "photo_id"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v4, "index_id"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 275
    if-ltz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_3

    .line 277
    :cond_1
    const-string v4, "DMCImageProvider"

    const-string v5, "KA>>> [DMCProvider][onDownloadSuccess]: Para NG !"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_2
    :goto_0
    return-void

    .line 281
    :cond_3
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;->this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->access$000(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;

    .line 282
    .local v0, cache:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    if-eqz v0, :cond_4

    .line 284
    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    iput-object p1, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUri:Landroid/net/Uri;

    .line 287
    const/4 v4, 0x3

    iput v4, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    .line 288
    const/4 v4, 0x0

    iput v4, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    .line 290
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;->this$0:Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;

    #calls: Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->notifyDownloadSuccess(ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V
    invoke-static {v4, v1, v0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->access$100(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V

    .line 292
    const-string v4, "DMCImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [DMCProvider][onDownloadSuccess]: Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " download complete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_4
    const-string v4, "DMCImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [DMCProvider][onDownloadSuccess]: Get Cache NG ! index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
