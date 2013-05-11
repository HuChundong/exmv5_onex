.class public Lcom/htc/sunnyCore/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANTI_ALIAS_BORDERS:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field static sTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCreateStack:Ljava/lang/String;

.field private mHeight:I

.field private mIdentifier:Ljava/lang/String;

.field private mOriSourceHeight:I

.field private mOriSourceWidth:I

.field private mSunnyEnvironment:I

.field private mTextureId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    .line 32
    const-class v0, Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-direct {p0}, Lcom/htc/sunnyCore/Texture;->init()V

    .line 159
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-direct {p0}, Lcom/htc/sunnyCore/Texture;->init()V

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v1, "Bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/htc/sunnyCore/SBitmap;)V
    .locals 2
    .parameter "sbmp"

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-direct {p0}, Lcom/htc/sunnyCore/Texture;->init()V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v1, "SBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createTexture()Lcom/htc/sunnyCore/Texture;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/htc/sunnyCore/Texture;

    invoke-direct {v0}, Lcom/htc/sunnyCore/Texture;-><init>()V

    return-object v0
.end method

.method public static createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 105
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/htc/sunnyCore/Texture;

    invoke-direct {v2, v0}, Lcom/htc/sunnyCore/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v2, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    :cond_0
    return-object v2
.end method

.method public static createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;
    .locals 6
    .parameter "context"
    .parameter "resId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 55
    .local v2, d:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 58
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v2, v5, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    new-instance v3, Lcom/htc/sunnyCore/Texture;

    invoke-direct {v3, v0}, Lcom/htc/sunnyCore/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v3, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    :cond_0
    return-object v3
.end method

.method public static createTexture(Landroid/content/Context;Landroid/graphics/drawable/ColorDrawable;)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "context"
    .parameter "d"

    .prologue
    const/4 v4, 0x1

    .line 84
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    new-instance v2, Lcom/htc/sunnyCore/Texture;

    invoke-direct {v2, v0}, Lcom/htc/sunnyCore/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v2, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_0
    return-object v2
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;
    .locals 1
    .parameter "bmp"

    .prologue
    .line 118
    new-instance v0, Lcom/htc/sunnyCore/Texture;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/Texture;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;
    .locals 4
    .parameter "view"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/view/View;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 134
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    const/4 v1, 0x0

    .line 135
    .local v1, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_0

    .line 136
    sget-object v2, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v3, "[createTexture(view)] Can\'t create SBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Lcom/htc/sunnyCore/Texture;

    .end local v1           #texture:Lcom/htc/sunnyCore/Texture;
    invoke-direct {v1}, Lcom/htc/sunnyCore/Texture;-><init>()V

    .line 144
    .restart local v1       #texture:Lcom/htc/sunnyCore/Texture;
    :goto_0
    return-object v1

    .line 140
    :cond_0
    new-instance v1, Lcom/htc/sunnyCore/Texture;

    .end local v1           #texture:Lcom/htc/sunnyCore/Texture;
    invoke-direct {v1, v0}, Lcom/htc/sunnyCore/Texture;-><init>(Lcom/htc/sunnyCore/SBitmap;)V

    .line 141
    .restart local v1       #texture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    goto :goto_0
.end method

.method public static createTexture(Lcom/htc/sunnyCore/SBitmap;)Lcom/htc/sunnyCore/Texture;
    .locals 1
    .parameter "bmp"

    .prologue
    .line 125
    new-instance v0, Lcom/htc/sunnyCore/Texture;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/Texture;-><init>(Lcom/htc/sunnyCore/SBitmap;)V

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/Texture;->mSunnyEnvironment:I

    .line 196
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mSunnyEnvironment:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->CreateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    .line 197
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/Texture;->mIdentifier:Ljava/lang/String;

    .line 201
    iput v1, p0, Lcom/htc/sunnyCore/Texture;->mHeight:I

    .line 202
    iput v1, p0, Lcom/htc/sunnyCore/Texture;->mWidth:I

    .line 213
    sget-object v1, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v1

    .line 214
    :try_start_0
    sget-object v0, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 420
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 421
    return-void
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/sunnyCore/Texture;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mHeight:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/sunnyCore/Texture;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceHeight()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mOriSourceHeight:I

    return v0
.end method

.method public getSourceWidth()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mOriSourceWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 395
    iget v3, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    if-eqz v3, :cond_3

    .line 396
    iget v3, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    invoke-static {v3}, Lcom/htc/sunnyCore/SunnyCore;->DestroyTexture(I)V

    .line 397
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    .line 399
    sget-object v4, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v4

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;"
    :try_start_0
    sget-object v3, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 402
    .local v2, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 403
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 404
    move-object v1, v2

    .line 408
    .end local v2           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 409
    sget-object v3, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 411
    :cond_2
    monitor-exit v4

    .line 413
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;"
    :cond_3
    return-void

    .line 411
    .restart local v1       #remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 260
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "bmp"
    .parameter "bAntialias"

    .prologue
    .line 266
    iget v1, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, sbmp:Lcom/htc/sunnyCore/SBitmap;
    if-eqz p2, :cond_1

    .line 272
    const/16 v1, 0xf

    invoke-static {p1, v1}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;I)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 276
    :goto_0
    if-nez v0, :cond_2

    .line 277
    sget-object v1, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v2, "[setBitmap] Can\'t create SBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_1
    return-void

    .line 274
    :cond_1
    invoke-static {p1}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;)V

    .line 282
    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    goto :goto_1
.end method

.method public setBorder(IIIIII)V
    .locals 7
    .parameter "desX"
    .parameter "desY"
    .parameter "borderWidth"
    .parameter "borderHeight"
    .parameter "thickness"
    .parameter "color"

    .prologue
    .line 307
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v1, "[setBorder] texture handle is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    iget v0, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/htc/sunnyCore/SunnyCore;->Texture_RealizeBorder(IIIIIII)Z

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 360
    iput p1, p0, Lcom/htc/sunnyCore/Texture;->mHeight:I

    .line 361
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "identifier"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/sunnyCore/Texture;->mIdentifier:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setSBitmap(Lcom/htc/sunnyCore/SBitmap;)V
    .locals 1
    .parameter "sbmp"

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;Z)V

    .line 223
    return-void
.end method

.method public setSBitmap(Lcom/htc/sunnyCore/SBitmap;Z)V
    .locals 4
    .parameter "sbmp"
    .parameter "discardBufferOfInputBitma"

    .prologue
    .line 229
    iget v2, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    if-nez v2, :cond_0

    .line 230
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_0
    if-nez p1, :cond_1

    .line 234
    sget-object v2, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v3, "setBitmap NG - SBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunnyCore/SBitmap;->cloneSBitmap()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v1

    .line 240
    .local v1, cloneSBitmap:Lcom/htc/sunnyCore/SBitmap;
    invoke-virtual {v1}, Lcom/htc/sunnyCore/SBitmap;->getBmpId()I

    move-result v0

    .line 241
    .local v0, bitmapHandle:I
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    :cond_2
    sget-object v2, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v3, "setBitmap NG - SunnyBitmap is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Lcom/htc/sunnyCore/SBitmap;->releaseClone()V

    goto :goto_0

    .line 247
    :cond_3
    iget v2, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    invoke-static {v2, v0, p2}, Lcom/htc/sunnyCore/SunnyCore;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    .line 249
    invoke-virtual {v1}, Lcom/htc/sunnyCore/SBitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/Texture;->mHeight:I

    .line 250
    invoke-virtual {v1}, Lcom/htc/sunnyCore/SBitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/Texture;->mWidth:I

    .line 252
    invoke-virtual {v1}, Lcom/htc/sunnyCore/SBitmap;->releaseClone()V

    goto :goto_0
.end method

.method public setSourceHeight(I)V
    .locals 0
    .parameter "sourceHeight"

    .prologue
    .line 374
    iput p1, p0, Lcom/htc/sunnyCore/Texture;->mOriSourceHeight:I

    .line 375
    return-void
.end method

.method public setSourceWidth(I)V
    .locals 0
    .parameter "sourceWidth"

    .prologue
    .line 388
    iput p1, p0, Lcom/htc/sunnyCore/Texture;->mOriSourceWidth:I

    .line 389
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 289
    iget v1, p0, Lcom/htc/sunnyCore/Texture;->mTextureId:I

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    invoke-static {p1}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/view/View;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 294
    .local v0, sbmp:Lcom/htc/sunnyCore/SBitmap;
    if-nez v0, :cond_1

    .line 295
    sget-object v1, Lcom/htc/sunnyCore/Texture;->TAG:Ljava/lang/String;

    const-string v2, "[setView] Can\'t create SBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;)V

    .line 300
    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 353
    iput p1, p0, Lcom/htc/sunnyCore/Texture;->mWidth:I

    .line 354
    return-void
.end method
