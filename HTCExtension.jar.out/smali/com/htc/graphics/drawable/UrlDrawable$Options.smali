.class public Lcom/htc/graphics/drawable/UrlDrawable$Options;
.super Ljava/lang/Object;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final OVERLAY_AT_BOTTOM_LEFT:I = 0x11

.field public static final OVERLAY_AT_BOTTOM_RIGHT:I = 0x12

.field public static final OVERLAY_AT_TOP_LEFT:I = 0x9

.field public static final OVERLAY_AT_TOP_RIGHT:I = 0xa

.field private static final OVERLAY_HORIZONTAL_CENTER:I = 0x4

.field private static final OVERLAY_HORIZONTAL_LEFT:I = 0x1

.field private static final OVERLAY_HORIZONTAL_RIGHT:I = 0x2

.field private static final OVERLAY_VERTICAL_BOTTOM:I = 0x10

.field private static final OVERLAY_VERTICAL_MIDDLE:I = 0x20

.field private static final OVERLAY_VERTICAL_TOP:I = 0x8


# instance fields
.field public applyMaskToDefault:Z

.field public checkDefaultProxy:Z

.field public defaultBitmap:Landroid/graphics/Bitmap;

.field public drawOnScroll:Z

.field public forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

.field public maskBitmap:Landroid/graphics/Bitmap;

.field public maxDim:I

.field public maxFetchedImageDim:I

.field public minDim:I

.field public needSendRedrawMsg:Z

.field public overlayBitmap:Landroid/graphics/Bitmap;

.field public overlayPos:I

.field public preferImageId:Ljava/lang/String;

.field public roundify:Z

.field public saveDefaultImageWhenDownloadFail:Z

.field public useApacheHttpClient:Z

.field public writeDisk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    .line 259
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->reset()V

    .line 260
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    .line 270
    .local v0, cloned:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 271
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 272
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 273
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 274
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 275
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 276
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 277
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 278
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 279
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    .line 280
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 281
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 282
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 283
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 284
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    .line 285
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    .line 286
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    .line 287
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;

    move-result-object v0

    return-object v0
.end method

.method public getApplyMaskToDefault()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    return v0
.end method

.method public getCheckDefaultProxy()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    return v0
.end method

.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawOnScroll()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    return v0
.end method

.method public getForceDim()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    return-object v0
.end method

.method public getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMaxDim()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    return v0
.end method

.method public getMaxFetchedImageDim()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    return v0
.end method

.method public getMinDim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    return v0
.end method

.method public getNeedSendRedrawMsg()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    return v0
.end method

.method public getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOverlayPos()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    return v0
.end method

.method public getPreferImageId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundify()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    return v0
.end method

.method public getSaveDefaultImageWhenDownloadFail()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    return v0
.end method

.method public getWriteDisk()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    return v0
.end method

.method public getuseApacheHttpClient()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 295
    iput-boolean v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 296
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 297
    iput-boolean v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 298
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 303
    :goto_0
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 304
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 305
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 306
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 307
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 308
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 309
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 310
    iput-boolean v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 311
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 312
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    .line 313
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    .line 314
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    .line 315
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->reset()V

    goto :goto_0
.end method

.method public setApplyMaskToDefault(Z)V
    .locals 0
    .parameter "applyMaskToDefault"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    .line 462
    return-void
.end method

.method public setCheckDefaultProxy(Z)V
    .locals 0
    .parameter "checkDefaultProxy"

    .prologue
    .line 530
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    .line 531
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "defaultBitmap"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 422
    return-void
.end method

.method public setDrawOnScroll(Z)V
    .locals 0
    .parameter "drawOnScroll"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 355
    return-void
.end method

.method public setForceDim(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;)V
    .locals 0
    .parameter "forceDim"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 363
    return-void
.end method

.method public setMaskBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "maskBitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 446
    return-void
.end method

.method public setMaxDim(I)V
    .locals 2
    .parameter "maxDim"

    .prologue
    .line 406
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 407
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0, p1, p1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-ne v0, v1, :cond_0

    .line 411
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0, p1, p1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    goto :goto_0
.end method

.method public setMaxFetchedImageDim(I)V
    .locals 0
    .parameter "maxFetchedImageDim"

    .prologue
    .line 546
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    .line 547
    return-void
.end method

.method public setMinDim(I)V
    .locals 1
    .parameter "minDim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 383
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0, p1, p1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 389
    :cond_0
    return-void
.end method

.method public setNeedSendRedrawMsg(Z)V
    .locals 0
    .parameter "needSendRedrawMsg"

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 482
    return-void
.end method

.method public setOverlayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "overlayBitmap"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 430
    return-void
.end method

.method public setOverlayPos(I)V
    .locals 0
    .parameter "overlayPos"

    .prologue
    .line 469
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 470
    return-void
.end method

.method public setPreferImageId(Ljava/lang/String;)V
    .locals 0
    .parameter "preferImageId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setRoundify(Z)V
    .locals 0
    .parameter "roundify"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 347
    return-void
.end method

.method public setSaveDefaultImageWhenDownloadFail(Z)V
    .locals 0
    .parameter "saveDefaultImageWhenDownloadFail"

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 507
    return-void
.end method

.method public setWriteDisk(Z)V
    .locals 0
    .parameter "writeDisk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 331
    return-void
.end method

.method public setuseApacheHttpClient(Z)V
    .locals 0
    .parameter "useApacheHttpClient"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 498
    return-void
.end method
