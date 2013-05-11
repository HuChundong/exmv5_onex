.class public Lcom/htc/sunny2/frameworks/cache/FileCacheTask;
.super Lcom/htc/sunny2/frameworks/cache/CacheTask;
.source "FileCacheTask.java"


# static fields
.field public static FILE_CACHE_DECODE:I

.field public static FILE_CACHE_ENCODE:I


# instance fields
.field public mCacheBmp:Landroid/graphics/Bitmap;

.field public mCacheFileFolder:Ljava/lang/String;

.field public mCacheFileName:Ljava/lang/String;

.field public mCacheFilePath:Ljava/lang/String;

.field public mCacheType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_DECODE:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 2
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    .line 18
    sget v0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheType:I

    .line 19
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 20
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFilePath:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFileFolder:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFileName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/frameworks/cache/CacheTask;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .locals 8
    .parameter "cacheItem"
    .parameter "bmp"
    .parameter "cacheType"
    .parameter "cachePath"

    .prologue
    .line 39
    iget v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iget-wide v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iget-wide v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;-><init>(ILjava/lang/String;JJI)V

    .line 41
    iput p3, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheType:I

    .line 42
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 43
    iput-object p4, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFilePath:Ljava/lang/String;

    .line 44
    return-void
.end method
