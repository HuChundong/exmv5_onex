.class public Lcom/htc/sunnyCore/SBitmap;
.super Ljava/lang/Object;
.source "SBitmap.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BOTTOM_BORDER:I = 0x8

.field public static final LEFT_BORDER:I = 0x1

.field public static final POWEROF2:Z = false

.field public static final RIGHT_BORDER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SBitmap"

.field public static final TOP_BORDER:I = 0x4


# instance fields
.field private mBmpHeight:I

.field private mBmpId:I

.field private mBmpWidth:I

.field private mCloned:Z

.field private mNeedRecycle:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bmp"
    .parameter "nBmpId"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    .line 66
    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    .line 400
    iput-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mCloned:Z

    .line 401
    iput-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mNeedRecycle:Z

    .line 69
    iput p2, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    .line 72
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunnyCore/SBitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    .line 66
    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    .line 400
    iput-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mCloned:Z

    .line 401
    iput-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mNeedRecycle:Z

    .line 75
    iget v0, p1, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    .line 76
    iget v0, p1, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    .line 77
    iget v0, p1, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    .line 78
    return-void
.end method

.method private static convertDimension(IIII)[I
    .locals 4
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"

    .prologue
    .line 91
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 113
    :goto_0
    return-object v2

    .line 93
    :cond_1
    const/4 v1, 0x0

    .line 100
    .local v1, nNewWidth:I
    move v1, p0

    .line 103
    const/4 v0, 0x0

    .line 110
    .local v0, nNewHeight:I
    move v0, p1

    .line 113
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    goto :goto_0
.end method

.method public static createBitmap(III)Lcom/htc/sunnyCore/SBitmap;
    .locals 6
    .parameter "color"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v5, 0x0

    .line 289
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 291
    .local v2, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 293
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 294
    .local v3, config:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    invoke-static {v0}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v4

    .line 300
    .local v4, sbmp:Lcom/htc/sunnyCore/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    const/4 v0, 0x0

    .line 303
    return-object v4
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;
    .locals 3
    .parameter "bmp"

    .prologue
    .line 142
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;I)Lcom/htc/sunnyCore/SBitmap;
    .locals 2
    .parameter "bmp"
    .parameter "transparentBorders"

    .prologue
    .line 161
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunnyCore/SBitmap;
    .locals 1
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"

    .prologue
    .line 179
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunnyCore/SBitmap;
    .locals 7
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v1, 0x0

    .line 198
    if-eqz p0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-ne v2, v5, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v1

    .line 199
    :cond_1
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunnyCore/SunnyCore;->CreateBitmap(I)I

    move-result v0

    .line 202
    .local v0, bitmapHandler:I
    if-eqz v0, :cond_0

    .line 205
    if-nez p3, :cond_3

    .line 206
    invoke-static {v0, p0}, Lcom/htc/sunnyCore/SunnyCore;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v6

    .line 207
    .local v6, ret:Z
    if-nez v6, :cond_2

    .line 209
    const-string v1, "SBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t transform Bitmap to SBitmap: ret="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v6           #ret:Z
    :cond_2
    :goto_1
    new-instance v1, Lcom/htc/sunnyCore/SBitmap;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunnyCore/SBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 217
    .local v3, nNewWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 223
    .local v4, nNewHeight:I
    const v2, 0x25551

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunnyCore/SunnyCore;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    goto :goto_1
.end method

.method public static createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunnyCore/SBitmap;
    .locals 7
    .parameter "drawable"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 275
    .end local p0
    :goto_0
    return-object v3

    .line 245
    .restart local p0
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 246
    .local v2, config:Landroid/graphics/Bitmap$Config;
    const/4 v0, 0x0

    .line 248
    .local v0, bitmap:Landroid/graphics/Bitmap;
    instance-of v4, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v4, :cond_1

    .line 249
    invoke-virtual {p0, v5, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 270
    .end local p0
    :goto_1
    invoke-static {v0}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v3

    .line 272
    .local v3, sbmp:Lcom/htc/sunnyCore/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    const/4 v0, 0x0

    .line 275
    goto :goto_0

    .line 256
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #sbmp:Lcom/htc/sunnyCore/SBitmap;
    .restart local p0
    :cond_1
    invoke-static {v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 259
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1
.end method

.method public static createBitmap(Landroid/view/View;)Lcom/htc/sunnyCore/SBitmap;
    .locals 6
    .parameter "view"

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 125
    invoke-static {v0}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v2

    .line 126
    .local v2, sbmp:Lcom/htc/sunnyCore/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    return-object v2
.end method

.method private static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 81
    add-int/lit8 p0, p0, -0x1

    .line 82
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 83
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 84
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 85
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 86
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 87
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method cloneSBitmap()Lcom/htc/sunnyCore/SBitmap;
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    .line 410
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mCloned:Z

    .line 411
    monitor-exit p0

    .line 412
    return-object p0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getBmpId()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    .line 383
    :try_start_0
    iget v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mCloned:Z

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mNeedRecycle:Z

    .line 345
    monitor-exit p0

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v0

    if-ne v1, v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 349
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->DestroyBitmap(I)V

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    .line 351
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method releaseClone()V
    .locals 1

    .prologue
    .line 419
    monitor-enter p0

    .line 420
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mCloned:Z

    .line 422
    iget-boolean v0, p0, Lcom/htc/sunnyCore/SBitmap;->mNeedRecycle:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 425
    :cond_0
    monitor-exit p0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public substitute()Lcom/htc/sunnyCore/SBitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 363
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 364
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Substitute a recycled SBitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    new-instance v0, Lcom/htc/sunnyCore/SBitmap;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/SBitmap;-><init>(Lcom/htc/sunnyCore/SBitmap;)V

    .line 368
    .local v0, newBitmap:Lcom/htc/sunnyCore/SBitmap;
    iput v3, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    .line 369
    iput v3, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    .line 370
    iput v3, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    .line 371
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 392
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/SBitmap;->mBmpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isRecycled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
