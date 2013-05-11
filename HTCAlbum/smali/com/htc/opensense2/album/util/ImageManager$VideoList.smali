.class Lcom/htc/opensense2/album/util/ImageManager$VideoList;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoList"
.end annotation


# instance fields
.field final INDEX_BUCKET_DISPLAY_NAME:I

.field final INDEX_DATA:I

.field final INDEX_DATE_ADDED:I

.field final INDEX_DATE_MODIFIED:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_DISPLAY_NAME:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_THUMB_ID:I

.field protected final sProjection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 12
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "where"
    .parameter "isFavorite"
    .parameter "typeFilter"

    .prologue
    .line 9556
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 9557
    invoke-direct/range {p0 .. p9}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 9491
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string v4, "_data"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string v4, "date_added"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "date_modified"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "datetaken"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "_display_name"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "mime_type"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "_size"

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    .line 9513
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_ID:I

    .line 9514
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_data"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATA:I

    .line 9515
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "date_modified"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATE_MODIFIED:I

    .line 9516
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "datetaken"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATE_TAKEN:I

    .line 9518
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DISPLAY_NAME:I

    .line 9519
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "mime_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    .line 9528
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_THUMB_ID:I

    .line 9531
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "date_added"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATE_ADDED:I

    .line 9532
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "bucket_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_BUCKET_DISPLAY_NAME:I

    .line 9559
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v0, p3

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 9562
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9563
    const-string v1, "ImageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " got cursor "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with length "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9565
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 9566
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9563
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 9568
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9569
    const/4 v8, 0x0

    .line 9571
    .local v8, row:I
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->indexId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 9572
    .local v2, imageId:J
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 9573
    .local v6, dateTaken:J
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #row:I
    .local v9, row:I
    move-object v1, p1

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$VideoList;JI)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9574
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9576
    .end local v2           #imageId:J
    .end local v6           #dateTaken:J
    .end local v9           #row:I
    :cond_3
    return-void

    .restart local v2       #imageId:J
    .restart local v6       #dateTaken:J
    .restart local v9       #row:I
    :cond_4
    move v8, v9

    .end local v9           #row:I
    .restart local v8       #row:I
    goto :goto_1
.end method


# virtual methods
.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 9601
    const/4 v0, -0x1

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 9587
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 9600
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 9602
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATE_MODIFIED:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 9584
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATE_TAKEN:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 9585
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 9595
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DISPLAY_NAME:I

    return v0
.end method

.method protected indexFavorite()I
    .locals 1

    .prologue
    .line 9597
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 9588
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 9589
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 9590
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 9586
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 9591
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 9582
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 9592
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 9593
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 9596
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTimeStamp()I
    .locals 1

    .prologue
    .line 9583
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATE_MODIFIED:I

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 9594
    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 9
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 9607
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    move-wide v2, p1

    move-object v4, p5

    move-object v5, p0

    move-wide/from16 v6, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$VideoList;JI)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 9612
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 9637
    :cond_0
    :goto_0
    return-object v3

    .line 9613
    :cond_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 9614
    .local v1, mmr:Landroid/media/MediaMetadataRetriever;
    const/4 v3, 0x0

    .line 9615
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const-string v2, ""

    .line 9617
    .local v2, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 9618
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now decoding Video thumb using MediaMetadataRetriever for path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9620
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 9621
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 9633
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 9635
    :goto_1
    if-nez v3, :cond_0

    .line 9636
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video decode didn\'t succeed for path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9630
    :catch_0
    move-exception v0

    .line 9631
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got error while decode by MediaMetadataRetriever for path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9633
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9642
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 9644
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9642
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 9652
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->requery()V

    .line 9653
    const/4 v0, 0x0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9538
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mTypeFilter:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZLjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$2500(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9539
    .local v0, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9540
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9542
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9544
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9545
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9547
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9549
    :cond_3
    return-object v0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9553
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$800()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
