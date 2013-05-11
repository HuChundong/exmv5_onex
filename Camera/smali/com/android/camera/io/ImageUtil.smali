.class public Lcom/android/camera/io/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# instance fields
.field public final cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method protected constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/io/ImageUtil;->cameraThread:Lcom/android/camera/CameraThread;

    return-void
.end method

.method private getLatitudeString(D)Ljava/lang/String;
    .locals 12
    .parameter "dLatitude"

    .prologue
    .line 168
    const-wide v6, -0x3f3c788000000000L

    cmpl-double v6, p1, v6

    if-eqz v6, :cond_2

    .line 170
    move-wide v0, p1

    .line 171
    .local v0, fLatitude:D
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    .line 172
    neg-double v0, v0

    .line 173
    :cond_0
    double-to-int v4, v0

    .line 174
    .local v4, nDegrees:I
    const-wide/high16 v6, 0x404e

    int-to-double v8, v4

    sub-double v8, v0, v8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 175
    .local v5, nMinutes:I
    const-wide/high16 v6, 0x404e

    const-wide/high16 v8, 0x404e

    int-to-double v10, v4

    sub-double v10, v0, v10

    mul-double/2addr v8, v10

    int-to-double v10, v5

    sub-double/2addr v8, v10

    mul-double v2, v6, v8

    .line 176
    .local v2, fSeconds:D
    const-wide/16 v6, 0x0

    cmpg-double v6, p1, v6

    if-gez v6, :cond_1

    .line 177
    const-string v6, "S%d\u00b0%02d\'%.2f\'\'"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 183
    .end local v0           #fLatitude:D
    .end local v2           #fSeconds:D
    .end local v4           #nDegrees:I
    .end local v5           #nMinutes:I
    :goto_0
    return-object v6

    .line 179
    .restart local v0       #fLatitude:D
    .restart local v2       #fSeconds:D
    .restart local v4       #nDegrees:I
    .restart local v5       #nMinutes:I
    :cond_1
    const-string v6, "N%d\u00b0%02d\'%.2f\'\'"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 183
    .end local v0           #fLatitude:D
    .end local v2           #fSeconds:D
    .end local v4           #nDegrees:I
    .end local v5           #nMinutes:I
    :cond_2
    const-string v6, "N/A"

    goto :goto_0
.end method

.method private getLongitudeString(D)Ljava/lang/String;
    .locals 12
    .parameter "dLongitude"

    .prologue
    .line 189
    const-wide v6, -0x3f3c788000000000L

    cmpl-double v6, p1, v6

    if-eqz v6, :cond_2

    .line 191
    move-wide v0, p1

    .line 192
    .local v0, fLongitude:D
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    .line 193
    neg-double v0, v0

    .line 194
    :cond_0
    double-to-int v4, v0

    .line 195
    .local v4, nDegrees:I
    const-wide/high16 v6, 0x404e

    int-to-double v8, v4

    sub-double v8, v0, v8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 196
    .local v5, nMinutes:I
    const-wide/high16 v6, 0x404e

    const-wide/high16 v8, 0x404e

    int-to-double v10, v4

    sub-double v10, v0, v10

    mul-double/2addr v8, v10

    int-to-double v10, v5

    sub-double/2addr v8, v10

    mul-double v2, v6, v8

    .line 197
    .local v2, fSeconds:D
    const-wide/16 v6, 0x0

    cmpg-double v6, p1, v6

    if-gez v6, :cond_1

    .line 198
    const-string v6, "W%d\u00b0%02d\'%.2f\'\'"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 204
    .end local v0           #fLongitude:D
    .end local v2           #fSeconds:D
    .end local v4           #nDegrees:I
    .end local v5           #nMinutes:I
    :goto_0
    return-object v6

    .line 200
    .restart local v0       #fLongitude:D
    .restart local v2       #fSeconds:D
    .restart local v4       #nDegrees:I
    .restart local v5       #nMinutes:I
    :cond_1
    const-string v6, "E%d\u00b0%02d\'%.2f\'\'"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 204
    .end local v0           #fLongitude:D
    .end local v2           #fSeconds:D
    .end local v4           #nDegrees:I
    .end local v5           #nMinutes:I
    :cond_2
    const-string v6, "N/A"

    goto :goto_0
.end method


# virtual methods
.method public createOverloadImage([BLjava/io/OutputStream;)Z
    .locals 8
    .parameter "data"
    .parameter "stream"

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 409
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 411
    .local v4, result:Z
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/io/ImageUtil;->getDateString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/io/ImageUtil;->getLocationString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    array-length v6, p1

    invoke-static {p1, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 415
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 418
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 419
    .local v3, p:Landroid/graphics/Paint;
    const/high16 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    invoke-virtual {p0}, Lcom/android/camera/io/ImageUtil;->getTextSize()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 421
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    invoke-virtual {p0}, Lcom/android/camera/io/ImageUtil;->getDateString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/io/ImageUtil;->getLocationString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x32

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x32

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    const-string v5, "imageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createOverloadImage()"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    const/4 v4, 0x1

    .line 432
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 435
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #p:Landroid/graphics/Paint;
    :cond_4
    :goto_0
    return v4

    .line 429
    :catch_0
    move-exception v5

    .line 432
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_5
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v5

    .line 432
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    :cond_7
    throw v5
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/io/ImageUtil;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isStampDateEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 472
    .line 475
    .local v0, data:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    const-string v2, " %x %X"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    const-string v1, "imageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDateString()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-object v0

    .line 479
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 79
    .line 85
    iget-object v0, p0, Lcom/android/camera/io/ImageUtil;->cameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 86
    .local v3, cLoc:Landroid/location/Location;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/io/ImageUtil;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isStampLocationEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/camera/io/ImageUtil;->getLatitudeString(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/camera/io/ImageUtil;->getLongitudeString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7
.end method

.method public getTextSize()I
    .locals 5

    .prologue
    .line 79
    const/16 v4, 0x40

    iget-object v0, p0, Lcom/android/camera/io/ImageUtil;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    move-object v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    div-int/lit16 v1, v2, 0x1c

    add-int/lit16 v1, v1, -0x1

    if-lez v1, :cond_1

    move v4, v1

    :cond_1
    return v4
.end method
