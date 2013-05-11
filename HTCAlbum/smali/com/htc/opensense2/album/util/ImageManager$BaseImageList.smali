.class abstract Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.implements Lcom/htc/sunnyCore/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "BaseImageList"


# instance fields
.field mBaseUri:Landroid/net/Uri;

.field mBucketId:Ljava/lang/String;

.field protected mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field mCursorDeactivated:Z

.field mDistinct:Z

.field protected mIsFavorite:Z

.field protected mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

.field protected mMiniThumbData:Ljava/io/RandomAccessFile;

.field mRandom:Ljava/util/Random;

.field mSort:I

.field protected mThumbUri:Landroid/net/Uri;

.field protected mTypeFilter:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field protected mWhereStatement:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
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
    .line 1604
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    .line 1775
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    .line 1777
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    .line 1605
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    .line 1606
    iput p5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    .line 1607
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    .line 1608
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 1609
    iput-object p6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    .line 1610
    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 1611
    iput-object p7, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    .line 1612
    iput-boolean p8, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    .line 1613
    iput-object p9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mTypeFilter:Ljava/lang/String;

    .line 1614
    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1583
    invoke-direct/range {p0 .. p5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method private createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "id"

    .prologue
    const/16 v9, 0x140

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1858
    if-eqz p1, :cond_3

    .line 1859
    const/4 v1, 0x0

    .line 1860
    .local v1, thumbData:[B
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v2

    monitor-enter v2

    .line 1861
    :try_start_0
    invoke-static {p1}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v1

    .line 1862
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    if-eqz v1, :cond_3

    .line 1866
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1867
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1868
    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1869
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1870
    .local v4, width:I
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1877
    .local v5, height:I
    if-lt v4, v9, :cond_0

    if-lt v5, v9, :cond_0

    move-object v0, p0

    move-wide v2, p2

    .line 1878
    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->storeThumbnail([BJII)Z

    .line 1892
    :cond_0
    invoke-static {v6, v9}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1894
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v0, v8, :cond_1

    .line 1895
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1897
    :cond_1
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1898
    const-string v0, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in createThumbnailFromExif using inSampleSize of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    :cond_2
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1901
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1902
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1903
    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1908
    .end local v1           #thumbData:[B
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 1862
    .restart local v1       #thumbData:[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1908
    .end local v1           #thumbData:[B
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1914
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1915
    .local v1, uri:Landroid/net/Uri;
    const/16 v2, 0x140

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1916
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1917
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    .line 1922
    :goto_0
    return-object v0

    .line 1919
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1920
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$400()I

    move-result v2

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getMiniThumbFromFile(J[BJ)[B
    .locals 16
    .parameter "id"
    .parameter "data"
    .parameter "magicCheck"

    .prologue
    .line 2297
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v12

    .line 2298
    .local v12, r:Ljava/io/RandomAccessFile;
    if-nez v12, :cond_0

    .line 2299
    const/16 p3, 0x0

    .line 2327
    .end local p3
    :goto_0
    return-object p3

    .line 2301
    .restart local p3
    :cond_0
    const-wide/16 v13, 0x2710

    mul-long v10, p1, v13

    .line 2302
    .local v10, pos:J
    move-object v4, v12

    .line 2303
    .local v4, f:Ljava/io/RandomAccessFile;
    monitor-enter v4

    .line 2305
    :try_start_0
    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2306
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 2307
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v8

    .line 2308
    .local v8, magic:J
    cmp-long v13, v8, p4

    if-eqz v13, :cond_2

    .line 2309
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; magicCheck: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (fail)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    :cond_1
    const/16 p3, 0x0

    .end local p3
    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 2329
    .end local v8           #magic:J
    :catchall_0
    move-exception v13

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 2312
    .restart local v8       #magic:J
    .restart local p3
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 2313
    .local v7, length:I
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13, v7}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2314
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 2316
    .end local v7           #length:I
    .end local v8           #magic:J
    :cond_3
    const/16 p3, 0x0

    .end local p3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2318
    .restart local p3
    :catch_0
    move-exception v2

    .line 2321
    .local v2, ex:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v5

    .line 2326
    .local v5, fileLength:J
    :goto_1
    :try_start_5
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "couldn\'t read thumbnail for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; pos is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; length is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    const/16 p3, 0x0

    monitor-exit v4

    goto/16 :goto_0

    .line 2322
    .end local v5           #fileLength:J
    :catch_1
    move-exception v3

    .line 2323
    .local v3, ex1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2324
    const-wide/16 v5, -0x1

    .restart local v5       #fileLength:J
    goto :goto_1
.end method

.method private getThumbnailUri(JII)Landroid/net/Uri;
    .locals 11
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 1738
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return-object v7

    .line 1742
    :cond_1
    const/4 v7, 0x0

    .line 1743
    .local v7, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1745
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1751
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1755
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexThumbId()I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1759
    :cond_2
    if-eqz v6, :cond_3

    .line 1760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1764
    :cond_3
    if-nez v7, :cond_0

    .line 1765
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1766
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1767
    const-string v0, "image_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1768
    const-string v0, "height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1769
    const-string v0, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1770
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 1759
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method protected activateCursor()V
    .locals 0

    .prologue
    .line 2132
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2133
    return-void
.end method

.method public checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 27
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"

    .prologue
    .line 1927
    const-wide/16 v14, 0x0

    .line 1929
    .local v14, fileMagic:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->lock()V

    .line 1930
    if-nez p1, :cond_1

    .line 1933
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1934
    :try_start_1
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1935
    const-wide/16 v8, -0x1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    :goto_0
    return-wide v8

    .line 1937
    :cond_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1938
    .local v8, magic:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexId()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1939
    .local v6, id:J
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1946
    :goto_1
    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_4

    .line 1949
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v19

    .line 1950
    .local v19, r:Ljava/io/RandomAccessFile;
    if-eqz v19, :cond_3

    .line 1951
    monitor-enter v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1952
    const-wide/16 v21, 0x2710

    mul-long v17, v6, v21

    .line 1955
    .local v17, pos:J
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v21

    const-wide/16 v23, 0x1

    add-long v23, v23, v17

    const-wide/16 v25, 0x8

    add-long v23, v23, v25

    cmp-long v4, v21, v23

    if-ltz v4, :cond_2

    .line 1956
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1957
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 1958
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v14

    .line 1959
    cmp-long v4, v14, v8

    if-nez v4, :cond_2

    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_2

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    .line 1960
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto :goto_0

    .line 1939
    .end local v6           #id:J
    .end local v8           #magic:J
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2032
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    throw v4

    .line 1942
    :cond_1
    :try_start_8
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 1943
    .restart local v8       #magic:J
    invoke-virtual/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageId()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v6

    .restart local v6       #id:J
    goto :goto_1

    .line 1964
    .restart local v17       #pos:J
    .restart local v19       #r:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v13

    .line 1965
    .local v13, ex:Ljava/io/IOException;
    :try_start_9
    const-string v4, "ImageManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "got exception checking file magic: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    .end local v13           #ex:Ljava/io/IOException;
    :cond_2
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1969
    .end local v17           #pos:J
    :cond_3
    :try_start_a
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1970
    const-string v4, "ImageManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "didn\'t verify... fileMagic: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; magic: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    .end local v19           #r:Ljava/io/RandomAccessFile;
    :cond_4
    const/4 v5, 0x0

    .line 1978
    .local v5, bitmap:Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 1979
    .local v16, filePath:Ljava/lang/String;
    monitor-enter p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1980
    :try_start_b
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1981
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexData()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1983
    :cond_5
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1985
    if-eqz v16, :cond_a

    .line 1986
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1988
    if-nez v5, :cond_6

    .line 1989
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1991
    :cond_6
    monitor-enter p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1992
    const/4 v12, 0x0

    .line 1993
    .local v12, degrees:I
    :try_start_d
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1994
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v11

    .line 1995
    .local v11, column:I
    if-ltz v11, :cond_7

    .line 1996
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1998
    .end local v11           #column:I
    :cond_7
    if-eqz v12, :cond_9

    .line 1999
    invoke-static {v5, v12}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2000
    .local v10, b2:Landroid/graphics/Bitmap;
    if-eq v10, v5, :cond_8

    .line 2001
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2002
    :cond_8
    move-object v5, v10

    .line 2004
    .end local v10           #b2:Landroid/graphics/Bitmap;
    :cond_9
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2009
    .end local v12           #degrees:I
    :cond_a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    .line 2010
    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_a

    .line 2011
    if-eqz v5, :cond_b

    move-object/from16 v4, p0

    .line 2012
    invoke-virtual/range {v4 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 2013
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2016
    :cond_b
    monitor-enter p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2017
    :try_start_f
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2018
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 2019
    .local v20, values:Landroid/content/ContentValues;
    const-string v4, "mini_thumb_magic"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2023
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->requery()Z

    .line 2024
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2026
    if-eqz p1, :cond_c

    .line 2027
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 2029
    :cond_c
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 2032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto/16 :goto_0

    .line 1967
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v17       #pos:J
    .restart local v19       #r:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v4

    :try_start_10
    monitor-exit v19
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1983
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    :catchall_3
    move-exception v4

    :try_start_12
    monitor-exit p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2004
    .restart local v12       #degrees:I
    :catchall_4
    move-exception v4

    :try_start_14
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2030
    .end local v12           #degrees:I
    :catchall_5
    move-exception v4

    :try_start_16
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
.end method

.method public closeCursor()V
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2087
    :goto_0
    return-void

    .line 2080
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-nez v0, :cond_1

    .line 2081
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2084
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2086
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public commitChanges()V
    .locals 2

    .prologue
    .line 2037
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 2038
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->requery()V

    .line 2039
    monitor-exit v1

    .line 2040
    return-void

    .line 2039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method computeFitSize([III)V
    .locals 6
    .parameter "nResult"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1835
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, p1, v4

    if-eqz v2, :cond_0

    aget v2, p1, v5

    if-nez v2, :cond_1

    .line 1836
    :cond_0
    const-string v2, "ImageManager"

    const-string v3, "computeFitSize, Invalid Arg"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    :goto_0
    return-void

    .line 1840
    :cond_1
    int-to-float v2, p2

    aget v3, p1, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1841
    .local v0, rateX:F
    int-to-float v2, p3

    aget v3, p1, v5

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1842
    .local v1, rateY:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 1843
    aput p2, p1, v4

    .line 1844
    aget v2, p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p1, v5

    goto :goto_0

    .line 1846
    :cond_2
    aget v2, p1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, p1, v4

    .line 1847
    aput p3, p1, v5

    goto :goto_0
.end method

.method computeSampleSize2([II)V
    .locals 5
    .parameter "nResult"
    .parameter "nTargetWidthHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1816
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1819
    .local v0, Options:Landroid/graphics/BitmapFactory$Options;
    aget v2, p1, v4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1820
    aget v2, p1, v3

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1821
    invoke-static {v0, p2}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    .line 1822
    .local v1, nRate:I
    if-ge v1, v3, :cond_0

    .line 1823
    const/4 v1, 0x0

    .line 1824
    :cond_0
    aget v2, p1, v4

    div-int/2addr v2, v1

    aput v2, p1, v4

    .line 1825
    aget v2, p1, v3

    div-int/2addr v2, v1

    aput v2, p1, v3

    .line 1826
    return-void
.end method

.method protected contentUri(J)Landroid/net/Uri;
    .locals 5
    .parameter "id"

    .prologue
    .line 2045
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2046
    .local v1, existingId:J
    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    .line 2047
    const-string v3, "ImageManager"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    .end local v1           #existingId:J
    :goto_0
    return-object v3

    .line 2049
    :catch_0
    move-exception v0

    .line 2051
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 2057
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 2060
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 2061
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    .line 2069
    :try_start_1
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 2070
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2075
    :cond_1
    :goto_1
    return-void

    .line 2063
    :catch_0
    move-exception v0

    .line 2065
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2071
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2072
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 2110
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2111
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2112
    :cond_0
    const/4 v1, -0x1

    .line 2115
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2120
    const-string v0, "ImageManager"

    const-string v1, "cursor had been closed"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const/4 v0, 0x0

    .line 2127
    :goto_0
    return-object v0

    .line 2123
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 2124
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_1

    .line 2125
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->activateCursor()V

    .line 2127
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit v1

    goto :goto_0

    .line 2128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 22
    .parameter "i"

    .prologue
    .line 2136
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 2137
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2138
    :cond_0
    const/16 v19, 0x0

    .line 2191
    :goto_0
    return-object v19

    .line 2141
    :cond_1
    monitor-enter v13

    .line 2145
    :try_start_0
    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 2149
    .local v20, moved:Z
    if-eqz v20, :cond_7

    .line 2151
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2152
    .local v3, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2154
    .local v19, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v19, :cond_6

    .line 2156
    const-wide/16 v5, 0x0

    .line 2157
    .local v5, miniThumbId:J
    const/4 v12, 0x0

    .line 2158
    .local v12, rotation:I
    const/16 v21, 0x0

    .line 2159
    .local v21, nFavorite:I
    const-wide/16 v9, 0x0

    .line 2161
    .local v9, dateTaken:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v17

    .line 2162
    .local v17, idxMiniThumbId:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v18

    .line 2163
    .local v18, idxOrientation:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexFavorite()I

    move-result v16

    .line 2164
    .local v16, idxFavorite:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v15

    .line 2166
    .local v15, idxDateTaken:I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 2167
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2169
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    .line 2170
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2172
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    .line 2173
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 2175
    :cond_4
    const/4 v2, -0x1

    if-eq v15, v2, :cond_5

    .line 2176
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2179
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    move/from16 v11, p1

    invoke-virtual/range {v2 .. v12}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v19

    .line 2180
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 2181
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2184
    .end local v5           #miniThumbId:J
    .end local v9           #dateTaken:J
    .end local v12           #rotation:I
    .end local v15           #idxDateTaken:I
    .end local v16           #idxFavorite:I
    .end local v17           #idxMiniThumbId:I
    .end local v18           #idxOrientation:I
    .end local v21           #nFavorite:I
    :cond_6
    :try_start_2
    monitor-exit v13

    goto/16 :goto_0

    .line 2193
    .end local v3           #id:J
    .end local v19           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v20           #moved:Z
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2146
    :catch_0
    move-exception v14

    .line 2147
    .local v14, ex:Ljava/lang/Exception;
    const/16 v19, 0x0

    :try_start_3
    monitor-exit v13

    goto/16 :goto_0

    .line 2185
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v20       #moved:Z
    :catch_1
    move-exception v14

    .line 2186
    .restart local v14       #ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got this exception trying to create image object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    const/16 v19, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 2190
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_7
    const-string v2, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to moveTo to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const/16 v19, 0x0

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 2282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2283
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 2284
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 2285
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 2286
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2287
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2293
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v2           #path:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 2282
    .restart local v1       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2293
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 2
    .parameter "uri"

    .prologue
    .line 2272
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2278
    :goto_0
    return-object v1

    .line 2273
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2274
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2275
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_0

    .line 2273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2278
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_0
.end method

.method public getImages(Ljava/util/List;)V
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2197
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_1

    .line 2267
    :cond_0
    :goto_0
    return-void

    .line 2201
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 2202
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2206
    monitor-enter v13

    .line 2207
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    .line 2210
    .local v21, totalCount:I
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2217
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v11, v0, :cond_7

    .line 2219
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2220
    .local v3, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2222
    .local v19, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v19, :cond_6

    .line 2224
    const-wide/16 v5, 0x0

    .line 2225
    .local v5, miniThumbId:J
    const/4 v12, 0x0

    .line 2226
    .local v12, rotation:I
    const/16 v20, 0x0

    .line 2227
    .local v20, nFavorite:I
    const-wide/16 v9, 0x0

    .line 2229
    .local v9, dateTaken:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v17

    .line 2230
    .local v17, idxMiniThumbId:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v18

    .line 2231
    .local v18, idxOrientation:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexFavorite()I

    move-result v16

    .line 2232
    .local v16, idxFavorite:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v15

    .line 2234
    .local v15, idxDateTaken:I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 2235
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2237
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    .line 2238
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2240
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    .line 2241
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2243
    :cond_4
    const/4 v2, -0x1

    if-eq v15, v2, :cond_5

    .line 2244
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2247
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    invoke-virtual/range {v2 .. v12}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v19

    .line 2248
    invoke-interface/range {v19 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 2249
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    .end local v5           #miniThumbId:J
    .end local v9           #dateTaken:J
    .end local v12           #rotation:I
    .end local v15           #idxDateTaken:I
    .end local v16           #idxFavorite:I
    .end local v17           #idxMiniThumbId:I
    .end local v18           #idxOrientation:I
    .end local v20           #nFavorite:I
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2259
    .end local v3           #id:J
    .end local v19           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_2
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2217
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2212
    .end local v11           #i:I
    :catch_0
    move-exception v14

    .line 2213
    .local v14, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "ImageManager"

    const-string v7, "[getImages] fail to moveToFirst"

    invoke-static {v2, v7, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2214
    monitor-exit v13

    goto/16 :goto_0

    .line 2266
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v21           #totalCount:I
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 2254
    .restart local v11       #i:I
    .restart local v21       #totalCount:I
    :catch_1
    move-exception v14

    .line 2255
    .restart local v14       #ex:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getImages] got this exception trying to create image object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2261
    .end local v14           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v14

    .line 2262
    .restart local v14       #ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getImages] fail to getImage idx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2266
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_7
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 2431
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 2432
    .local v0, item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v1, v0, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v1, :cond_0

    .line 2434
    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    .line 2438
    .end local v0           #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v0

    .restart local v0       #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract indexBucketName()I
.end method

.method protected abstract indexData()I
.end method

.method protected abstract indexDateAdded()I
.end method

.method protected abstract indexDateModified()I
.end method

.method protected abstract indexDateTaken()I
.end method

.method protected abstract indexDescription()I
.end method

.method protected abstract indexDisplayName()I
.end method

.method protected abstract indexFavorite()I
.end method

.method protected abstract indexId()I
.end method

.method protected abstract indexLatitude()I
.end method

.method protected abstract indexLongitude()I
.end method

.method protected abstract indexMimeType()I
.end method

.method protected abstract indexMiniThumbId()I
.end method

.method protected abstract indexOrientation()I
.end method

.method protected abstract indexPicasaWeb()I
.end method

.method protected abstract indexPrivate()I
.end method

.method protected abstract indexThumbId()I
.end method

.method protected abstract indexTitle()I
.end method

.method public isFavoriteList()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2091
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 2355
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 1636
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_2

    .line 1637
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 1638
    .local v3, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1639
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1640
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1641
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!! unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v2, f:Ljava/io/File;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file f is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-object v4

    .line 1648
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1649
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method randomAccessFilePath(I)Ljava/lang/String;
    .locals 4
    .parameter "version"

    .prologue
    .line 1623
    const/4 v0, 0x0

    .line 1625
    .local v0, directoryName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 1629
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".thumbdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1632
    .local v1, path:Ljava/lang/String;
    return-object v1

    .line 1625
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected requery()V
    .locals 5

    .prologue
    .line 2361
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 2362
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2365
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 2366
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 2367
    .local v1, result:Z
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseImageList cursor requery result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2377
    .end local v1           #result:Z
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 2378
    return-void

    .line 2369
    :cond_1
    :try_start_1
    const-string v2, "ImageManager"

    const-string v3, "BaseImageList cursor is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2372
    :catch_0
    move-exception v0

    .line 2374
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V
    .locals 0
    .parameter "source"
    .parameter "id"
    .parameter "magic"

    .prologue
    .line 2382
    return-void
.end method

.method protected storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "thumb"
    .parameter "imageId"

    .prologue
    .line 1662
    return-object p1
.end method

.method protected storeThumbnail([BJII)Z
    .locals 1
    .parameter "jpegThumbnail"
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1703
    const/4 v0, 0x0

    return v0
.end method
