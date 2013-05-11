.class public Lcom/htc/sunny2/common/IterationDecodeTask;
.super Lcom/htc/sunny2/common/IterationTaskGallery;
.source "IterationDecodeTask.java"


# static fields
.field private static final DEFAULT_TIMELIMITS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "IterationDecodeTask"


# instance fields
.field private mColorDepth:I

.field private mDecodeFlags:I

.field private mDecodeWebp:Z

.field private mDecodeWebpBmp:Landroid/graphics/Bitmap;

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;-><init>()V

    .line 20
    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    .line 22
    iput v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    .line 26
    iput-boolean v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 30
    iput v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mID:I

    .line 31
    return-void
.end method

.method private decodeWebp()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 211
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 215
    .local v4, sourceType:I
    packed-switch v4, :pswitch_data_0

    .line 263
    :pswitch_0
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] Unknown source type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    .line 268
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    if-ne v5, v6, :cond_4

    .line 269
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 275
    :cond_0
    :goto_1
    return v8

    .line 219
    :pswitch_1
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 220
    .local v0, filePath:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 223
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 224
    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 225
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 227
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] FilePath is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v0           #filePath:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v5, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 235
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_2

    .line 236
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 238
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 239
    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 240
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 243
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] ParcelFileDescriptor is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v5, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 250
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 251
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 252
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 253
    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 254
    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 255
    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 258
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] MediaData InputStream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    .end local v1           #is:Ljava/io/InputStream;
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v7, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v7, v7, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    invoke-static {v5, v6, v7}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenterByWidthHeight(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V
    .locals 9
    .parameter "options"

    .prologue
    const-wide/high16 v7, 0x3fe0

    .line 280
    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v5, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 281
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 282
    .local v3, rx:F
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 283
    .local v4, ry:F
    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 285
    .local v2, ratio:F
    :goto_1
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v1, v5

    .line 286
    .local v1, decodeSizeW:I
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 287
    .local v0, decodeSizeH:I
    invoke-static {p1, v1, v0}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 288
    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    return-void

    .line 280
    .end local v0           #decodeSizeH:I
    .end local v1           #decodeSizeW:I
    .end local v2           #ratio:F
    .end local v3           #rx:F
    .end local v4           #ry:F
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 283
    .restart local v3       #rx:F
    .restart local v4       #ry:F
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public getDecodeFlag()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    .line 121
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 128
    return-void
.end method

.method public onEnd()V
    .locals 8

    .prologue
    .line 132
    iget-boolean v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_1

    .line 138
    sget-boolean v2, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] WebP FilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 141
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 142
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 143
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIsLoadFromExif:Z

    .line 177
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    .line 178
    sget-boolean v2, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 179
    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] Total spent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    return-void

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandle()I

    move-result v1

    .line 153
    .local v1, scaladoBitmapHandle:I
    sget-boolean v2, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] FilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scaladoBitmapHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_4
    if-eqz v1, :cond_5

    .line 156
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutScaladoBitmapHandle(I)V

    .line 158
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 159
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 160
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->isLoadFromExif()Z

    move-result v3

    iput-boolean v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIsLoadFromExif:Z

    goto/16 :goto_0

    .line 165
    .end local v1           #scaladoBitmapHandle:I
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_1

    .line 167
    sget-boolean v2, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] FilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_7
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 170
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 171
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 172
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->isLoadFromExif()Z

    move-result v3

    iput-boolean v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIsLoadFromExif:Z

    goto/16 :goto_0
.end method

.method public onIterate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v1, :cond_0

    .line 36
    const-string v1, "IterationDecodeTask"

    const-string v2, "[IterationDecodeTask][onIterate] CacheItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return v0

    .line 40
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationDecodeTask;->decodeWebp()Z

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] CacheItem is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    .line 57
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const-string v4, "image/webp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 61
    iget v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const-string v4, "image/mpo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v13, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 77
    .local v13, sourceType:I
    packed-switch v13, :pswitch_data_0

    .line 113
    :pswitch_0
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] Unknown source type"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 82
    .local v1, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 83
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v7, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    goto :goto_0

    .line 86
    :cond_3
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] FilePath is empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 94
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 95
    .restart local v2       #mimeType:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 96
    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v8, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v10, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move-object v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    goto/16 :goto_0

    .line 98
    :cond_4
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] ParcelFileDescriptor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v7, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 105
    .local v7, is:Ljava/io/InputStream;
    if-eqz v7, :cond_5

    .line 106
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v10, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v12, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move v8, v3

    invoke-virtual/range {v6 .. v12}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    goto/16 :goto_0

    .line 108
    :cond_5
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] MediaData InputStream is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    .line 185
    iput-boolean v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 187
    iput v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    .line 190
    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;->release()V

    .line 191
    return-void
.end method

.method public setColorDepth(I)V
    .locals 0
    .parameter "requiredColorDepth"

    .prologue
    .line 202
    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    .line 203
    return-void
.end method

.method public setDecodeFlag(I)V
    .locals 0
    .parameter "decodeFlag"

    .prologue
    .line 194
    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 195
    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "itemIndex"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V

    .line 207
    return-void
.end method
