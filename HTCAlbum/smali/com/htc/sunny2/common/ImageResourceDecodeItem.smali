.class public Lcom/htc/sunny2/common/ImageResourceDecodeItem;
.super Lcom/htc/sunny2/common/MediaDecodeItem;
.source "ImageResourceDecodeItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageResourceDecodeItem"


# instance fields
.field private mResIdx:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(IILcom/htc/sunnyCore/IMediaData;Landroid/content/res/Resources;)V
    .locals 9
    .parameter "decodeItemIdx"
    .parameter "cacheSet"
    .parameter "mediaData"
    .parameter "resources"

    .prologue
    .line 15
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-interface {p3}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {p3}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p2

    move v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 23
    iput-object p4, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResources:Landroid/content/res/Resources;

    .line 24
    invoke-interface {p3}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageResId()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResIdx:I

    .line 25
    return-void
.end method


# virtual methods
.method public decode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 29
    iget v1, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResIdx:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_2

    .line 30
    :cond_0
    const-string v3, "ImageResourceDecodeItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decode] Resources or idx is invalid, Resources = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", res idx = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResIdx:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 42
    :goto_1
    iput-object v5, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResources:Landroid/content/res/Resources;

    .line 43
    iput v2, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResIdx:I

    .line 44
    return-void

    :cond_1
    move v1, v2

    .line 30
    goto :goto_0

    .line 35
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResIdx:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ImageResourceDecodeItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decode] decode resource fail, mResIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageResourceDecodeItem;->mResIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", decodeItemIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
