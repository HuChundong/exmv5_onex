.class Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;J)Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddImageCancelable"
.end annotation


# instance fields
.field private mSaveImageCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$directory:Ljava/lang/String;

.field final synthetic val$exifData:Ljava/util/HashMap;

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I

.field final synthetic val$source:Landroid/graphics/Bitmap;

.field final synthetic val$takenTime:J

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentResolver;IJLjava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10322
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$directory:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    iput-object p7, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iput p8, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$orientation:I

    iput-wide p9, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$takenTime:J

    iput-object p11, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$exifData:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 3

    .prologue
    .line 10326
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10327
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling AddImageCancelable.cancel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10330
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_1

    .line 10331
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 10333
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public get()V
    .locals 35

    .prologue
    .line 10337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$jpegData:[B

    if-nez v4, :cond_0

    .line 10338
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10342
    :cond_0
    const/16 v26, 0x0

    .line 10343
    .local v26, il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    const/4 v15, 0x0

    .line 10346
    .local v15, c:Landroid/database/Cursor;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 10347
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v4, :cond_4

    .line 10348
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {v4, v5}, Lcom/htc/opensense2/album/util/ImageManager$CanceledException;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    throw v4

    .line 10350
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 10472
    :catch_0
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .local v8, c:Landroid/database/Cursor;
    move-object/from16 v2, v26

    .line 10473
    .end local v26           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .local v2, il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .local v20, ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    :goto_0
    :try_start_3
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught CanceledException, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 10475
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10476
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled... cleaning up this uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10478
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10480
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->acknowledgeCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 10488
    if-eqz v2, :cond_3

    .line 10489
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10490
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->deactivate()V

    .line 10491
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->closeCursor()V

    .line 10494
    .end local v20           #ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    :cond_3
    :goto_1
    return-void

    .line 10350
    .end local v2           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    :cond_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10351
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 10354
    .local v24, id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$directory:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 10356
    new-instance v2, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 10369
    .end local v26           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    :goto_2
    :try_start_6
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$Image;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getCount()I

    move-result v11

    const/4 v12, 0x0

    move-wide/from16 v5, v24

    move-object v10, v2

    invoke-direct/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;II)V

    .line 10372
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$Image;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string v9, "mini_thumb_magic"

    aput-object v9, v6, v7

    const/4 v7, 0x2

    const-string v9, "_data"

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const-string v9, "_size"

    aput-object v9, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v8

    .line 10378
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_7
    invoke-interface {v8, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10380
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 10381
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->checkCanceled()V

    .line 10382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$orientation:I

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    .line 10383
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 10385
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;->get()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 10386
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating new picture with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10393
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 10394
    .local v16, calendar:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$takenTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 10395
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$takenTime:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10396
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    .line 10397
    .local v34, year:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    .line 10398
    .local v30, month:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 10399
    .local v18, day:Ljava/lang/String;
    const/16 v4, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    .line 10400
    .local v23, hour:Ljava/lang/String;
    const/16 v4, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 10401
    .local v29, minute:Ljava/lang/String;
    const/16 v4, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    .line 10403
    .local v31, second:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-ge v4, v5, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 10404
    :cond_7
    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 10405
    :cond_8
    const/16 v4, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 10406
    :cond_9
    const/16 v4, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 10407
    :cond_a
    const/16 v4, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 10409
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 10411
    .local v17, date:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 10414
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImageContents originaldate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10417
    :cond_c
    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 10419
    .local v22, filePath:Ljava/lang/String;
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 10420
    :try_start_a
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 10421
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImageContents filePath:l"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10422
    :cond_d
    const/4 v14, 0x0

    .line 10423
    .local v14, additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$exifData:Ljava/util/HashMap;

    if-eqz v4, :cond_e

    .line 10424
    new-instance v14, Ljava/util/HashMap;

    .end local v14           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$exifData:Ljava/util/HashMap;

    invoke-direct {v14, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 10426
    .restart local v14       #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    invoke-static/range {v22 .. v22}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v28

    .line 10428
    .local v28, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v28, :cond_10

    .line 10429
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 10488
    if-eqz v2, :cond_3

    .line 10489
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10490
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->deactivate()V

    .line 10491
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->closeCursor()V

    goto/16 :goto_1

    .line 10363
    .end local v2           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$Image;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v14           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #calendar:Ljava/util/Calendar;
    .end local v17           #date:Ljava/lang/String;
    .end local v18           #day:Ljava/lang/String;
    .end local v22           #filePath:Ljava/lang/String;
    .end local v23           #hour:Ljava/lang/String;
    .end local v28           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29           #minute:Ljava/lang/String;
    .end local v30           #month:Ljava/lang/String;
    .end local v31           #second:Ljava/lang/String;
    .end local v34           #year:Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    :cond_f
    :try_start_b
    new-instance v2, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .end local v26           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    goto/16 :goto_2

    .line 10383
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$Image;
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 10472
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 10431
    .restart local v14       #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #calendar:Ljava/util/Calendar;
    .restart local v17       #date:Ljava/lang/String;
    .restart local v18       #day:Ljava/lang/String;
    .restart local v22       #filePath:Ljava/lang/String;
    .restart local v23       #hour:Ljava/lang/String;
    .restart local v28       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v29       #minute:Ljava/lang/String;
    .restart local v30       #month:Ljava/lang/String;
    .restart local v31       #second:Ljava/lang/String;
    .restart local v34       #year:Ljava/lang/String;
    :cond_10
    if-eqz v14, :cond_12

    .line 10432
    :try_start_e
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    .line 10433
    .local v32, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v32, :cond_12

    .line 10434
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 10435
    .local v27, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 10436
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 10437
    .local v19, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 10456
    .end local v14           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v28           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 10481
    .end local v16           #calendar:Ljava/util/Calendar;
    .end local v17           #date:Ljava/lang/String;
    .end local v18           #day:Ljava/lang/String;
    .end local v22           #filePath:Ljava/lang/String;
    .end local v23           #hour:Ljava/lang/String;
    .end local v29           #minute:Ljava/lang/String;
    .end local v30           #month:Ljava/lang/String;
    .end local v31           #second:Ljava/lang/String;
    .end local v34           #year:Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 10482
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$Image;
    .end local v24           #id:J
    .local v20, ex:Ljava/lang/Exception;
    :goto_4
    :try_start_10
    const-string v4, "ImageManager"

    const-string v5, "exception occur while sotre image"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10483
    if-eqz v8, :cond_11

    .line 10484
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 10485
    const/4 v8, 0x0

    .line 10488
    :cond_11
    if-eqz v2, :cond_3

    .line 10489
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10490
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->deactivate()V

    .line 10491
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->closeCursor()V

    goto/16 :goto_1

    .line 10448
    .end local v20           #ex:Ljava/lang/Exception;
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$Image;
    .restart local v14       #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #calendar:Ljava/util/Calendar;
    .restart local v17       #date:Ljava/lang/String;
    .restart local v18       #day:Ljava/lang/String;
    .restart local v22       #filePath:Ljava/lang/String;
    .restart local v23       #hour:Ljava/lang/String;
    .restart local v24       #id:J
    .restart local v28       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v29       #minute:Ljava/lang/String;
    .restart local v30       #month:Ljava/lang/String;
    .restart local v31       #second:Ljava/lang/String;
    .restart local v34       #year:Ljava/lang/String;
    :cond_12
    :try_start_11
    const-string v4, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10449
    const-string v4, "DateTimeDigitized"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10451
    const-string v4, "Flash"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10452
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inserted exif "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10453
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 10454
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImageContents map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10455
    :cond_13
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/ExifUtil;->modifiedExifData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 10456
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 10459
    :try_start_12
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10460
    .local v21, file:Ljava/io/File;
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 10461
    .local v33, values:Landroid/content/ContentValues;
    const-string v4, "mini_thumb_magic"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10462
    const-string v6, "_size"

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 10488
    if-eqz v2, :cond_3

    .line 10489
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10490
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->deactivate()V

    .line 10491
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->closeCursor()V

    goto/16 :goto_1

    .line 10462
    :cond_14
    const-wide/16 v4, 0x1

    goto :goto_5

    .line 10469
    .end local v14           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #calendar:Ljava/util/Calendar;
    .end local v17           #date:Ljava/lang/String;
    .end local v18           #day:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    .end local v22           #filePath:Ljava/lang/String;
    .end local v23           #hour:Ljava/lang/String;
    .end local v28           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29           #minute:Ljava/lang/String;
    .end local v30           #month:Ljava/lang/String;
    .end local v31           #second:Ljava/lang/String;
    .end local v33           #values:Landroid/content/ContentValues;
    .end local v34           #year:Ljava/lang/String;
    :cond_15
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 10470
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {v4, v5}, Lcom/htc/opensense2/album/util/ImageManager$CanceledException;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 10488
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$Image;
    .end local v24           #id:J
    :catchall_3
    move-exception v4

    :goto_6
    if-eqz v2, :cond_16

    .line 10489
    const-string v5, "ImageManager"

    const-string v6, "close crop image saving cursor"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10490
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->deactivate()V

    .line 10491
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->closeCursor()V

    :cond_16
    throw v4

    .line 10488
    .end local v2           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    :catchall_4
    move-exception v4

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    move-object/from16 v2, v26

    .end local v26           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    goto :goto_6

    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v24       #id:J
    :catchall_5
    move-exception v4

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_6

    .line 10481
    .end local v2           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v24           #id:J
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    :catch_3
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    move-object/from16 v2, v26

    .end local v26           #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
    goto/16 :goto_4

    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v24       #id:J
    :catch_4
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_4

    .line 10472
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    :catch_5
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_0
.end method
