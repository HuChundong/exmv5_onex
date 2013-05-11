.class Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressImageToFile"
.end annotation


# instance fields
.field mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$jpegData:[B

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .locals 1
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
    .line 319
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    iget-object v0, p1, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/4 v1, 0x1

    .line 332
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    .end local v0           #ex:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get()Z
    .locals 19

    .prologue
    .line 337
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 338
    .local v3, t1:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    iget-object v13, v13, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 339
    .local v1, delegate:Ljava/io/OutputStream;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 340
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->checkCanceled()V

    .line 341
    new-instance v13, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    iget-object v14, v14, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {v13, v14, v1}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    .line 342
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 344
    .local v5, t2:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_4

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->compressionType()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v14

    const/16 v15, 0x4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 352
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 353
    .local v7, t3:J
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "ImageManager"

    const-string v14, "CompressImageToFile.get %s took %d (%d, %d)"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sub-long v17, v7, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sub-long v17, v5, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sub-long v17, v7, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 354
    :cond_1
    const/4 v13, 0x1

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v14, :cond_2

    .line 368
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 374
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    .end local v1           #delegate:Ljava/io/OutputStream;
    .end local v3           #t1:J
    .end local v5           #t2:J
    .end local v7           #t3:J
    :goto_2
    return v13

    .line 342
    .restart local v1       #delegate:Ljava/io/OutputStream;
    .restart local v3       #t1:J
    :catchall_0
    move-exception v13

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 355
    .end local v1           #delegate:Ljava/io/OutputStream;
    .end local v3           #t1:J
    :catch_0
    move-exception v2

    .line 356
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 357
    const/4 v13, 0x0

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v14, :cond_3

    .line 368
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 374
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    .line 347
    .restart local v1       #delegate:Ljava/io/OutputStream;
    .restart local v3       #t1:J
    .restart local v5       #t2:J
    :cond_4
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 348
    .local v9, x1:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    invoke-virtual {v13, v14}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->write([B)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 350
    .local v11, x2:J
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "done writing... "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bytes took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v11, v9

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 358
    .end local v1           #delegate:Ljava/io/OutputStream;
    .end local v3           #t1:J
    .end local v5           #t2:J
    .end local v9           #x1:J
    .end local v11           #x2:J
    :catch_1
    move-exception v2

    .line 359
    .local v2, ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    :try_start_9
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$CanceledException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 360
    const/4 v13, 0x0

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v14, :cond_5

    .line 368
    :try_start_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 374
    .end local v2           #ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    .line 369
    .restart local v1       #delegate:Ljava/io/OutputStream;
    .restart local v3       #t1:J
    .restart local v5       #t2:J
    .restart local v7       #t3:J
    :catch_2
    move-exception v2

    .line 371
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 369
    .end local v1           #delegate:Ljava/io/OutputStream;
    .end local v3           #t1:J
    .end local v5           #t2:J
    .end local v7           #t3:J
    .local v2, ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 371
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 369
    .local v2, ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    :catch_4
    move-exception v2

    .line 371
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 361
    .end local v2           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 362
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 363
    const/4 v13, 0x0

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v14, :cond_6

    .line 368
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 374
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto/16 :goto_2

    .line 369
    :catch_6
    move-exception v2

    .line 371
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 366
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v14, :cond_7

    .line 368
    :try_start_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 374
    :cond_7
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    throw v13

    .line 369
    :catch_7
    move-exception v2

    .line 371
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method
