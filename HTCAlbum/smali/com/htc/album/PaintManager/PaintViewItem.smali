.class public Lcom/htc/album/PaintManager/PaintViewItem;
.super Ljava/lang/Object;
.source "PaintViewItem.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintable;


# static fields
.field public static final INK_STATE_DIRTY:I = 0x1

.field public static final INK_STATE_DISPLAYED:I = 0x3

.field public static final INK_STATE_LOADED:I = 0x2

.field public static final INK_STATE_LOADING:I = 0x0

.field public static final INK_STATE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mIndex:I

.field private mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

.field private mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

.field private mIsDirty:Z

.field private mIsPrepared:Z

.field private mIsPreparedInkView:Z

.field private mModifyTime:J

.field private mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

.field private mStateInkData:I

.field private mStateInkPaint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "nIndex"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    .line 22
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    .line 23
    iput-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    .line 24
    iput-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    .line 26
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPrepared:Z

    .line 27
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsDirty:Z

    .line 28
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    .line 30
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 31
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 32
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkData:I

    .line 33
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkPaint:I

    .line 34
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPreparedInkView:Z

    .line 38
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    .line 39
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewPort3D;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/PaintViewPort3D;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    .line 40
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    return-wide v0
.end method

.method public getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 140
    const/4 v7, 0x0

    .line 141
    .local v7, byteData:[B
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIII[B)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 152
    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/PaintViewItem;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][PaintViewItem][getInkCacheData]: index: "

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: filep: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: modet: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: files: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: byted: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getStrokeData()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]:......................... "

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    return-object v0
.end method

.method public getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;
    .locals 8

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    .line 204
    const/4 v7, 0x0

    .line 205
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 214
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    return-object v0
.end method

.method public getInkData()[B
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getStrokeData()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getInkPaint()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getModifyTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    return-wide v0
.end method

.method public getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    return-object v0
.end method

.method public getStateInkData()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkData:I

    return v0
.end method

.method public getStateInkPaint()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkPaint:I

    return v0
.end method

.method public isDirtyPaint()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsDirty:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPrepared:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    .line 64
    return-void
.end method

.method public setDirtyPaint(Z)V
    .locals 0
    .parameter "bIsDirty"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsDirty:Z

    .line 85
    return-void
.end method

.method public setFileCacheInfo(ILjava/lang/String;JJ)V
    .locals 2
    .parameter "nDegreeRotated"
    .parameter "szFilePath"
    .parameter "lModifyTime"
    .parameter "lFileSize"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setRotation(F)V

    .line 44
    iput-object p2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    .line 45
    iput-wide p3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    .line 46
    iput-wide p5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    .line 47
    return-void
.end method

.method public setInkData([B)V
    .locals 9
    .parameter "byteData"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIII[B)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v5, v5

    iget v6, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v7, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/cache/InkCacheTask;->updateContent(ILjava/lang/String;JIII[B)V

    goto :goto_0
.end method

.method public setInkPaint(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/htc/album/PaintManager/PaintViewItem;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintManager][setInkPaint]: New: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 188
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v5, v5

    iget v6, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v7, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/cache/InkCacheTask;->updateContent(ILjava/lang/String;JIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPrepared(Z)V
    .locals 0
    .parameter "bIsPrepared"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPrepared:Z

    .line 76
    return-void
.end method

.method public setStateInkData(I)V
    .locals 0
    .parameter "nState"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkData:I

    .line 94
    return-void
.end method

.method public setStateInkPaint(I)V
    .locals 0
    .parameter "nState"

    .prologue
    .line 101
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkPaint:I

    .line 102
    return-void
.end method

.method public setViewPort(Lcom/htc/album/PaintManager/PaintViewPort3D;)V
    .locals 0
    .parameter "paintView"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    .line 72
    return-void
.end method
