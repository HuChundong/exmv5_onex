.class public Lcom/htc/sunny/SImageView;
.super Lcom/htc/sunny/SView;
.source "SImageView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mIconHeight:I

.field private mIconPressTextureId:I

.field private mIconRestTextureId:I

.field private mIconSpriteId:I

.field private mIconWidth:I

.field protected mImagePressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageRestDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageTranslation:Lcom/htc/sunny/Vector3F;

.field protected mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

.field protected mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 3
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 35
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 36
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 37
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 43
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    .line 47
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 49
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny/SImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/sunny/SImageView;->freeImageDrawable()V

    return-void
.end method

.method private freeImageDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 197
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 199
    :cond_0
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 204
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 206
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_3
    return-void
.end method


# virtual methods
.method protected createResource()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 351
    invoke-super {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 352
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 359
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 367
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 369
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 372
    :cond_5
    const/4 v0, 0x0

    .line 373
    .local v0, bRenderable:Z
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_8

    .line 374
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-nez v1, :cond_6

    .line 375
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 376
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SImageView;->setIconDisplaySize(II)V

    .line 377
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 378
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 381
    :cond_6
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-nez v1, :cond_7

    .line 382
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 384
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v1, v2, v6, v6, v3}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 386
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 387
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 388
    const/4 v0, 0x1

    .line 389
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 390
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 391
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 396
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_a

    .line 398
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-nez v1, :cond_9

    .line 399
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 402
    :cond_9
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v1, :cond_a

    .line 403
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 404
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 405
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    .line 406
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 407
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 413
    :cond_a
    if-ne v7, v0, :cond_b

    .line 414
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 419
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SImageView;->setTouchable(Z)V

    .line 420
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    goto/16 :goto_0

    .line 416
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 244
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 245
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 249
    .local v0, nHitSpriteId:I
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_2

    if-eqz v0, :cond_2

    .line 250
    iput-boolean v4, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 251
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    .line 255
    .end local v0           #nHitSpriteId:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 257
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v1, :cond_3

    .line 258
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 259
    invoke-virtual {p0, v5}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 263
    .restart local v0       #nHitSpriteId:I
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    invoke-interface {v1}, Lcom/htc/sunny/SView$OnClickListener;->onClick()V

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 434
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 439
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 443
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 445
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 446
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 448
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 449
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 451
    invoke-super {p0}, Lcom/htc/sunny/SView;->freeResource()V

    goto :goto_0
.end method

.method protected onFocusChanged(Z)V
    .locals 5
    .parameter "bFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 218
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 222
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny/SImageView;->invalidate3DView()V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 229
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method protected setIconDisplaySize(II)V
    .locals 7
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 278
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 282
    iput p1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 283
    iput p2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    .line 285
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 286
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 289
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    .line 315
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v4, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 293
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 296
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_8

    .line 300
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 303
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    .line 306
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_3

    .line 307
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_9

    .line 308
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 310
    :cond_9
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1
.end method

.method public setImage(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 174
    new-instance v0, Lcom/htc/sunny/SImageView$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$5;-><init>(Lcom/htc/sunny/SImageView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public setImage(IIII)V
    .locals 6
    .parameter "nPressResId"
    .parameter "nRestResId"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 141
    new-instance v0, Lcom/htc/sunny/SImageView$4;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$4;-><init>(Lcom/htc/sunny/SImageView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"

    .prologue
    .line 120
    new-instance v0, Lcom/htc/sunny/SImageView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$3;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 6
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 93
    new-instance v0, Lcom/htc/sunny/SImageView$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$2;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public setImagePosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 69
    new-instance v0, Lcom/htc/sunny/SImageView$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SImageView$1;-><init>(Lcom/htc/sunny/SImageView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "bTouchable"

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->setTouchable(Z)V

    .line 332
    new-instance v0, Lcom/htc/sunny/SImageView$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SImageView$6;-><init>(Lcom/htc/sunny/SImageView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method protected updateViewLayout()V
    .locals 5

    .prologue
    .line 186
    invoke-super {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    .line 188
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v2, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_0
.end method
