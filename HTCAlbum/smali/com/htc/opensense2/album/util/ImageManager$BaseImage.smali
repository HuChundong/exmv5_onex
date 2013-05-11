.class abstract Lcom/htc/opensense2/album/util/ImageManager$BaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImage"
.end annotation


# static fields
.field protected static final INVALID_DATETIME:I = -0x1

.field protected static final INVALID_WIDTH_HEIGHT:I = -0x1


# instance fields
.field protected mBurstBestPhoto:I

.field protected mBurstPhoto:I

.field private mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field protected mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursorRow:I

.field protected mDateModified:J

.field protected mDateTaken:J

.field protected mExifData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFullSizeImageUri:Landroid/net/Uri;

.field protected mGifFrameCount:I

.field protected mHeight:I

.field protected mId:J

.field protected mInked:I

.field protected mMineType:Ljava/lang/String;

.field protected mMiniThumbMagic:J

.field private mSelected:Z

.field protected mSize:J

.field private mSortBase:J

.field protected mWidth:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V
    .locals 5
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 266
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mInked:I

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSelected:Z

    .line 248
    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 249
    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    .line 251
    iput-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    .line 252
    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    .line 254
    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    .line 256
    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    .line 257
    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    .line 259
    iput-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    .line 1453
    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 267
    iput-object p6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 268
    iput-wide p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    .line 269
    iput-wide p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 270
    iput-object p7, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    .line 271
    iput p8, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mCursorRow:I

    .line 273
    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 274
    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    .line 275
    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;IJ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "dateTaken"

    .prologue
    .line 262
    invoke-direct/range {p0 .. p8}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 263
    iput-wide p9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 264
    return-void
.end method

.method private initBurst()V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 691
    const/4 v10, 0x0

    .line 693
    .local v10, isInit:Z
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    .line 694
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    .line 696
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 697
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 698
    monitor-enter v6

    .line 699
    const/4 v11, 0x0

    .line 702
    .local v11, moved:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 708
    :goto_0
    if-ne v3, v11, :cond_0

    .line 709
    :try_start_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexFavorite()I

    move-result v9

    .line 710
    .local v9, indexFavorite:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 711
    .local v12, nValue:I
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setAsBurstPhoto(IZ)V

    .line 712
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBurstBestPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v10, 0x1

    .line 715
    .end local v9           #indexFavorite:I
    .end local v12           #nValue:I
    :cond_0
    monitor-exit v6

    .line 718
    .end local v11           #moved:Z
    :cond_1
    if-ne v10, v3, :cond_3

    .line 737
    :cond_2
    :goto_1
    return-void

    .line 704
    .restart local v11       #moved:Z
    :catch_0
    move-exception v7

    .line 705
    .local v7, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 715
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 721
    .end local v11           #moved:Z
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 726
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 728
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 729
    .restart local v12       #nValue:I
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setAsBurstPhoto(IZ)V

    .line 730
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: query mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBurstBestPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 735
    .end local v12           #nValue:I
    :cond_4
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 732
    :catch_1
    move-exception v8

    .line 733
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 735
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "targetWidthOrHeight"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1256
    const/4 v1, 0x0

    .line 1258
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 1259
    if-nez v1, :cond_1

    .line 1269
    if-eqz v1, :cond_0

    .line 1270
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1274
    :cond_0
    :goto_0
    return-object v2

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1260
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v2

    .line 1269
    if-eqz v1, :cond_0

    .line 1270
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1272
    :catch_1
    move-exception v0

    .line 1273
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1261
    .end local v0           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1262
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_4
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeBitmap] Got exception during openFileDescriptor, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1269
    if-eqz v1, :cond_0

    .line 1270
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1272
    :catch_3
    move-exception v0

    .line 1273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1264
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1265
    .local v0, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeBitmap] Got null exception during openFileDescriptor, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1269
    if-eqz v1, :cond_0

    .line 1270
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 1272
    :catch_5
    move-exception v0

    .line 1273
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1268
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1269
    if-eqz v1, :cond_2

    .line 1270
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1274
    :cond_2
    :goto_1
    throw v2

    .line 1272
    :catch_6
    move-exception v0

    .line 1273
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1169
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 2
    .parameter "srcImageList"

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v1

    if-nez v1, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    const/4 v0, 0x0

    .line 791
    .local v0, burstImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_4

    .line 792
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 793
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 799
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 800
    invoke-virtual {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->removeExpandBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 803
    :cond_3
    if-eqz v0, :cond_0

    .line 804
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 805
    const/4 v0, 0x0

    goto :goto_0

    .line 795
    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-eqz v1, :cond_2

    .line 796
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    goto :goto_1
.end method

.method public commitChanges()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 292
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    monitor-enter v0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 304
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 11
    .parameter "another"

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1427
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getSortBase()J

    move-result-wide v4

    .line 1428
    .local v4, mySortBase:J
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v1

    .line 1430
    .local v1, anotherSortBase:J
    cmp-long v10, v4, v1

    if-nez v10, :cond_4

    .line 1431
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 1432
    .local v3, myFull:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, anotherFull:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v7, v8

    .line 1450
    .end local v0           #anotherFull:Ljava/lang/String;
    .end local v3           #myFull:Ljava/lang/String;
    :cond_1
    :goto_0
    return v7

    .line 1438
    .restart local v0       #anotherFull:Ljava/lang/String;
    .restart local v3       #myFull:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 1440
    .local v6, result:I
    sget v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1441
    neg-int v6, v6

    :cond_3
    move v7, v6

    .line 1444
    goto :goto_0

    .line 1447
    .end local v0           #anotherFull:Ljava/lang/String;
    .end local v3           #myFull:Ljava/lang/String;
    .end local v6           #result:I
    :cond_4
    sget v10, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    if-ne v10, v7, :cond_6

    .line 1448
    cmp-long v10, v4, v1

    if-gtz v10, :cond_1

    cmp-long v7, v4, v1

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_0

    .line 1450
    :cond_6
    cmp-long v10, v1, v4

    if-gtz v10, :cond_1

    cmp-long v7, v1, v4

    if-nez v7, :cond_7

    move v7, v8

    goto :goto_0

    :cond_7
    move v7, v9

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 378
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V

    return-object v0
.end method

.method abstract compressionType()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 383
    if-nez p1, :cond_1

    .line 399
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 387
    .restart local p1
    :cond_1
    if-ne p1, p0, :cond_2

    .line 388
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :cond_2
    instance-of v1, p1, Lcom/htc/opensense2/album/util/ImageManager$Image;

    if-eqz v1, :cond_0

    .line 395
    instance-of v1, p1, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$Image;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "index"
    .parameter "destListUber"

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 813
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v11

    .line 868
    :goto_0
    return-object v0

    .line 817
    :cond_0
    const/4 v8, 0x0

    .line 819
    .local v8, covertFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBestBurstPhoto()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    .line 823
    :cond_1
    if-nez v8, :cond_2

    move-object v0, v11

    .line 824
    goto :goto_0

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v0

    if-nez v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_0

    .line 830
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isExpanded()Z

    move-result v0

    if-ne v1, v0, :cond_4

    .line 831
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    goto :goto_0

    .line 834
    :cond_4
    const/4 v10, 0x0

    .line 835
    .local v10, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 837
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 843
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 844
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 852
    :goto_1
    if-eqz v7, :cond_5

    .line 853
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 857
    :cond_5
    :goto_2
    if-nez v10, :cond_8

    move-object v0, v11

    goto :goto_0

    .line 846
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 848
    :catch_0
    move-exception v9

    .line 849
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[expanded] Got exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    const/4 v10, 0x0

    .line 852
    if-eqz v7, :cond_5

    .line 853
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 852
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 853
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 859
    :cond_8
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 860
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "key_BurstShot_CoverFilePath"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-object v1, v1, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    invoke-virtual {v0, v1, v2, v10, v6}, Lcom/htc/opensense2/album/util/ImageManager;->burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 864
    if-eqz p2, :cond_9

    .line 865
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p2, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->addExpandBurstImages(ILcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 868
    :cond_9
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 407
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-wide v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 408
    .local v1, url:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCreateBitmap for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    if-nez v1, :cond_2

    .line 410
    const/4 v0, 0x0

    .line 416
    :cond_1
    :goto_0
    return-object v0

    .line 412
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 6
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 482
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 492
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 483
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_0
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    goto :goto_0

    .line 484
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 485
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 487
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 488
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v0

    .line 491
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 503
    :goto_0
    return-object v1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fullSizeImageData] Unable to openInputStream, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 508
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 592
    const/4 v8, 0x0

    .line 593
    .local v8, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 595
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 601
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 610
    :goto_0
    if-eqz v6, :cond_0

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_0
    :goto_1
    return-object v8

    .line 604
    :cond_1
    :try_start_1
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v7

    .line 607
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getBucketName] Got exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    if-eqz v6, :cond_0

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 610
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x0

    return v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateAdded()J
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    .line 553
    const-wide/16 v1, 0x0

    .line 563
    :goto_0
    return-wide v1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 557
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 561
    :cond_2
    monitor-enter v0

    .line 562
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 563
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDateModified()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 568
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    .line 569
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    .line 588
    :cond_0
    :goto_0
    return-wide v2

    .line 572
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateModified()I

    move-result v1

    .line 574
    .local v1, fieldIdx:I
    if-gez v1, :cond_2

    .line 575
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 579
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 583
    monitor-enter v0

    .line 584
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 585
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    .line 587
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getDateTaken()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 528
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    .line 529
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 547
    :cond_0
    :goto_0
    return-wide v2

    .line 532
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    .line 534
    .local v1, fieldIdx:I
    if-gez v1, :cond_2

    .line 535
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 539
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 543
    monitor-enter v0

    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 545
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1007
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v1

    if-gez v1, :cond_3

    .line 1008
    const/4 v6, 0x0

    .line 1010
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1015
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1024
    if-eqz v6, :cond_0

    .line 1025
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1036
    :cond_0
    :goto_0
    return-object v7

    .line 1018
    :cond_1
    :try_start_1
    const-string v7, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1024
    if-eqz v6, :cond_0

    .line 1025
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v8

    .line 1021
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDescription] Got exception during query description, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v7, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    if-eqz v6, :cond_0

    .line 1025
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1024
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1025
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1028
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v7, 0x0

    .line 1029
    .local v7, description:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 1030
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object v7, v0

    goto :goto_0

    .line 1031
    :cond_5
    monitor-enter v6

    .line 1032
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1033
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1035
    :cond_6
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1548
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1564
    if-nez p1, :cond_0

    .line 1565
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1567
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 1560
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 1498
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1512
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 1513
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1515
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1118
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v1

    if-gez v1, :cond_4

    .line 1119
    const/4 v6, 0x0

    .line 1121
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1126
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1134
    if-eqz v6, :cond_0

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_0
    :goto_0
    return-object v8

    .line 1134
    :cond_1
    if-eqz v6, :cond_2

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v7

    .line 1131
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDisplayName] Got exception during querying the display name, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    if-eqz v6, :cond_2

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1134
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1138
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    const/4 v8, 0x0

    .line 1139
    .local v8, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 1140
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move-object v8, v0

    goto :goto_0

    .line 1141
    :cond_6
    monitor-enter v6

    .line 1142
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1143
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1145
    :cond_7
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1146
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 1145
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 1224
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1225
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    .line 1229
    :goto_0
    return v0

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDimension()V

    .line 1229
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    goto :goto_0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 5

    .prologue
    const-wide v2, 0x406fe00000000000L

    .line 1059
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v4

    if-gez v4, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-wide v2

    .line 1061
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1062
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1063
    monitor-enter v0

    .line 1067
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1068
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :try_start_1
    monitor-exit v0

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1070
    :catch_0
    move-exception v1

    .line 1072
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 5

    .prologue
    const-wide v2, 0x406fe00000000000L

    .line 1079
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v4

    if-gez v4, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-wide v2

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1082
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1083
    monitor-enter v0

    .line 1087
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1088
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :try_start_1
    monitor-exit v0

    goto :goto_0

    .line 1094
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1090
    :catch_0
    move-exception v1

    .line 1092
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1505
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 631
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    .line 671
    :cond_0
    :goto_0
    return-object v0

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v8

    .line 636
    .local v8, fieldIndexMimeType:I
    if-lez v8, :cond_4

    .line 637
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 638
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    monitor-enter v6

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    .line 645
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 648
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    const/4 v6, 0x0

    .line 650
    .restart local v6       #c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 656
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 665
    :goto_2
    if-eqz v6, :cond_3

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 659
    :cond_5
    :try_start_3
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 661
    :catch_0
    move-exception v7

    .line 662
    .local v7, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMimeType] Got exception during query mime type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 665
    if-eqz v6, :cond_3

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 665
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_6

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mCursorRow:I

    return v0
.end method

.method public getSize()J
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 948
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    .line 949
    iget-wide v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    .line 999
    :goto_0
    return-wide v10

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 953
    .local v7, cachedCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 954
    monitor-enter v7

    .line 955
    const/4 v9, -0x1

    .line 957
    .local v9, index:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 964
    :goto_1
    if-ltz v9, :cond_3

    .line 965
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    .line 968
    iget-wide v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    monitor-exit v7

    goto :goto_0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 961
    :cond_1
    :try_start_1
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 970
    :cond_2
    monitor-exit v7

    goto :goto_0

    .line 972
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    .end local v9           #index:I
    :cond_4
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use db query!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_5
    const/4 v6, 0x0

    .line 978
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 980
    .local v10, size:J
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 985
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 986
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v10

    .line 995
    :goto_2
    if-eqz v6, :cond_6

    .line 996
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 998
    :cond_6
    :goto_3
    iput-wide v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    goto/16 :goto_0

    .line 988
    :cond_7
    const-wide/16 v10, -0x1

    goto :goto_2

    .line 990
    :catch_0
    move-exception v8

    .line 991
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSize] Got exception during query image size, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 992
    const-wide/16 v10, -0x1

    .line 995
    if-eqz v6, :cond_6

    .line 996
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 995
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_8

    .line 996
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getSortBase()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    .line 1455
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1456
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1464
    :goto_0
    return-wide v0

    .line 1458
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1459
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 1460
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateModified()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1461
    :cond_1
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 1462
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateAdded()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1464
    :cond_2
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1101
    const/4 v1, 0x0

    .line 1102
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1103
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1111
    :goto_0
    return-object v2

    .line 1104
    :cond_1
    monitor-enter v0

    .line 1105
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1106
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1107
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1110
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object v2, v1

    goto :goto_0

    .line 1110
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1111
    :cond_3
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 1215
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1216
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 1220
    :goto_0
    return v0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDimension()V

    .line 1220
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    goto :goto_0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 1575
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 1247
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public is3D()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 916
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 919
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 921
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 934
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 919
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_VIDEO_TYPES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 928
    .restart local v4       #s:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 934
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isBestBurstPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 753
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v1

    .line 757
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 762
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->initBurst()V

    .line 765
    :cond_2
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    if-ne v2, v0, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isBurstPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 740
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_0

    .line 748
    :goto_0
    return v1

    .line 744
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 745
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->initBurst()V

    .line 748
    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isExpanded()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 770
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v2

    if-nez v2, :cond_1

    .line 781
    :cond_0
    :goto_0
    return v0

    .line 774
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 775
    goto :goto_0

    .line 777
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    instance-of v2, v2, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-eqz v2, :cond_0

    move v0, v1

    .line 778
    goto :goto_0
.end method

.method public isFakeForLoading()Z
    .locals 1

    .prologue
    .line 1579
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 882
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->isFavoriteList()Z

    move-result v8

    .line 911
    :cond_0
    :goto_0
    return v8

    .line 885
    :cond_1
    const/4 v6, 0x0

    .line 886
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 888
    .local v8, isFavorite:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 893
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 895
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 896
    .local v9, nValue:I
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v10, :cond_2

    move v8, v10

    .line 897
    :goto_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][isFavorite]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v9           #nValue:I
    :goto_2
    if-eqz v6, :cond_0

    .line 908
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v9       #nValue:I
    :cond_2
    move v8, v11

    .line 896
    goto :goto_1

    .line 901
    .end local v9           #nValue:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 903
    :catch_0
    move-exception v7

    .line 904
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFavorite] Got exception during query favorite, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    const/4 v8, 0x0

    .line 907
    if-eqz v6, :cond_0

    .line 908
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 907
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 908
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isInked()Z
    .locals 3

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mInked:I

    if-ne v1, v2, :cond_0

    .line 943
    const/4 v0, 0x1

    .line 944
    :cond_0
    return v0
.end method

.method public isPlayable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1530
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isGif()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1531
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1532
    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 1533
    .local v0, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    .line 1536
    .end local v0           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    if-le v2, v1, :cond_1

    .line 1540
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSelected:Z

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    .line 1318
    :goto_0
    return-object v7

    .line 1285
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    .line 1286
    .local v1, id:J
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 1287
    .local v4, dbMagic:J
    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-eqz v0, :cond_1

    cmp-long v0, v4, v1

    if-nez v0, :cond_2

    .line 1288
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v13

    invoke-virtual {v0, p0, v3, v13}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 1289
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "after computing thumbnail dbMagic is "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$100()[B

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :try_start_1
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 1294
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$100()[B

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->access$200(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 1295
    .local v8, data:[B
    if-nez v8, :cond_3

    .line 1296
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v14

    invoke-virtual {v0, p0, v3, v14}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 1297
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$100()[B

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->access$200(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 1299
    :cond_3
    if-nez v8, :cond_4

    .line 1300
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1301
    const-string v0, "ImageManager"

    const-string v3, "unable to get miniThumbBitmap, data is null"

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_4
    if-eqz v8, :cond_6

    .line 1304
    const/4 v0, 0x0

    array-length v3, v8

    invoke-static {v8, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1305
    .local v7, b:Landroid/graphics/Bitmap;
    if-nez v7, :cond_5

    .line 1306
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1307
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "couldn\'t decode byte array for mini thumb, length was "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v14, v8

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_5
    monitor-exit v13

    goto/16 :goto_0

    .line 1312
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #data:[B
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1314
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    :catch_0
    move-exception v9

    .line 1315
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "miniThumbBitmap got exception "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/StackTraceElement;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_7

    aget-object v12, v6, v10

    .line 1317
    .local v12, s:Ljava/lang/StackTraceElement;
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "... "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1312
    .end local v6           #arr$:[Ljava/lang/StackTraceElement;
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #s:Ljava/lang/StackTraceElement;
    .restart local v1       #id:J
    .restart local v4       #dbMagic:J
    .restart local v8       #data:[B
    :cond_6
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1313
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1318
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    .end local v8           #data:[B
    .restart local v6       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v9       #ex:Ljava/lang/Exception;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 1323
    return-void
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 1327
    return-void
.end method

.method public setAsBestBurstPhoto()V
    .locals 2

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBestBurstPhoto()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 878
    :cond_0
    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 4
    .parameter "favoriteFieldValue"
    .parameter "forceUpdate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 675
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 676
    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    .line 682
    :goto_0
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 683
    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    .line 688
    :goto_1
    return-void

    .line 679
    :cond_0
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    goto :goto_0

    .line 686
    :cond_1
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    goto :goto_1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 1344
    return-void
.end method

.method protected setDimension()V
    .locals 6

    .prologue
    .line 1178
    const/4 v1, 0x0

    .line 1180
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1181
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1182
    if-nez v1, :cond_1

    .line 1184
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 1185
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1205
    if-eqz v1, :cond_0

    .line 1206
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1212
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1208
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1209
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1188
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1189
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1190
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1192
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 1193
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1205
    if-eqz v1, :cond_0

    .line 1206
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1208
    :catch_1
    move-exception v0

    .line 1209
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1195
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v0

    .line 1196
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1197
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 1198
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1205
    if-eqz v1, :cond_0

    .line 1206
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1208
    :catch_3
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1200
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1201
    .local v0, ex:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1202
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1205
    if-eqz v1, :cond_0

    .line 1206
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 1208
    :catch_5
    move-exception v0

    .line 1209
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1204
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1205
    if-eqz v1, :cond_2

    .line 1206
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1210
    :cond_2
    :goto_1
    throw v4

    .line 1208
    :catch_6
    move-exception v0

    .line 1209
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1173
    iput p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 1174
    iput p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    .line 1175
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 1361
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1368
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    monitor-enter v0

    .line 1370
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1372
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1373
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1376
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 9
    .parameter "id"

    .prologue
    .line 1380
    const/4 v6, 0x0

    .line 1382
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "picasa_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1387
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1388
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storing picasaid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1392
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "picasa_id"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1396
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1397
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated image with picasa id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v6, :cond_2

    .line 1404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1406
    :cond_2
    :goto_0
    return-void

    .line 1400
    :catch_0
    move-exception v7

    .line 1401
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1403
    if-eqz v6, :cond_2

    .line 1404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1403
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSelected:Z

    .line 280
    return-void
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 1414
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumb"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1415
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 1421
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1423
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
