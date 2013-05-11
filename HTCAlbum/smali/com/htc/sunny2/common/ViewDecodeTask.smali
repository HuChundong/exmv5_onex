.class public Lcom/htc/sunny2/common/ViewDecodeTask;
.super Lcom/htc/sunny2/common/IterationTaskGallery;
.source "ViewDecodeTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewDecodeTask"


# instance fields
.field private mBeginTimeMillis:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIdentifier:Ljava/lang/String;

.field private mMediaData:Lcom/htc/sunnyCore/IMediaData;

.field private mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

.field private mView:Landroid/view/View;

.field private mViewId:Ljava/lang/String;

.field private mViewResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    .line 17
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    .line 19
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    .line 20
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewResId:I

    .line 22
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mID:I

    .line 27
    return-void
.end method

.method private printDebugLog()V
    .locals 10

    .prologue
    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    .line 166
    .local v4, mediaData:Lcom/htc/sunnyCore/IMediaData;
    instance-of v7, v4, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v7, :cond_0

    .line 167
    move-object v0, v4

    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    move-object v5, v0

    .line 168
    .local v5, mediaDataFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, displayName:Ljava/lang/String;
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, dateName:Ljava/lang/String;
    const-string v7, "ViewDecodeTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[printDebugLog] DisplayName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DateName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v6, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    .line 173
    .local v6, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v6, :cond_0

    .line 174
    const-string v7, "ViewDecodeTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[printDebugLog] View identifier "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1           #dateName:Ljava/lang/String;
    .end local v2           #displayName:Ljava/lang/String;
    .end local v4           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    .end local v5           #mediaDataFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    .end local v6           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v3

    .line 178
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "ViewDecodeTask"

    const-string v8, "[printDebugLog]"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-object v0
.end method

.method public getResultBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 125
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    return-object v0
.end method

.method public getViewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewResId()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewResId:I

    return v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/sunny2/common/ViewDecodeTask;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "ViewDecodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCancel] MediaItem identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 6

    .prologue
    .line 98
    sget-boolean v0, Lcom/htc/sunny2/common/ViewDecodeTask;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "ViewDecodeTask"

    const-string v1, "[onEnd] Bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const-string v0, "ViewDecodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEnd] MediaItem identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "ViewDecodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEnd] Total spend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    return-void
.end method

.method public onIterate()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 31
    iget-object v3, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    .line 32
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 33
    const-string v5, "ViewDecodeTask"

    const-string v6, "[onIterate] view is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return v7

    .line 37
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 38
    .local v4, width:I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 39
    .local v2, height:I
    if-lt v4, v5, :cond_1

    if-ge v2, v5, :cond_2

    .line 40
    :cond_1
    const-string v5, "ViewDecodeTask"

    const-string v6, "[onIterate] View width or height < 1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {p0}, Lcom/htc/sunny2/common/ViewDecodeTask;->printDebugLog()V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 45
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 46
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 58
    iput-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 48
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_5

    .line 49
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1
.end method

.method public onSetup()V
    .locals 7

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    .line 65
    iget-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    .line 66
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    .line 67
    .local v2, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 68
    :cond_0
    const-string v5, "ViewDecodeTask"

    const-string v6, "[onSetup] MediaData or Prototype is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    .line 73
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    .line 75
    :cond_2
    invoke-interface {v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 79
    .local v3, spendTime:J
    const/4 v5, 0x0

    invoke-interface {v2, v1, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    sub-long/2addr v5, v3

    goto :goto_0

    .line 83
    .end local v3           #spendTime:J
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ViewDecodeTask"

    const-string v6, "[onSetup]"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_0
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    .line 152
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    .line 153
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    .line 154
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewResId:I

    .line 156
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    .line 158
    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;->release()V

    .line 159
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "ViewDecodeTask"

    const-string v1, "[setBitmap] Result bitmap is not null. Recycled result bitmap."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    return-void
.end method

.method public setMediaData(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 0
    .parameter "mediaData"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    .line 108
    return-void
.end method

.method public setPrototype(Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;)V
    .locals 0
    .parameter "prototype"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    .line 112
    return-void
.end method
