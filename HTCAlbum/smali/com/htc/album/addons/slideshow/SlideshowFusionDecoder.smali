.class public Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;
.super Landroid/os/HandlerThread;
.source "SlideshowFusionDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    }
.end annotation


# static fields
.field private static final DEQUE_SIZE:I = 0x1

.field public static final MSG_DECODE_IMAGE:I = 0xc350

.field public static final PRIORITY_BACKGROUND:I = 0x2

.field public static final PRIORITY_FOREGROUND:I = 0x1

.field public static final PRIORITY_INIT_BACKGROUND:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 27
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    .line 28
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 29
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 56
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "priority"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 23
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 27
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    .line 28
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 29
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 63
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    return-object v0
.end method

.method private decodeWebp(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "DI"
    .parameter "width"
    .parameter "height"
    .parameter "shouldRotate"

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    .line 405
    .local v11, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v11, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]image null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    .line 409
    const/4 v1, 0x0

    .line 480
    :goto_0
    return-object v1

    .line 412
    :cond_0
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v10

    .line 413
    .local v10, degreesRotated:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]degreesRotated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]enter rotate"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 420
    const/16 v10, 0x5a

    .line 436
    :cond_1
    :goto_1
    const/4 v12, 0x1

    .line 437
    .local v12, isScaleFill:Z
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v2, :pswitch_data_0

    .line 453
    const/4 v12, 0x0

    .line 457
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]prefer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 461
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 462
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 463
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 466
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    move/from16 v0, p2

    int-to-float v3, v0

    div-float v15, v2, v3

    .line 467
    .local v15, rx:F
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v16, v2, v3

    .line 468
    .local v16, ry:F
    if-eqz v12, :cond_4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 469
    .local v14, ratio:F
    :goto_3
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v9, v2

    .line 470
    .local v9, decodeSizeW:I
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v8, v2

    .line 471
    .local v8, decodeSizeH:I
    invoke-static {v13, v9, v8}, Lcom/htc/opensense2/album/util/ImageUtils;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 472
    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 473
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 476
    .local v1, result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 477
    .local v6, matrix:Landroid/graphics/Matrix;
    int-to-float v2, v10

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 478
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 480
    goto/16 :goto_0

    .line 424
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #decodeSizeH:I
    .end local v9           #decodeSizeW:I
    .end local v12           #isScaleFill:Z
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #ratio:F
    .end local v15           #rx:F
    .end local v16           #ry:F
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    if-nez v2, :cond_3

    .line 426
    const/16 v10, 0x5a

    goto/16 :goto_1

    .line 431
    :cond_3
    const/16 v10, 0x10e

    goto/16 :goto_1

    .line 440
    .restart local v12       #isScaleFill:Z
    :pswitch_0
    const/16 p2, 0x80

    .line 441
    const/16 p3, 0x80

    .line 442
    goto/16 :goto_2

    .line 444
    :pswitch_1
    const/16 p2, 0x320

    .line 445
    const/16 p3, 0x320

    .line 446
    goto/16 :goto_2

    .line 448
    :pswitch_2
    const/16 p2, 0x190

    .line 449
    const/16 p3, 0x12c

    .line 450
    goto/16 :goto_2

    .line 468
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #rx:F
    .restart local v16       #ry:F
    :cond_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_3

    .line 437
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeWithScalado(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "DI"
    .parameter "width"
    .parameter "height"
    .parameter "shouldRotate"

    .prologue
    const/16 v10, 0x5a

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 303
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v6, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v5, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 304
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_0

    .line 306
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]image null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    .line 399
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v4

    .line 311
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const-string v5, "image/jps"

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 313
    .local v3, isJPS:Z
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    .line 314
    .local v1, handle:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v1, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    .line 315
    if-nez v1, :cond_1

    .line 317
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]can\'t get scalado valid handle"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 322
    :cond_1
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v0

    .line 323
    .local v0, degreesRotated:I
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]degreesRotated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v4, :cond_6

    if-eqz p4, :cond_6

    .line 327
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]enter rotate"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 330
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 350
    :goto_1
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v4, :pswitch_data_0

    .line 377
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 380
    :goto_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 381
    if-eqz v3, :cond_2

    .line 383
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 386
    :cond_2
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]prefer size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, v2, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v4, :cond_8

    .line 390
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    check-cast v2, Lcom/htc/sunnyCore/IMediaData;

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I

    .line 397
    :cond_3
    :goto_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v4

    if-eqz v4, :cond_3

    .line 399
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 334
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    if-nez v4, :cond_5

    .line 336
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto :goto_1

    .line 341
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/16 v5, 0x10e

    invoke-virtual {v4, v1, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto :goto_1

    .line 347
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto/16 :goto_1

    .line 353
    :pswitch_0
    const/16 p2, 0x80

    .line 354
    const/16 p3, 0x80

    .line 355
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    .line 358
    :pswitch_1
    const/16 p2, 0x320

    .line 359
    const/16 p3, 0x320

    .line 360
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    .line 363
    :pswitch_2
    if-lt p2, p3, :cond_7

    .line 365
    iput-boolean v9, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    .line 371
    :goto_4
    const/16 p2, 0x190

    .line 372
    const/16 p3, 0x12c

    .line 373
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    .line 369
    :cond_7
    iput-boolean v7, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    goto :goto_4

    .line 394
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    goto :goto_3

    .line 350
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldRotate(IIII)Z
    .locals 1
    .parameter "h"
    .parameter "w"
    .parameter "screenH"
    .parameter "screenW"

    .prologue
    const/4 v0, 0x1

    .line 284
    if-le p1, p2, :cond_1

    .line 286
    if-ge p3, p4, :cond_2

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    if-ge p1, p2, :cond_2

    .line 293
    if-gt p3, p4, :cond_0

    .line 298
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method protected decodeImage(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 14
    .parameter "DI"

    .prologue
    .line 193
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage] + "

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 195
    .local v6, start:J
    if-nez p1, :cond_0

    .line 197
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]DecodeItem null"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v11, :cond_1

    .line 202
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]mList null"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 206
    :cond_1
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v12, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v11, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 207
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_2

    .line 209
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]image null"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 214
    :cond_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]image: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v4, 0x0

    .line 216
    .local v4, mTempBmp:Landroid/graphics/Bitmap;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v10

    .line 217
    .local v10, w:I
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v2

    .line 218
    .local v2, h:I
    iget v1, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    .line 219
    .local v1, displayW:I
    iget v0, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    .line 221
    .local v0, displayH:I
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", displayW = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", displayH = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v11, :cond_3

    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_3

    .line 225
    if-lt v10, v2, :cond_8

    .line 227
    if-lt v0, v1, :cond_6

    move v10, v0

    .line 228
    :goto_1
    if-lt v0, v1, :cond_7

    move v2, v1

    .line 237
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v5, 0x0

    .line 241
    .local v5, shouldRotate:Z
    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_c

    .line 243
    if-lt v2, v10, :cond_b

    const/4 v5, 0x1

    .line 250
    :goto_3
    const-string v11, "image/webp"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 252
    invoke-direct {p0, p1, v10, v2, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodeWebp(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 260
    :goto_4
    if-eqz v4, :cond_e

    .line 262
    const-string v11, "video/3gpp-3d"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "video/mp4-3d"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 264
    :cond_4
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]: Shouldn\'t run to here, Slideshow not support Video !!!"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v8, v11, v6

    .line 276
    .local v8, time:J
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage] - , time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .end local v5           #shouldRotate:Z
    .end local v8           #time:J
    :cond_6
    move v10, v1

    .line 227
    goto/16 :goto_1

    :cond_7
    move v2, v0

    .line 228
    goto/16 :goto_2

    .line 232
    :cond_8
    if-ge v0, v1, :cond_9

    move v10, v0

    .line 233
    :goto_5
    if-ge v0, v1, :cond_a

    move v2, v1

    :goto_6
    goto/16 :goto_2

    :cond_9
    move v10, v1

    .line 232
    goto :goto_5

    :cond_a
    move v2, v0

    .line 233
    goto :goto_6

    .line 243
    .restart local v5       #shouldRotate:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    .line 247
    :cond_c
    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    iget v12, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    invoke-direct {p0, v2, v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->shouldRotate(IIII)Z

    move-result v5

    goto :goto_3

    .line 256
    :cond_d
    invoke-direct {p0, p1, v10, v2, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodeWithScalado(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_4

    .line 269
    :cond_e
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]: Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initHandler()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 70
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 73
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .line 79
    .local v0, d:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    iput-object v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 86
    .end local v0           #d:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 87
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 88
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->quit()Z

    .line 89
    return-void
.end method

.method public setDecodeCompleteCallback(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    .line 51
    return-void
.end method

.method public setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 46
    return-void
.end method
