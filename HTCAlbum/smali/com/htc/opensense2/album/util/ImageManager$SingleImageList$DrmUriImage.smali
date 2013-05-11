.class Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;
.super Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmUriImage"
.end annotation


# instance fields
.field private mAddedTime:J

.field private mBucketName:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDrmType:I

.field private mFileSize:J

.field private mIsGif:Z

.field private mIsVideo:Z

.field private mMimeType:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mbGetFrameCount:Z

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;JLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;ILandroid/net/Uri;)V
    .locals 10
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "uri"

    .prologue
    .line 7274
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    .line 7275
    iget-object v2, p1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    move-wide v3, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 7272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 7276
    move-object/from16 v0, p7

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2102(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;Landroid/net/Uri;)Landroid/net/Uri;

    .line 7277
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 7278
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 7279
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7280
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    .line 7281
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    .line 7282
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    .line 7283
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    .line 7284
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    .line 7285
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    .line 7286
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    .line 7287
    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    .line 7291
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7292
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    .line 7295
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 7298
    :cond_2
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 7382
    if-nez p1, :cond_1

    .line 7401
    :cond_0
    :goto_0
    return-object v4

    .line 7384
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7387
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 7389
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 7390
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 7393
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 7394
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7398
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    if-eqz v3, :cond_0

    .line 7401
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 7392
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 7395
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_1
    move-exception v2

    .line 7396
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getGifFrame([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 7370
    iget-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 7371
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 7372
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7373
    new-instance v1, Landroid/webkit/GIFImageParser;

    invoke-direct {v1}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 7374
    .local v1, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {v1, p1}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 7375
    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mFrameCount:I

    .line 7377
    .end local v1           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    .line 7379
    .end local v0           #mimeType:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 7566
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 7634
    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 7638
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7264
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 7644
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v0

    return-object v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 7570
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method computeFitSize([III)V
    .locals 0
    .parameter "result"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 7575
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->computeFitSize([III)V

    .line 7576
    return-void
.end method

.method computeSampleSize2([II)V
    .locals 0
    .parameter "result"
    .parameter "targetWidthHeight"

    .prologue
    .line 7580
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->computeSampleSize2([II)V

    .line 7581
    return-void
.end method

.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 7303
    const/4 v1, 0x0

    .line 7305
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 7307
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7312
    :cond_0
    :goto_0
    return-object v1

    .line 7309
    :catch_0
    move-exception v0

    .line 7310
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 7317
    const/4 v1, 0x0

    .line 7319
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 7321
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7326
    :cond_0
    :goto_0
    return-object v1

    .line 7323
    :catch_0
    move-exception v0

    .line 7324
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public forceMakeThumbBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 7331
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 7333
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 7334
    const/4 v0, 0x0

    .line 7365
    :cond_0
    :goto_0
    return-object v0

    .line 7336
    :cond_1
    const/4 v0, 0x0

    .line 7339
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7340
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 7341
    .local v3, ret:I
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7343
    const/16 v4, -0xff

    if-eq v3, v4, :cond_2

    .line 7345
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 7346
    const/4 v0, 0x0

    .line 7356
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7362
    .end local v3           #ret:I
    :goto_1
    if-nez v0, :cond_0

    .line 7363
    const-string v4, "ImageManager"

    const-string v5, "can not created DRM miniThumbBitmap"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7357
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 7358
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7349
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 7351
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of memory. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7356
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 7357
    :catch_2
    move-exception v1

    .line 7358
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7355
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 7356
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 7359
    :goto_2
    throw v4

    .line 7357
    :catch_3
    move-exception v1

    .line 7358
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "clode input stream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 7678
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 7673
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 4
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 7663
    :try_start_0
    new-instance v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7666
    :goto_0
    return-object v1

    .line 7664
    :catch_0
    move-exception v0

    .line 7665
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 7666
    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 7683
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 7688
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 7693
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7698
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 7703
    const/4 v0, 0x0

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 7708
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7515
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 7713
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 7718
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 7723
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 7585
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7520
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    .prologue
    .line 7406
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    return v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 7590
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCount()I
    .locals 6

    .prologue
    .line 7529
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v3, :cond_0

    .line 7530
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMediaWithoutDialog()Ljava/io/InputStream;

    move-result-object v2

    .line 7531
    .local v2, is:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 7532
    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getGifFrame([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7544
    .end local v0           #data:[B
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mFrameCount:I

    return v3

    .line 7535
    :catch_0
    move-exception v1

    .line 7537
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out of memory. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7539
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 7541
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7733
    const/4 v0, -0x1

    .line 7734
    .local v0, height:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 7735
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v1

    .line 7736
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 7737
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7738
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7739
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7740
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7741
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 7744
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 7749
    const/4 v0, 0x1

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 7754
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 7759
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7411
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 7769
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 7774
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 7779
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7550
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7784
    const/4 v2, -0x1

    .line 7785
    .local v2, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 7786
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    .line 7787
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 7788
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7789
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7790
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7791
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7792
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 7795
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v2
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 7800
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 7805
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 7555
    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 7810
    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 7601
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 7560
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 7595
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 7816
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 7416
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 7418
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 7419
    const/4 v4, 0x0

    .line 7458
    :cond_0
    :goto_0
    return-object v4

    .line 7421
    :cond_1
    const/4 v4, 0x0

    .line 7424
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7425
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 7427
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 7429
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7430
    const/4 v0, 0x0

    .line 7433
    :cond_2
    if-eqz v0, :cond_3

    .line 7435
    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7439
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 7449
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7455
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 7456
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM miniThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7450
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 7451
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7442
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 7444
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7449
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 7450
    :catch_2
    move-exception v1

    .line 7451
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7448
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 7449
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 7452
    :goto_2
    throw v5

    .line 7450
    :catch_3
    move-exception v1

    .line 7451
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    const-string v7, "input stream close fail"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 7822
    return-void
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 7607
    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 7612
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 7616
    const/4 v0, 0x0

    return v0
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "image"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "newFile"
    .parameter "cursor"

    .prologue
    .line 7623
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 7827
    return-void
.end method

.method protected setDegreesRotated(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 7629
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 7832
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 7837
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 7842
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 7847
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 7463
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 7465
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 7466
    const/4 v4, 0x0

    .line 7510
    :cond_0
    :goto_0
    return-object v4

    .line 7468
    :cond_1
    const/4 v4, 0x0

    .line 7471
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7472
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 7474
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 7476
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7477
    const/4 v0, 0x0

    .line 7481
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v8, :cond_4

    .line 7483
    move-object v4, v0

    .line 7501
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7507
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_2
    if-nez v4, :cond_0

    .line 7508
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM ThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7485
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :cond_4
    if-eqz v0, :cond_3

    .line 7487
    :try_start_2
    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7491
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 7494
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :catch_0
    move-exception v1

    .line 7496
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7501
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 7502
    :catch_1
    move-exception v1

    .line 7503
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7502
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_2
    move-exception v1

    .line 7503
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7500
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catchall_0
    move-exception v5

    .line 7501
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 7504
    :goto_3
    throw v5

    .line 7502
    :catch_3
    move-exception v1

    .line 7503
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 7851
    const/4 v0, 0x0

    return-object v0
.end method
