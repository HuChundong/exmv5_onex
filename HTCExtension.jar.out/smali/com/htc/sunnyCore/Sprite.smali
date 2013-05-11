.class public Lcom/htc/sunnyCore/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/Sprite$Layer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Sprite"

.field static sSpriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Sprite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAlpha:F

.field protected mBlurParameter:F

.field protected mCreateStack:Ljava/lang/String;

.field protected mLayers:[Lcom/htc/sunnyCore/Sprite$Layer;

.field protected mLayersCount:I

.field protected mNodeId:I

.field protected mSunnyEnvironment:I

.field protected mXPosition:F

.field protected mXRotate:F

.field protected mXScale:F

.field protected mYPosition:F

.field protected mYRotate:F

.field protected mYScale:F

.field protected mZPosition:F

.field protected mZRotate:F

.field protected mZScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/Sprite;-><init>(I)V

    .line 160
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "layersCount"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/Sprite;-><init>(IF)V

    .line 167
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 6
    .parameter "layersCount"
    .parameter "blur"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/Sprite;->mSunnyEnvironment:I

    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 p1, 0x1

    .line 177
    :cond_0
    iput p1, p0, Lcom/htc/sunnyCore/Sprite;->mLayersCount:I

    .line 178
    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    .line 179
    iget v1, p0, Lcom/htc/sunnyCore/Sprite;->mSunnyEnvironment:I

    invoke-static {v1}, Lcom/htc/sunnyCore/SunnyCore;->CreateBlurSprite(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    .line 180
    iput p2, p0, Lcom/htc/sunnyCore/Sprite;->mBlurParameter:F

    .line 186
    :goto_0
    iget v1, p0, Lcom/htc/sunnyCore/Sprite;->mLayersCount:I

    new-array v1, v1, [Lcom/htc/sunnyCore/Sprite$Layer;

    iput-object v1, p0, Lcom/htc/sunnyCore/Sprite;->mLayers:[Lcom/htc/sunnyCore/Sprite$Layer;

    .line 187
    const/4 v0, 0x0

    .local v0, id:I
    :goto_1
    iget v1, p0, Lcom/htc/sunnyCore/Sprite;->mLayersCount:I

    if-ge v0, v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/htc/sunnyCore/Sprite;->mLayers:[Lcom/htc/sunnyCore/Sprite$Layer;

    new-instance v2, Lcom/htc/sunnyCore/Sprite$Layer;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunnyCore/Sprite$Layer;-><init>(Lcom/htc/sunnyCore/Sprite;I)V

    aput-object v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v0           #id:I
    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/Sprite;->mSunnyEnvironment:I

    invoke-static {v1, p1, v5}, Lcom/htc/sunnyCore/SunnyCore;->CreateSpriteWithConfig(IIZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    .line 183
    iput v3, p0, Lcom/htc/sunnyCore/Sprite;->mBlurParameter:F

    goto :goto_0

    .line 191
    .restart local v0       #id:I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    .line 193
    iput v3, p0, Lcom/htc/sunnyCore/Sprite;->mXPosition:F

    .line 194
    iput v3, p0, Lcom/htc/sunnyCore/Sprite;->mYPosition:F

    .line 195
    iput v3, p0, Lcom/htc/sunnyCore/Sprite;->mZPosition:F

    .line 197
    iput v4, p0, Lcom/htc/sunnyCore/Sprite;->mXScale:F

    .line 198
    iput v4, p0, Lcom/htc/sunnyCore/Sprite;->mYScale:F

    .line 199
    iput v4, p0, Lcom/htc/sunnyCore/Sprite;->mZScale:F

    .line 201
    iput v3, p0, Lcom/htc/sunnyCore/Sprite;->mXRotate:F

    .line 202
    iput v3, p0, Lcom/htc/sunnyCore/Sprite;->mYRotate:F

    .line 203
    iput v3, p0, Lcom/htc/sunnyCore/Sprite;->mZRotate:F

    .line 214
    sget-object v2, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v2

    .line 215
    :try_start_0
    sget-object v1, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    monitor-exit v2

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain()Lcom/htc/sunnyCore/Sprite;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/Sprite;-><init>(I)V

    return-object v0
.end method

.method public static obtain(F)Lcom/htc/sunnyCore/Sprite;
    .locals 2
    .parameter "fBlur"

    .prologue
    .line 40
    new-instance v0, Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/htc/sunnyCore/Sprite;-><init>(IF)V

    return-object v0
.end method

.method public static obtain(I)Lcom/htc/sunnyCore/Sprite;
    .locals 1
    .parameter "layersCount"

    .prologue
    .line 53
    new-instance v0, Lcom/htc/sunnyCore/Sprite;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/Sprite;-><init>(I)V

    return-object v0
.end method

.method public static search(I)Lcom/htc/sunnyCore/Sprite;
    .locals 5
    .parameter "nNodeId"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, desired:Lcom/htc/sunnyCore/Sprite;
    sget-object v4, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v4

    .line 62
    :try_start_0
    sget-object v3, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/Sprite;

    .line 63
    .local v2, s:Lcom/htc/sunnyCore/Sprite;
    invoke-virtual {v2}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 64
    move-object v0, v2

    .line 68
    .end local v2           #s:Lcom/htc/sunnyCore/Sprite;
    :cond_1
    monitor-exit v4

    .line 69
    return-object v0

    .line 68
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public enableColorBlending()V
    .locals 3

    .prologue
    .line 481
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_EnableColorBlending(IIZ)V

    .line 482
    return-void
.end method

.method public enableTmC()V
    .locals 3

    .prologue
    .line 473
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetRGBOperation(III)V

    .line 474
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mAlpha:F

    return v0
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;
    .locals 1
    .parameter "idx"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite;->mLayers:[Lcom/htc/sunnyCore/Sprite$Layer;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite;->mLayers:[Lcom/htc/sunnyCore/Sprite$Layer;

    aget-object v0, v0, p1

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeId()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    return v0
.end method

.method public getPosition()[F
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mXPosition:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mYPosition:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mZPosition:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getRotate()[F
    .locals 3

    .prologue
    .line 323
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mXRotate:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mYRotate:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mZRotate:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getScale()[F
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mXScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mYScale:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunnyCore/Sprite;->mZScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getUserFlag()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_GetUserFlag(I)I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_GetVisible(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mBlurParameter:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 225
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->DestroyBlurSprite(I)V

    .line 229
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    .line 230
    sget-object v1, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    sget-object v0, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->DestroySprite(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 264
    iput p1, p0, Lcom/htc/sunnyCore/Sprite;->mAlpha:F

    .line 265
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetGroupAlpha(IF)V

    .line 266
    return-void
.end method

.method public setBlurTexture(Lcom/htc/sunnyCore/Texture;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 4
    .parameter "texture"
    .parameter "sunnyContext"

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, handler:I
    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    .line 389
    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->Texture_Realize(I)V

    .line 392
    :cond_0
    iget v1, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    iget v3, p0, Lcom/htc/sunnyCore/Sprite;->mBlurParameter:F

    invoke-static {v1, v2, v0, v3}, Lcom/htc/sunnyCore/SunnyCore;->BlurSprite_SetTexture(IIIF)Z

    .line 398
    iget v1, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    iget v3, p0, Lcom/htc/sunnyCore/Sprite;->mBlurParameter:F

    invoke-static {v1, v2, v3}, Lcom/htc/sunnyCore/SunnyCore;->BlurSprite_SetBlurParameter(IIF)Z

    .line 402
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 422
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetColor(IIIII)V

    .line 423
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 282
    iput p1, p0, Lcom/htc/sunnyCore/Sprite;->mXPosition:F

    .line 283
    iput p2, p0, Lcom/htc/sunnyCore/Sprite;->mYPosition:F

    .line 284
    iput p3, p0, Lcom/htc/sunnyCore/Sprite;->mZPosition:F

    .line 285
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetPosition(IFFF)V

    .line 286
    return-void
.end method

.method public setRenderOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 489
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRenderOrder(II)V

    .line 490
    return-void
.end method

.method public setReverse()V
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 430
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    const/4 v1, 0x0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 431
    return-void
.end method

.method public setReverseRatio(F)V
    .locals 6
    .parameter "ratio"

    .prologue
    const/high16 v3, 0x3f80

    .line 438
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v5, v3, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 439
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 313
    iput p1, p0, Lcom/htc/sunnyCore/Sprite;->mXRotate:F

    .line 314
    iput p2, p0, Lcom/htc/sunnyCore/Sprite;->mYRotate:F

    .line 315
    iput p3, p0, Lcom/htc/sunnyCore/Sprite;->mZRotate:F

    .line 316
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRotate(IFFF)V

    .line 317
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "sX"
    .parameter "sY"
    .parameter "sZ"

    .prologue
    .line 272
    iput p1, p0, Lcom/htc/sunnyCore/Sprite;->mXScale:F

    .line 273
    iput p2, p0, Lcom/htc/sunnyCore/Sprite;->mYScale:F

    .line 274
    iput p3, p0, Lcom/htc/sunnyCore/Sprite;->mZScale:F

    .line 275
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 276
    return-void
.end method

.method public setTexture(I)V
    .locals 2
    .parameter "texture"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 367
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, v1, v1, p1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    .line 368
    return-void
.end method

.method public setTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 3
    .parameter "texture"

    .prologue
    const/4 v2, 0x0

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, handler:I
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    .line 378
    :cond_0
    iget v1, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v1, v2, v2, v0}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    .line 379
    return-void
.end method

.method public setTextureCoordinatesBy2P(FFFF)V
    .locals 6
    .parameter "u0"
    .parameter "v0"
    .parameter "u1"
    .parameter "v1"

    .prologue
    .line 445
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 446
    return-void
.end method

.method public setTextureCoordinatesWithRotate(IFFFF)V
    .locals 10
    .parameter "rotateDegrees"
    .parameter "u0"
    .parameter "v0"
    .parameter "u1"
    .parameter "v1"

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x3f80

    .line 452
    sparse-switch p1, :sswitch_data_0

    .line 463
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 466
    :goto_0
    return-void

    .line 454
    :sswitch_0
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    sub-float v3, v9, p2

    sub-float v5, v9, p3

    sub-float v7, v9, p4

    sub-float/2addr v9, p4

    move v2, p3

    move v4, p5

    move v6, p3

    move v8, p5

    invoke-static/range {v0 .. v9}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 457
    :sswitch_1
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    sub-float v2, v9, p2

    sub-float v3, v9, p3

    sub-float v4, v9, p2

    sub-float v5, v9, p5

    sub-float v6, v9, p4

    sub-float v7, v9, p3

    sub-float v8, v9, p4

    sub-float/2addr v9, p5

    invoke-static/range {v0 .. v9}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 460
    :sswitch_2
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    sub-float v2, v9, p3

    sub-float v4, v9, p5

    sub-float v6, v9, p3

    sub-float v8, v9, p5

    move v3, p2

    move v5, p3

    move v7, p4

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 452
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setTextureRotate(I)V
    .locals 1
    .parameter "rotateDegrees"

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 409
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "touchable"

    .prologue
    .line 359
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTouchable(IZ)V

    .line 360
    return-void
.end method

.method public setUserFlag(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 345
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetUserFlag(II)V

    .line 346
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 330
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetVisible(IZ)V

    .line 331
    return-void
.end method

.method public setupGeometry(FFFF)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "originX"
    .parameter "originY"

    .prologue
    .line 415
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetupGeometry(IIFFFFF)V

    .line 416
    return-void
.end method
