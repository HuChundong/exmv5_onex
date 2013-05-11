.class final Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field mCancelInitiationTime:J

.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field mPFD:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

.field final synthetic val$targetWidthHeight:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .parameter
    .parameter "pfdInput"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    iput p3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    iget-object v0, p1, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    .line 423
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 427
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 428
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    .prologue
    .line 431
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "ImageManager"

    const-string v1, "requesting bitmap load cancel"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    .line 434
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 440
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 441
    .local v13, t1:J
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load full size image from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 443
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 445
    .local v15, t2:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 446
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    const-string v4, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelation of bitmap load success=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_3

    const-string v3, "TRUE"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- took "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    move-wide/from16 v17, v0

    sub-long v5, v5, v17

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    if-eqz v2, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v10

    .line 451
    .local v10, degrees:I
    if-eqz v10, :cond_2

    .line 452
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 453
    .local v7, m:Landroid/graphics/Matrix;
    int-to-float v3, v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 454
    const/4 v9, 0x0

    .line 456
    .local v9, b2:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 461
    if-eqz v9, :cond_2

    .line 462
    if-eq v2, v9, :cond_1

    .line 463
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 464
    const/4 v2, 0x0

    .line 466
    :cond_1
    move-object v2, v9

    .line 475
    .end local v7           #m:Landroid/graphics/Matrix;
    .end local v9           #b2:Landroid/graphics/Bitmap;
    .end local v10           #degrees:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v13           #t1:J
    .end local v15           #t2:J
    :goto_1
    return-object v2

    .line 447
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v13       #t1:J
    .restart local v15       #t2:J
    :cond_3
    :try_start_3
    const-string v3, "FALSE"

    goto :goto_0

    .line 457
    .restart local v7       #m:Landroid/graphics/Matrix;
    .restart local v9       #b2:Landroid/graphics/Bitmap;
    .restart local v10       #degrees:I
    :catch_0
    move-exception v12

    .line 458
    .local v12, oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageManager"

    const-string v4, "out of memory"

    invoke-static {v3, v4, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 459
    const/4 v2, 0x0

    .line 475
    .end local v2           #b:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_1

    .line 471
    .end local v7           #m:Landroid/graphics/Matrix;
    .end local v9           #b2:Landroid/graphics/Bitmap;
    .end local v10           #degrees:I
    .end local v12           #oome:Ljava/lang/OutOfMemoryError;
    .end local v13           #t1:J
    .end local v15           #t2:J
    :catch_1
    move-exception v11

    .line 472
    .local v11, ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    const/4 v2, 0x0

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_1

    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    throw v3
.end method
