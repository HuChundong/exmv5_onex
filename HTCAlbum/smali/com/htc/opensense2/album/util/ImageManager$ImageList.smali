.class Lcom/htc/opensense2/album/util/ImageManager$ImageList;
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
    name = "ImageList"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "ImageList"


# instance fields
.field final INDEX_BUCKET_DISPLAY_NAME:I

.field final INDEX_DATA:I

.field final INDEX_DATE_ADDED:I

.field final INDEX_DATE_MODIFIED:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_FAVORITE:I

.field final INDEX_ID:I

.field final INDEX_LATITUDE:I

.field final INDEX_LONGITUDE:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_ORIENTATION:I

.field final INDEX_THUMB_HEIGHT:I

.field final INDEX_THUMB_ID:I

.field final INDEX_THUMB_IMAGE_ID:I

.field final INDEX_THUMB_WIDTH:I

.field private mFilterAlbumArt:Z

.field mInputStreamBuffer:[B

.field mIsRegistered:Z

.field protected mLimitCount:I

.field protected mLimitOffset:I

.field mTempStorage:[B

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 14
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"
    .parameter "where"
    .parameter "isFavorite"
    .parameter "typeFilter"

    .prologue
    .line 3449
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 3450
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    .locals 11
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"
    .parameter "where"
    .parameter "isFavorite"
    .parameter "typeFilter"
    .parameter "limitOffset"
    .parameter "limitCount"

    .prologue
    .line 3417
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    .line 3418
    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 3375
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ID:I

    .line 3376
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATA:I

    .line 3377
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    .line 3378
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "datetaken"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    .line 3380
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "orientation"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ORIENTATION:I

    .line 3381
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "favorite"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_FAVORITE:I

    .line 3384
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_added"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_ADDED:I

    .line 3385
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucket_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_BUCKET_DISPLAY_NAME:I

    .line 3386
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_modified"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_MODIFIED:I

    .line 3390
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "latitude"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_LATITUDE:I

    .line 3391
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_LONGITUDE:I

    .line 3393
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_ID:I

    .line 3394
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_IMAGE_ID:I

    .line 3395
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_WIDTH:I

    .line 3396
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_HEIGHT:I

    .line 3399
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mIsRegistered:Z

    .line 3559
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mInputStreamBuffer:[B

    .line 3560
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mTempStorage:[B

    .line 3420
    if-gez p12, :cond_0

    const/16 p12, -0x1

    .line 3421
    :cond_0
    if-gez p13, :cond_1

    const/16 p13, 0x0

    .line 3422
    :cond_1
    move/from16 v0, p12

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitOffset:I

    .line 3423
    move/from16 v0, p13

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitCount:I

    .line 3425
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 3426
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    .line 3427
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    .line 3429
    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 3430
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mFilterAlbumArt:Z

    .line 3431
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 3432
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    .line 3433
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create image cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3442
    :cond_2
    :goto_0
    return-void

    .line 3439
    :cond_3
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3440
    const-string v2, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " got cursor "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "-1"

    goto :goto_1
.end method

.method private makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 3631
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3637
    :goto_0
    return-object v1

    .line 3632
    :catch_0
    move-exception v0

    .line 3633
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Fail to openFileDescriptor, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3635
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3636
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Null exception to openFileDescriptor, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3645
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 3646
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

    .line 3645
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
.method protected activateCursor()V
    .locals 0

    .prologue
    .line 3464
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->activateCursor()V

    .line 3466
    return-void
.end method

.method public closeCursor()V
    .locals 0

    .prologue
    .line 3459
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->closeCursor()V

    .line 3460
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    .line 3498
    .local v3, szWhereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    .line 3499
    .local v4, szWhereClauseArgs:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    .line 3501
    .local v5, szSortOrder:Ljava/lang/String;
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitCount:I

    if-lez v0, :cond_0

    .line 3502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mLimitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3505
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3506
    .local v8, t1:J
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3515
    .local v6, c:Landroid/database/Cursor;
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3516
    const/4 v7, -0x1

    .line 3517
    .local v7, count:I
    if-eqz v6, :cond_1

    .line 3518
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3520
    :cond_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImageList][createCursor] query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " szSortOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    .end local v7           #count:I
    :cond_2
    return-object v6
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 3453
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 3455
    return-void
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 3551
    const/4 v0, -0x1

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 3536
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 3550
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 3552
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_MODIFIED:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 3533
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 3534
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 3545
    const/4 v0, -0x1

    return v0
.end method

.method protected indexFavorite()I
    .locals 1

    .prologue
    .line 3547
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_FAVORITE:I

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 3537
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 3538
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_LATITUDE:I

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 3539
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_LONGITUDE:I

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 3535
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 3540
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 3532
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_ORIENTATION:I

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 3542
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 3543
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 3546
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 3544
    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 12
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 3556
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p0

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;JII)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfd"
    .parameter "options"

    .prologue
    .line 3563
    const/4 v4, 0x0

    .line 3566
    .local v4, b:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3568
    .local v8, lt1:J
    if-nez p3, :cond_0

    .line 3569
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    .line 3571
    :cond_0
    if-nez p3, :cond_1

    .line 3572
    const/16 v17, 0x0

    .line 3626
    :goto_0
    return-object v17

    .line 3574
    :cond_1
    if-nez p4, :cond_2

    .line 3575
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 p4, v12

    .line 3577
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 3578
    .local v7, fd:Ljava/io/FileDescriptor;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3579
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 3580
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 3582
    .local v13, t1:J
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 3584
    .local v15, t2:J
    move-object/from16 v0, p4

    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 3585
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 3587
    :cond_4
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3588
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3591
    .end local v13           #t1:J
    .end local v15           #t2:J
    :cond_5
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-wide/32 v18, 0x1400000

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isOverSizeCheckingByMimeTypeAndLimit(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;J)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3592
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 3595
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3598
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v13

    .line 3601
    .restart local v13       #t1:J
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 3605
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 3606
    .restart local v15       #t2:J
    if-nez v4, :cond_7

    .line 3607
    const-string v17, "ImageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not support format"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3610
    :cond_7
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3611
    const-string v17, "ImageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "A: got bitmap "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " with sampleSize "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " took "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v15, v13

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3613
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3621
    .local v10, lt2:J
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "ImageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeBitmap time  total "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v10, v8

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3622
    :cond_9
    if-eqz v4, :cond_a

    .line 3623
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "ImageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeBitmap b W = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", H =  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v17, v4

    .line 3626
    goto/16 :goto_0

    .line 3602
    .end local v10           #lt2:J
    .end local v15           #t2:J
    :catch_0
    move-exception v5

    .line 3603
    .local v5, error:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v17, "ImageManager"

    const-string v18, "out of memory"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 3614
    .end local v5           #error:Ljava/lang/OutOfMemoryError;
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v13           #t1:J
    :catch_1
    move-exception v6

    .line 3615
    .local v6, ex:Ljava/io/IOException;
    const-string v17, "ImageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "got io exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 3651
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->requery()V

    .line 3652
    const/4 v0, 0x0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3469
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->mFilterAlbumArt:Z

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mTypeFilter:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3470
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3479
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(bucket_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3486
    .local v0, szBucketID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3489
    .end local v0           #szBucketID:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3493
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$800()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
