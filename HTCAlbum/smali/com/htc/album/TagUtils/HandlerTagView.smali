.class public Lcom/htc/album/TagUtils/HandlerTagView;
.super Ljava/lang/Object;
.source "HandlerTagView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HandlerTagView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mPhotoH:I

.field private mPhotoW:I

.field private mPhotoX:I

.field private mPhotoY:I

.field private mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 29
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 31
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    .line 32
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    .line 33
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 34
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    return-void
.end method

.method private decodeWebp(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "photoInfo"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 246
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 251
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    if-eqz v0, :cond_2

    const-string v6, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 256
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/album/TagUtils/HandlerTagView;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;II)V

    .line 257
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 287
    :cond_1
    :goto_0
    return-object v5

    .line 261
    :cond_2
    const/4 v4, 0x0

    .line 262
    .local v4, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 266
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 267
    if-eqz v4, :cond_1

    .line 272
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 273
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/album/TagUtils/HandlerTagView;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;II)V

    .line 274
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 278
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    move-object v5, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :catch_0
    move-exception v2

    .line 283
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "HandlerTagView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decode tag view decodeWebp():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private decodeWithScalado(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "photoInfo"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x1

    .line 304
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    .line 305
    .local v6, scalado:Lcom/htc/opensense/album/util/ScaladoLib2;
    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v3

    .line 306
    .local v3, handle:I
    if-nez v3, :cond_0

    const/4 v7, 0x0

    .line 350
    :goto_0
    return-object v7

    .line 308
    :cond_0
    invoke-virtual {v6, v3, p3, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 309
    invoke-virtual {v6, v3, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 310
    invoke-virtual {v6, v3, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 314
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_1
    const/4 v4, 0x0

    .line 317
    .local v4, nValue:I
    if-eqz v0, :cond_5

    const-string v7, "media"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 319
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v4

    .line 345
    :cond_2
    :goto_1
    if-nez v4, :cond_4

    .line 347
    :cond_3
    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v3, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v7

    if-eqz v7, :cond_3

    .line 350
    :cond_4
    invoke-virtual {v6, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 323
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 327
    .local v5, pfdInput:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 328
    if-eqz v5, :cond_2

    .line 331
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 335
    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 339
    :catch_0
    move-exception v2

    .line 341
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "HandlerTagView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decode tag view "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 335
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static doImageDecode(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "context"
    .parameter "photoInfo"

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v1

    .line 100
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 43
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v6

    .line 44
    .local v6, nScreenDisplay:[I
    if-nez v6, :cond_2

    move-object v2, v1

    .line 45
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 47
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v12, 0x0

    aget v8, v6, v12

    .line 48
    .local v8, nScreenW:I
    const/4 v12, 0x1

    aget v7, v6, v12

    .line 51
    .local v7, nScreenH:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v11

    .line 52
    .local v11, scalado:Lcom/htc/opensense/album/util/ScaladoLib2;
    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    .line 53
    .local v5, handle:I
    if-nez v5, :cond_3

    move-object v2, v1

    .line 54
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 56
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v11, v5, v8, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 57
    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 58
    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, authority:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_4
    const/4 v9, 0x0

    .line 65
    .local v9, nValue:I
    if-eqz v0, :cond_8

    const-string v12, "media"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v9

    .line 93
    :cond_5
    :goto_1
    if-nez v9, :cond_7

    .line 95
    :cond_6
    const-wide/16 v12, 0x7d0

    invoke-virtual {v11, v5, v12, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v12

    if-eqz v12, :cond_6

    .line 98
    :cond_7
    invoke-virtual {v11, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 100
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 71
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 72
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 75
    .local v10, pfdInput:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    const-string v13, "r"

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 76
    if-eqz v10, :cond_5

    .line 79
    :try_start_1
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v5, v12, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 83
    :try_start_2
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v4

    .line 89
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "HandlerTagView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][HandlerTagView][getViewBitmap]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :try_start_3
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private setupBitmapOption(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 9
    .parameter "options"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const-wide/high16 v7, 0x3fe0

    .line 292
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 293
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float v3, v5, v6

    .line 294
    .local v3, rx:F
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    int-to-float v6, p3

    div-float v4, v5, v6

    .line 295
    .local v4, ry:F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 296
    .local v2, ratio:F
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v1, v5

    .line 297
    .local v1, decodeSizeW:I
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 298
    .local v0, decodeSizeH:I
    invoke-static {p1, v1, v0}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 299
    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    return-void
.end method


# virtual methods
.method public getPhotoViewHeight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    return v0
.end method

.method public getPhotoViewWidth()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    return v0
.end method

.method public getPhotoViewX()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    return v0
.end method

.method public getPhotoViewY()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    return v0
.end method

.method public getTagViewManager(Landroid/content/Context;)Lcom/htc/album/TagUtils/TagViewManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {v0, p1}, Lcom/htc/album/TagUtils/TagViewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    iget v2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    iget v3, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->init(IIII)Z

    .line 241
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    return-object v0
.end method

.method public prepareTaggableView(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;Landroid/view/View$OnTouchListener;)Z
    .locals 10
    .parameter "context"
    .parameter "photoInfo"
    .parameter "touchListener"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, bResult:Z
    const-string v7, "HandlerTagView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][LocalTagView][prepareTaggableView] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 233
    .end local v0           #bResult:Z
    :cond_0
    :goto_0
    return v0

    .line 192
    .restart local v0       #bResult:Z
    :cond_1
    invoke-static {p1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v1

    .line 193
    .local v1, nScreenDisplay:[I
    if-eqz v1, :cond_0

    .line 196
    aget v3, v1, v5

    .line 197
    .local v3, nScreenW:I
    aget v2, v1, v6

    .line 199
    .local v2, nScreenH:I
    const-string v7, "image/webp"

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 200
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/htc/album/TagUtils/HandlerTagView;->decodeWebp(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 204
    :goto_1
    iget-object v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_3

    .line 206
    const-string v6, "HandlerTagView"

    const-string v7, "[HTCAlbum][LocalTagView][prepareTaggableView]: bitmap decode NG !!"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 207
    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/htc/album/TagUtils/HandlerTagView;->decodeWithScalado(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v4, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    .line 225
    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    .line 227
    iget v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 228
    iget v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    .line 230
    const-string v5, "HandlerTagView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LocalTagView][prepareTaggableView] Photo dimen : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "HandlerTagView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LocalTagView][prepareTaggableView] Photo Padding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 233
    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    :cond_0
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_1
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 157
    return-void
.end method

.method public setBitmapToView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/view/View$OnTouchListener;)V
    .locals 6
    .parameter "context"
    .parameter "bitmap"
    .parameter "touchListener"

    .prologue
    .line 117
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    :cond_0
    iput-object p2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 124
    invoke-static {p1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v0

    .line 125
    .local v0, nScreenDisplay:[I
    if-nez v0, :cond_1

    .line 145
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v4, 0x0

    aget v2, v0, v4

    .line 129
    .local v2, nScreenW:I
    const/4 v4, 0x1

    aget v1, v0, v4

    .line 132
    .local v1, nScreenH:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v3, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    .line 139
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    .line 141
    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 142
    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    .line 144
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPhotoViewX(I)V
    .locals 0
    .parameter "nX"

    .prologue
    .line 168
    iput p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 169
    return-void
.end method

.method public setPhotoViewY(I)V
    .locals 0
    .parameter "nY"

    .prologue
    .line 176
    iput p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    .line 177
    return-void
.end method

.method public setTaggableView(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "imageView"

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 110
    :cond_0
    iput-object v2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 111
    iput-object p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    return-void
.end method
