.class Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;
.super Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "ctx"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 4467
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 4468
    invoke-direct/range {p0 .. p7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 4470
    return-void
.end method


# virtual methods
.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 4605
    const/4 v1, 0x0

    .line 4607
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 4610
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4615
    :cond_0
    :goto_0
    return-object v1

    .line 4612
    :catch_0
    move-exception v0

    .line 4613
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 4620
    const/4 v0, 0x0

    return-object v0
.end method

.method public forceMakeThumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 4473
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4474
    .local v1, mmr:Landroid/media/MediaMetadataRetriever;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 4492
    :goto_0
    return-object v3

    .line 4476
    :cond_0
    const/4 v3, 0x0

    .line 4477
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 4478
    .local v2, newUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v5

    if-nez v5, :cond_1

    .line 4479
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 4480
    :cond_1
    if-nez v2, :cond_2

    move-object v3, v4

    .line 4481
    goto :goto_0

    .line 4485
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4486
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4490
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 4487
    :catch_0
    move-exception v0

    .line 4488
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[forceMakeThumbBitmap] Got exception during capture video frame, uri = ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4490
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public getBoundary()I
    .locals 3

    .prologue
    .line 4573
    const/4 v1, -0x1

    .line 4574
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4575
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 4581
    :goto_0
    return v2

    .line 4576
    :cond_1
    monitor-enter v0

    .line 4577
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4578
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexBoundary()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4580
    :cond_2
    monitor-exit v0

    move v2, v1

    .line 4581
    goto :goto_0

    .line 4580
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4561
    const/4 v1, 0x0

    .line 4562
    .local v1, contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4563
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 4569
    :goto_0
    return-object v2

    .line 4564
    :cond_1
    monitor-enter v0

    .line 4565
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4566
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexContentId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4568
    :cond_2
    monitor-exit v0

    move-object v2, v1

    .line 4569
    goto :goto_0

    .line 4568
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentOffset()I
    .locals 3

    .prologue
    .line 4531
    const/4 v1, -0x1

    .line 4532
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4533
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 4539
    :goto_0
    return v2

    .line 4534
    :cond_1
    monitor-enter v0

    .line 4535
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4536
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexContentOffset()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4538
    :cond_2
    monitor-exit v0

    move v2, v1

    .line 4539
    goto :goto_0

    .line 4538
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDateTaken()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 4588
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 4589
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 4599
    :goto_0
    return-wide v1

    .line 4592
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 4593
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4594
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-wide v1, v2

    goto :goto_0

    .line 4595
    :cond_3
    monitor-enter v0

    .line 4596
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4597
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 4598
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4599
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    goto :goto_0

    .line 4598
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 4627
    const/4 v0, 0x3

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4634
    const/4 v0, 0x0

    .line 4635
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v1

    if-nez v1, :cond_0

    .line 4636
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 4638
    :cond_0
    if-eqz v0, :cond_1

    .line 4639
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4641
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrmType()I
    .locals 3

    .prologue
    .line 4519
    const/4 v1, -0x1

    .line 4520
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4521
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 4527
    :goto_0
    return v2

    .line 4522
    :cond_1
    monitor-enter v0

    .line 4523
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4524
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexDeliveryType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4526
    :cond_2
    monitor-exit v0

    move v2, v1

    .line 4527
    goto :goto_0

    .line 4526
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4543
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4544
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    .line 4556
    :goto_0
    return-object v1

    .line 4547
    :cond_0
    const/4 v1, 0x0

    .line 4548
    .local v1, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4549
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4550
    :cond_2
    monitor-enter v0

    .line 4551
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4552
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4554
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4555
    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    goto :goto_0

    .line 4554
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 4513
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 4508
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/MediaUtils;->compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4503
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
