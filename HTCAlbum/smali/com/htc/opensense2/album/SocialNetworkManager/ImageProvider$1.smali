.class Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense/cache/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 8
    .parameter "e"
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x3

    .line 383
    const-string v3, "ImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][onDownloadError]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x0

    .line 385
    .local v2, szPhotoUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 387
    .local v1, szPhotoId:Ljava/lang/String;
    const-string v3, "photo_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    const-string v3, "photo_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    if-nez v1, :cond_3

    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 402
    :cond_2
    iput v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 403
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    .line 405
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    .line 409
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_3
    const/4 v0, 0x0

    .line 411
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 414
    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 415
    iput v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 417
    const-string v3, "ImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][onDownloadError]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9
    .parameter "uri"
    .parameter "bundle"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 426
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$100(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    .line 427
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbUri:Landroid/net/Uri;
    invoke-static {v5, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$102(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 436
    :goto_0
    const/4 v4, 0x0

    .line 437
    .local v4, szPhotoUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 442
    .local v3, szPhotoId:Ljava/lang/String;
    const-string v5, "photo_url"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    const-string v5, "photo_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    if-nez v3, :cond_3

    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    .line 524
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v3           #szPhotoId:Ljava/lang/String;
    .end local v4           #szPhotoUrl:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 430
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$100(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 432
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbUri:Landroid/net/Uri;
    invoke-static {v5, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$102(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    .line 452
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v3       #szPhotoId:Ljava/lang/String;
    .restart local v4       #szPhotoUrl:Ljava/lang/String;
    :cond_2
    iput-object p1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 453
    iput v8, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 454
    iput-boolean v6, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    .line 460
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v5, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_1

    .line 467
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_3
    const/4 v1, 0x0

    .line 468
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v2, 0x0

    .line 469
    .local v2, imageCacheCandidate:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v1, :cond_0

    .line 472
    iget-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 474
    iput-object p1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 475
    iput v6, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 476
    iput-boolean v6, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    .line 503
    :cond_4
    :goto_2
    iput v8, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 508
    const/16 v5, 0x4f4d

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 515
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v5, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 516
    if-eqz v2, :cond_0

    .line 517
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v5, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_1

    .line 479
    :cond_5
    iget-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 481
    iput-object p1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 482
    iput v8, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 483
    iput-boolean v6, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    .line 492
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v5, v4, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->resolveCandidateItem(Ljava/lang/String;Landroid/net/Uri;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 497
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ImageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ImageProvider][onDownloadSuccess]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
