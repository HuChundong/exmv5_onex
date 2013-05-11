.class public Lcom/htc/sunny2/frameworks/cache/CacheTask;
.super Ljava/lang/Object;
.source "CacheTask.java"


# static fields
.field public static final FLAG_ENABLE_PHOTO_DMC:I = 0x1

.field public static SCALADO_BITMAP_COUNT:I

.field public static THUMBNAIL_VERSION:I


# instance fields
.field public mCacheBmp:Landroid/graphics/Bitmap;

.field public mCacheOutputFolder:Ljava/lang/String;

.field public mCacheOutputName:Ljava/lang/String;

.field public mCacheOutputPath:Ljava/lang/String;

.field public mCacheSet:I

.field public mCacheType:I

.field public mColorDepth:I

.field public mCreateTime:J

.field public mExtra:Ljava/lang/Object;

.field public mFactor:I

.field public mFileCacheSize:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mFlag:I

.field public mIdentifier:Ljava/lang/String;

.field public mIsSkiaDecodeBitmap:Z

.field public mModifyTime:J

.field public mOrientation:I

.field public mPosition:I

.field private mScaladoBitmapHandle:I

.field public mUseCacheService:Z

.field public mUseScaladoBitmap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x64

    sput v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->THUMBNAIL_VERSION:I

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 21
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    .line 23
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    .line 26
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 27
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    .line 28
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 31
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 32
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 33
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 34
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 36
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 42
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 48
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 52
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 57
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCreateTime:J

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 9
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 74
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJIZ)V
    .locals 5
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "useService"

    .prologue
    const/4 v0, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 21
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    .line 23
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    .line 26
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 27
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    .line 28
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 31
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 32
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 33
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 34
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 36
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 42
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 48
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 52
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 57
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCreateTime:J

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCreateTime:J

    .line 80
    invoke-virtual/range {p0 .. p8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 69
    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    .line 70
    return-void
.end method


# virtual methods
.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    return v0
.end method

.method public getScaladoBitmapHandle()I
    .locals 3

    .prologue
    .line 148
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    .line 151
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++SCALADO_BITMAP_COUNT [CacheTask][getScaladoBitmapHandle]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    if-nez v0, :cond_1

    .line 155
    const-string v0, "CacheTask"

    const-string v1, "[HTCAlbum][CacheTask][getScaladoBitmapHandle]mScaladoBitmapHandle is still 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    return v0
.end method

.method public getScaladoBitmapHandleWithoutNew()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 133
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    .line 136
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--SCALADO_BITMAP_COUNT [CacheTask][release]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    .line 139
    :cond_1
    return-void
.end method

.method public setFactor(I)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 85
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContent(ILjava/lang/String;JJI)V
    .locals 9
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 99
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 100
    return-void
.end method

.method public updateContent(ILjava/lang/String;JJIZ)V
    .locals 1
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "useService"

    .prologue
    .line 105
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 106
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 107
    iput-wide p3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 108
    iput-wide p5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 109
    iput p7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 110
    iput-boolean p8, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 112
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 115
    return-void
.end method
