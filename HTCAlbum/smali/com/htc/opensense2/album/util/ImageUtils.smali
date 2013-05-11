.class public Lcom/htc/opensense2/album/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageUtils$Size;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final offset:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final reflection:I = 0x0

.field private static final reflectionGap:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final startAlpha:F = 0.0f

.field public static final tag:Ljava/lang/String; = "ImageUtils"

.field private static useScaledResize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/album/util/ImageUtils;->useScaledResize:Z

    .line 36
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->HEIGHT_REFLECTION:I

    sput v0, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    .line 38
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->START_ALPHA_REFLECTION:I

    int-to-float v0, v0

    sput v0, Lcom/htc/opensense2/album/util/ImageUtils;->startAlpha:F

    .line 39
    sget v0, Lcom/htc/opensense2/album/util/ImageUtils;->startAlpha:F

    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/htc/opensense2/album/util/ImageUtils;->offset:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static CropForExtraWidth(Landroid/graphics/Bitmap;[II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "source"
    .parameter "targetSize"
    .parameter "maxWidth"

    .prologue
    const/4 v5, 0x0

    .line 374
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    aget v3, p1, v5

    if-ge v3, p2, :cond_2

    :cond_0
    move-object v0, p0

    .line 384
    :cond_1
    :goto_0
    return-object v0

    .line 376
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aget v4, p1, v5

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 378
    .local v1, ratio:F
    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 380
    .local v2, targetW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p0, v3, v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    .local v0, newBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static declared-synchronized addIImageReflection(Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "image"
    .parameter "bitmap"
    .parameter "bkgColor"

    .prologue
    .line 696
    const-class v3, Lcom/htc/opensense2/album/util/ImageUtils;

    monitor-enter v3

    :try_start_0
    instance-of v2, p0, Lcom/htc/opensense2/album/util/ImageManager$Image;

    if-eqz v2, :cond_0

    .line 697
    check-cast p0, Lcom/htc/opensense2/album/util/ImageManager$Image;

    .end local p0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image;->getDegreesRotated()I

    move-result v0

    .line 698
    .local v0, degrees:I
    invoke-static {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 701
    .end local v0           #degrees:I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    invoke-static {v2, v4, v5}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v1

    .line 702
    .local v1, newSize:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v2, v4, :cond_1

    .line 703
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    invoke-static {p1, v1, v2}, Lcom/htc/opensense2/album/util/ImageUtils;->CropForExtraWidth(Landroid/graphics/Bitmap;[II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 704
    const/4 v2, 0x0

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v4, v1, v2

    .line 707
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {p1, v2, v4}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 709
    invoke-static {p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 711
    monitor-exit v3

    return-object p1

    .line 696
    .end local v1           #newSize:[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "srcBitmap"
    .parameter "bkgColor"

    .prologue
    .line 388
    const-class v18, Lcom/htc/opensense2/album/util/ImageUtils;

    monitor-enter v18

    if-nez p0, :cond_0

    .line 389
    const/4 v14, 0x0

    .line 425
    :goto_0
    monitor-exit v18

    return-object v14

    .line 391
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 392
    .local v4, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 393
    .local v11, h:I
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 395
    .local v14, outBitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 396
    .local v10, canvas:Landroid/graphics/Canvas;
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 397
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 399
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    mul-int/2addr v1, v4

    new-array v2, v1, [I

    .line 400
    .local v2, original:[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    sub-int v6, v11, v1

    sget v8, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 402
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    mul-int/2addr v1, v4

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 404
    .local v16, refl:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    if-ge v12, v1, :cond_2

    .line 405
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->startAlpha:F

    sget v3, Lcom/htc/opensense2/album/util/ImageUtils;->offset:F

    int-to-float v5, v12

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-int v9, v1

    .line 406
    .local v9, alpha:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    if-ge v13, v4, :cond_1

    .line 407
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    sub-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v4

    add-int/2addr v1, v13

    aget v17, v2, v1

    .line 408
    .local v17, srcpix:I
    mul-int v1, v12, v4

    add-int/2addr v1, v13

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v9, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v16, v1

    .line 406
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 404
    .end local v17           #srcpix:I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 416
    .end local v9           #alpha:I
    .end local v13           #j:I
    :cond_2
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 417
    .local v15, recBmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    add-int/lit8 v3, v11, 0x1

    int-to-float v3, v3

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v10, v15, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 421
    const/16 p0, 0x0

    .line 422
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    const/4 v15, 0x0

    .line 425
    goto/16 :goto_0

    .line 388
    .end local v2           #original:[I
    .end local v4           #w:I
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v11           #h:I
    .end local v12           #i:I
    .end local v14           #outBitmap:Landroid/graphics/Bitmap;
    .end local v15           #recBmp:Landroid/graphics/Bitmap;
    .end local v16           #refl:[I
    :catchall_0
    move-exception v1

    monitor-exit v18

    throw v1
.end method

.method public static calculateFitPhotoSize(Lcom/htc/opensense2/album/util/ImageUtils$Size;IIII)V
    .locals 7
    .parameter "size"
    .parameter "width"
    .parameter "height"
    .parameter "screenW"
    .parameter "screenH"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    if-nez v5, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    move v4, p3

    .line 59
    .local v4, targetW:I
    move v3, p4

    .line 61
    .local v3, targetH:I
    if-ge p1, p3, :cond_2

    if-ge p2, p4, :cond_2

    .line 63
    move v4, p1

    .line 64
    move v3, p2

    .line 67
    :cond_2
    int-to-float v5, v4

    iget v6, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 68
    .local v1, rx:F
    int-to-float v5, v3

    iget v6, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 69
    .local v2, ry:F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 71
    .local v0, ratio:F
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 72
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    goto :goto_0
.end method

.method public static calculateFitSize(Lcom/htc/opensense2/album/util/ImageUtils$Size;II)V
    .locals 5
    .parameter "size"
    .parameter "targetW"
    .parameter "targetH"

    .prologue
    .line 77
    if-eqz p0, :cond_0

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 80
    .local v1, rx:F
    int-to-float v3, p2

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 81
    .local v2, ry:F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 83
    .local v0, ratio:F
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 84
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    goto :goto_0
.end method

.method public static countGridSampleValue(IIII)I
    .locals 5
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 295
    const/4 v0, 0x1

    .line 297
    .local v0, sample:I
    if-ge p0, p2, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v1, 0x1

    .line 305
    :goto_0
    return v1

    .line 299
    :cond_0
    div-int v1, p0, p2

    div-int v2, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_1

    .line 300
    const/4 v0, 0x1

    .line 302
    :cond_1
    mul-int v1, p0, p1

    mul-int v2, v0, v0

    div-int/2addr v1, v2

    const v2, 0x4b000

    if-le v1, v2, :cond_2

    .line 303
    mul-int v1, p0, p1

    int-to-double v1, v1

    const-wide v3, 0x4112c00000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    :cond_2
    move v1, v0

    .line 305
    goto :goto_0
.end method

.method public static countNewSize(III)[I
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "maxHeight"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 361
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 363
    .local v0, ans:[I
    aput v3, v0, v2

    .line 364
    if-eqz p1, :cond_0

    .line 365
    mul-int v1, p0, p2

    div-int/2addr v1, p1

    aput v1, v0, v2

    .line 367
    :cond_0
    aget v1, v0, v2

    if-gtz v1, :cond_1

    .line 368
    aput v3, v0, v2

    .line 369
    :cond_1
    aput p2, v0, v3

    .line 370
    return-object v0
.end method

.method public static countNewSize(IIII)[I
    .locals 4
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 90
    if-lt p0, p2, :cond_0

    if-ge p1, p3, :cond_1

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    .line 93
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 95
    .local v0, ratio:F
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    int-to-float v3, p0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public static countSampleValue(IIII)I
    .locals 2
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 163
    const/4 v0, 0x1

    .line 165
    .local v0, sample:I
    :goto_0
    shr-int/lit8 v1, p0, 0x1

    if-le v1, p2, :cond_0

    shr-int/lit8 v1, p1, 0x1

    if-le v1, p3, :cond_0

    .line 166
    shl-int/lit8 v0, v0, 0x1

    .line 167
    shr-int/lit8 p0, p0, 0x1

    .line 168
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return v0
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 609
    if-nez p0, :cond_1

    .line 610
    const/4 p0, 0x0

    .line 636
    .local v1, height:I
    .local v4, width:I
    :cond_0
    :goto_0
    return-object p0

    .line 613
    .end local v1           #height:I
    .end local v4           #width:I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 614
    .restart local v4       #width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 616
    .restart local v1       #height:I
    if-eq v4, v1, :cond_0

    .line 619
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 620
    .local v3, newMinSide:I
    sub-int v7, v4, v3

    div-int/lit8 v5, v7, 0x2

    .line 621
    .local v5, xMargin:I
    sub-int v7, v1, v3

    div-int/lit8 v6, v7, 0x2

    .line 622
    .local v6, yMargin:I
    const/4 v2, 0x0

    .line 624
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v5, v6, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 631
    :goto_1
    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    .line 632
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 633
    move-object p0, v2

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "original"
    .parameter "targetSize"

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v2, 0x0

    .line 120
    :goto_0
    return-object v2

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 103
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 106
    .local v1, height:I
    if-ge v5, p1, :cond_1

    move v4, v5

    .line 107
    .local v4, targetWidth:I
    :goto_1
    if-ge v1, p1, :cond_2

    move v3, v1

    .line 109
    .local v3, targetHeight:I
    :goto_2
    sub-int v8, v5, v4

    div-int/lit8 v6, v8, 0x2

    .line 110
    .local v6, xMargin:I
    sub-int v8, v1, v3

    div-int/lit8 v7, v8, 0x2

    .line 111
    .local v7, yMargin:I
    const/4 v2, 0x0

    .line 113
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v6, v7, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    .end local v3           #targetHeight:I
    .end local v4           #targetWidth:I
    .end local v6           #xMargin:I
    .end local v7           #yMargin:I
    :cond_1
    move v4, p1

    .line 106
    goto :goto_1

    .restart local v4       #targetWidth:I
    :cond_2
    move v3, p1

    .line 107
    goto :goto_2

    .line 115
    .restart local v2       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #targetHeight:I
    .restart local v6       #xMargin:I
    .restart local v7       #yMargin:I
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cropCenterByWidthHeight(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmp"
    .parameter "cropWidth"
    .parameter "cropHeight"

    .prologue
    .line 640
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    .line 641
    :cond_0
    const/4 p0, 0x0

    .line 678
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 644
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 645
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 647
    .local v2, height:I
    if-ne v4, p1, :cond_3

    if-eq v2, p2, :cond_1

    .line 649
    :cond_3
    if-lt v4, p1, :cond_4

    if-ge v2, p2, :cond_5

    .line 650
    :cond_4
    int-to-float v7, p1

    int-to-float v8, v4

    div-float/2addr v7, v8

    int-to-float v8, p2

    int-to-float v9, v2

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 651
    .local v3, ratioMin:F
    const/high16 v7, 0x3f80

    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gtz v7, :cond_1

    .line 657
    int-to-float v7, v4

    int-to-float v8, p1

    div-float/2addr v7, v8

    int-to-float v8, v2

    int-to-float v9, p2

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 660
    int-to-float v7, p1

    mul-float/2addr v7, v3

    float-to-int p1, v7

    .line 661
    int-to-float v7, p2

    mul-float/2addr v7, v3

    float-to-int p2, v7

    .line 664
    .end local v3           #ratioMin:F
    :cond_5
    sub-int v7, v4, p1

    div-int/lit8 v5, v7, 0x2

    .line 665
    .local v5, xMargin:I
    sub-int v7, v2, p2

    div-int/lit8 v6, v7, 0x2

    .line 666
    .local v6, yMargin:I
    const/4 v0, 0x0

    .line 668
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v5, v6, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 674
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 675
    goto :goto_0

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ImageUtils"

    const-string v8, "[cropCenterByWidthHeight] Create Bitmap failed."

    invoke-static {v7, v8, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static cropVideo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "targetSize"

    .prologue
    const-wide v8, 0x3ff199999999999aL

    .line 251
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 252
    .local v1, W:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 254
    .local v0, H:I
    if-lt v1, p1, :cond_0

    if-ge v0, p1, :cond_1

    .line 256
    :cond_0
    if-ge v1, v0, :cond_2

    .line 257
    move v3, p1

    .line 258
    .local v3, newW:I
    mul-int v6, p1, v0

    div-int v2, v6, v1

    .line 264
    .local v2, newH:I
    :goto_0
    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 265
    int-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 266
    invoke-static {p0, v1, v0}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 269
    .end local v2           #newH:I
    .end local v3           #newW:I
    :cond_1
    sub-int v6, v1, p1

    div-int/lit8 v4, v6, 0x2

    .line 270
    .local v4, x:I
    sub-int v6, v0, p1

    div-int/lit8 v5, v6, 0x2

    .line 272
    .local v5, y:I
    invoke-static {p0, v4, v5, p1, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 261
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    move v2, p1

    .line 262
    .restart local v2       #newH:I
    mul-int v6, p1, v1

    div-int v3, v6, v0

    .restart local v3       #newW:I
    goto :goto_0
.end method

.method public static decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 715
    if-nez p0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-object v4

    .line 717
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 720
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 722
    .local v1, data:[B
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 723
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 726
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 727
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 732
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 725
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static filmstripBitmap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "image"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v4, v0

    .line 505
    :cond_1
    return-object v4

    .line 438
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 440
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :cond_3
    if-nez p2, :cond_4

    .line 447
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 449
    .restart local p2
    :cond_4
    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v6, :cond_1

    .line 451
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 452
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 453
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 455
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v6, v7, :cond_1

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v6, v7, :cond_1

    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v6, :cond_1

    .line 457
    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 459
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    div-int v3, v4, v6

    .line 460
    .local v3, sample:I
    if-nez v3, :cond_5

    const/4 v3, 0x1

    .line 461
    :cond_5
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v6

    mul-int v6, v3, v3

    div-int/2addr v4, v6

    const v6, 0x4b000

    if-le v4, v6, :cond_7

    .line 462
    .local v2, isExtraWidth:Z
    :goto_1
    if-eqz v2, :cond_6

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v6

    int-to-double v6, v4

    const-wide v8, 0x4112c00000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .end local v3           #sample:I
    :cond_6
    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 466
    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 467
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    if-nez v0, :cond_0

    .line 471
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .end local v2           #isExtraWidth:Z
    .restart local v3       #sample:I
    :cond_7
    move v2, v5

    .line 461
    goto :goto_1
.end method

.method public static getDefaultFilmstripBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "image"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v10, 0xbf

    const/4 v9, 0x1

    .line 333
    const/4 v6, 0x0

    .line 335
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 357
    :goto_0
    return-object v1

    .line 336
    :cond_0
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    new-array v8, v4, [I

    .line 338
    .local v8, size:[I
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 339
    .local v7, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 340
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 341
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    invoke-static {v2, v3, v4}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v8

    .line 342
    aget v2, v8, v11

    aget v3, v8, v9

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 343
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 344
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 345
    .local v5, p:Landroid/graphics/Paint;
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    aget v2, v8, v11

    int-to-float v3, v2

    aget v2, v8, v9

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v7           #opts:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    move-object v1, v6

    .line 357
    goto :goto_0

    .line 349
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v5           #p:Landroid/graphics/Paint;
    .end local v8           #size:[I
    :cond_1
    new-array v8, v4, [I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    aput v2, v8, v11

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    add-int/2addr v2, v3

    aput v2, v8, v9

    .line 350
    .restart local v8       #size:[I
    aget v2, v8, v11

    aget v3, v8, v9

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 351
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    .restart local v0       #c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 353
    .restart local v5       #p:Landroid/graphics/Paint;
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    aget v2, v8, v11

    int-to-float v3, v2

    aget v2, v8, v9

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getExifThumbnailBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/util/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v8

    .line 226
    .local v8, bytes:[B
    const/4 v0, 0x0

    .line 227
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 228
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v9

    .line 229
    .local v9, degrees:I
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 230
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 231
    array-length v2, v8

    invoke-static {v8, v1, v2, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    if-eqz v9, :cond_0

    .line 235
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 237
    .local v3, exifw:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 238
    .local v4, exifh:I
    int-to-float v2, v9

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v5, v2, v6, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 239
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 240
    .local v7, b2:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    const/4 v0, 0x0

    .line 242
    move-object v0, v7

    .line 247
    .end local v3           #exifw:I
    .end local v4           #exifh:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    .end local v9           #degrees:I
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method public static getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 770
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    :cond_0
    const/4 v0, 0x0

    .line 773
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "path"

    .prologue
    .line 737
    new-instance v2, Landroid/webkit/GIFImageParser;

    invoke-direct {v2}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 738
    .local v2, gifParser:Landroid/webkit/GIFImageParser;
    const/4 v4, 0x0

    .line 739
    .local v4, success:Z
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 741
    invoke-virtual {v2, p1}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 742
    const/4 v4, 0x1

    .line 765
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v6

    :goto_1
    return v6

    .line 747
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 748
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 749
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageUtils;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 750
    .local v0, bitmapData:[B
    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v2, v0}, Landroid/webkit/GIFImageParser;->setRawData([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 753
    const/4 v4, 0x1

    goto :goto_0

    .line 755
    .end local v0           #bitmapData:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 757
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 758
    const/4 v4, 0x0

    .line 762
    goto :goto_0

    .line 759
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 760
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 761
    const/4 v4, 0x0

    goto :goto_0

    .line 765
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getOriginalSize(Ljava/lang/String;)[I
    .locals 6
    .parameter "imagePath"

    .prologue
    const/4 v5, 0x2

    .line 283
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 284
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 285
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 286
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getOriginalSize] Unable to get size from file, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 24
    .parameter "options"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    .line 176
    .local v19, w:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 178
    .local v11, h:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 179
    .local v4, candidateW:I
    int-to-float v0, v11

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 181
    .local v3, candidateH:I
    const-string v20, "ImageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidateW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " candidateH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 185
    .local v2, candidate:I
    if-nez v2, :cond_0

    .line 186
    const/16 v20, 0x1

    .line 221
    :goto_0
    return v20

    .line 188
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_1

    .line 189
    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    div-int v20, v19, v2

    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 190
    add-int/lit8 v2, v2, -0x1

    .line 193
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_2

    .line 194
    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v20, v11, v2

    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 195
    add-int/lit8 v2, v2, -0x1

    .line 204
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 205
    .local v16, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    .line 206
    .local v9, currentHeap:J
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 207
    .local v12, leftMemory:J
    const-string v20, "ImageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current Heap "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " left memory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-wide/16 v17, 0x0

    .line 210
    .local v17, totalPixels:J
    const/4 v15, 0x3

    .line 211
    .local v15, resampleTryCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v14, 0x2

    .line 212
    .local v14, pixelBytes:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 214
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 215
    div-int v20, v19, v2

    move/from16 v0, v20

    int-to-long v7, v0

    .line 216
    .local v7, curW:J
    div-int v20, v11, v2

    move/from16 v0, v20

    int-to-long v5, v0

    .line 217
    .local v5, curH:J
    mul-long v20, v7, v5

    int-to-long v0, v14

    move-wide/from16 v22, v0

    mul-long v17, v20, v22

    .line 218
    const-string v20, "ImageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidate "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " curW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", curH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    cmp-long v20, v17, v12

    if-lez v20, :cond_4

    add-int/lit8 v15, v15, -0x1

    if-gtz v15, :cond_3

    :cond_4
    move/from16 v20, v2

    .line 221
    goto/16 :goto_0

    .line 211
    .end local v5           #curH:J
    .end local v7           #curW:J
    .end local v14           #pixelBytes:I
    :cond_5
    const/4 v14, 0x4

    goto :goto_1
.end method

.method public static loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imagePath"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 134
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageUtils;->countSampleValue(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 138
    .local v1, afterSampleWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 139
    .local v0, afterSampleHeight:I
    if-ne v1, p3, :cond_0

    if-eq v0, p4, :cond_1

    .line 140
    :cond_0
    sget-boolean v5, Lcom/htc/opensense2/album/util/ImageUtils;->useScaledResize:Z

    if-eqz v5, :cond_2

    .line 141
    invoke-static {v2, p3, p4}, Lcom/htc/opensense2/album/util/ImageUtils;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 149
    .end local v0           #afterSampleHeight:I
    .end local v1           #afterSampleWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v2

    .line 143
    .restart local v0       #afterSampleHeight:I
    .restart local v1       #afterSampleWidth:I
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {v2, v1, v0, p3, p4}, Lcom/htc/opensense2/album/util/ImageUtils;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 147
    .end local v0           #afterSampleHeight:I
    .end local v1           #afterSampleWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 148
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "ImageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadBitmap] Unable to load bitmap, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadSquareBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "source"
    .parameter "outputSize"
    .parameter "options"

    .prologue
    .line 510
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    invoke-static {v0, p1, v1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "imagePath"
    .parameter "outputSize"
    .parameter "isVideo"
    .parameter "options"

    .prologue
    .line 515
    const/4 v1, 0x0

    .line 517
    .local v1, bitmap:Landroid/graphics/Bitmap;
    move-object v4, p0

    .line 519
    .local v4, filePath:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 521
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 524
    .local v5, mmr:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 525
    const-wide/16 v11, -0x1

    invoke-virtual {v5, v11, v12}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 531
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 534
    if-nez v1, :cond_1

    .line 535
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to decode video file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v11, 0x0

    .line 604
    .end local v5           #mmr:Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-object v11

    .line 526
    .restart local v5       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v3

    .line 527
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to decode video file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    const/4 v11, 0x0

    .line 531
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v11

    .line 541
    .end local v5           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_0
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v2

    .line 542
    .local v2, data:[B
    if-eqz v2, :cond_3

    .line 544
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 545
    .local v8, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x0

    iput-boolean v11, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 546
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v12, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 554
    .end local v2           #data:[B
    .end local v8           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    const/4 v11, 0x2

    new-array v9, v11, [I

    fill-array-data v9, :array_0

    .line 555
    .local v9, originalSize:[I
    if-nez v1, :cond_4

    .line 557
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v9

    .line 565
    :goto_2
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_5

    .line 566
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 550
    .end local v9           #originalSize:[I
    .restart local v2       #data:[B
    :cond_3
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][ImageUtils][loadSquareBitmap]: no exif: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 561
    .end local v2           #data:[B
    .restart local v9       #originalSize:[I
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    aput v12, v9, v11

    .line 562
    const/4 v11, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    aput v12, v9, v11

    goto :goto_2

    .line 569
    :cond_5
    if-nez v1, :cond_8

    .line 571
    if-nez p3, :cond_6

    .line 572
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 574
    .restart local p3
    :cond_6
    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 576
    :cond_7
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-static {v11, v12, p1, p1}, Lcom/htc/opensense2/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 577
    const/4 v11, 0x0

    move-object/from16 v0, p3

    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 580
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 588
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    .line 589
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 582
    :catch_1
    move-exception v3

    .line 584
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][ImageUtils][loadSquareBitmap]: OutOfMemoryError: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 593
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :cond_9
    int-to-float v11, p1

    const/4 v12, 0x0

    aget v12, v9, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    int-to-float v12, p1

    const/4 v13, 0x1

    aget v13, v9, v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 594
    .local v10, ratio:F
    const/4 v11, 0x0

    aget v11, v9, v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 595
    .local v7, newWidth:I
    const/4 v11, 0x1

    aget v11, v9, v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 596
    .local v6, newHeight:I
    invoke-static {v1, v7, v6}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 598
    if-nez v1, :cond_a

    .line 599
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 602
    :cond_a
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v11, v1

    .line 604
    goto/16 :goto_0

    .line 554
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "originalWidth"
    .parameter "orginalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 689
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 690
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p3

    int-to-float v2, p1

    div-float/2addr v0, v2

    int-to-float v2, p4

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 691
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 309
    if-nez p0, :cond_1

    const/4 v9, 0x0

    .line 329
    :cond_0
    :goto_0
    return-object v9

    .line 312
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 313
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 314
    .local v3, originalWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 315
    .local v4, orginalHeight:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 316
    const/4 v9, 0x0

    .line 317
    .local v9, output:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 319
    .local v7, count:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 321
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 326
    :goto_1
    if-nez v9, :cond_3

    const/4 v0, 0x3

    if-le v7, v0, :cond_2

    .line 327
    :cond_3
    invoke-virtual {p0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 322
    :catch_0
    move-exception v8

    .line 324
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method private static scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
