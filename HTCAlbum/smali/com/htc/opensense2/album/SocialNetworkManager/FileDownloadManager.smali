.class public final Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;
.super Ljava/lang/Object;
.source "FileDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileDownloadManager"

.field public static final MAX_SIZE_FILECACHE:I

.field private static final MAX_SIZE_FILECACHE_MB:[I

.field private static mCacheManager:Lcom/htc/opensense/cache/CacheManager;

.field private static mReferenceCount:I

.field private static mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 19
    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->MAX_SIZE_FILECACHE_MB:[I

    .line 24
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->MAX_SIZE_FILECACHE_MB:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->MAX_SIZE_FILECACHE:I

    return-void

    .line 23
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic access$000()Lcom/htc/opensense/cache/CacheManager;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    return-object v0
.end method

.method public static clearDownloadRequest()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->doClear()V

    goto :goto_0
.end method

.method public static destroyInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    sget v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    .line 55
    const-string v1, "FileDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FileDownloadManager][destroyInstance]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    if-gtz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    sput v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    .line 59
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "FileDownloadManager"

    const-string v2, "[HTCAlbum][FileDownloadManager][destroyInstance]: release..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/CacheManager;->release()V

    .line 65
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->doStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    sput-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 73
    sput-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    .line 76
    :cond_0
    return-void

    .line 68
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FileDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FileDownloadManager][destroyInstance]: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/htc/opensense/cache/CacheManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, nCacheDir:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v2

    sput-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 35
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    sget v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->MAX_SIZE_FILECACHE:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V

    .line 37
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    invoke-direct {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;-><init>()V

    sput-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    .line 38
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->start()V

    .line 40
    const-string v2, "FileDownloadManager"

    const-string v3, "[HTCAlbum][FileDownloadManager][instance]: new... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #nCacheDir:Ljava/io/File;
    :cond_0
    :goto_0
    sget v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    .line 49
    const-string v2, "FileDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FileDownloadManager][instance]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mReferenceCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    return-object v2

    .line 42
    .restart local v1       #nCacheDir:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 45
    const-string v2, "FileDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FileDownloadManager][instance]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopDownloadRequest(I)V
    .locals 1
    .parameter "nTaskId"

    .prologue
    .line 79
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->mThreadCancelTask:Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;

    invoke-virtual {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->postStopTask(I)V

    goto :goto_0
.end method
