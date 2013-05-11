.class public Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;
.super Ljava/lang/Object;
.source "IteratorFileCacheManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
    }
.end annotation


# static fields
.field public static final CACHE_COLOR_DEPTH_16BIT:I = 0x10

.field public static final CACHE_COLOR_DEPTH_32BIT:I = 0x20

.field public static final CACHE_COLOR_DEPTH_UNKNOWN:I = 0x0

.field public static final CACHE_FILE_EXT:Ljava/lang/String; = ".jpg"

.field public static final CACHE_SIZE_DEFAULT:I = 0x0

.field public static final CACHE_SIZE_NONE:I = -0x1

.field private static final DB_REMOVAL_MAX:I = 0x5

.field private static ITERATOR_BASE_COST:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static SCALADO_BITMAP_COUNT:I = 0x0

.field public static final S_TAG:Ljava/lang/String; = "IteratorFileCacheManager"

.field private static final TAG_PERF_INSERTDB:Ljava/lang/String; = null

.field private static final TAG_PERF_MAKEPATH:Ljava/lang/String; = null

.field private static final TAG_PERF_PULL:Ljava/lang/String; = null

.field private static final TAG_PERF_PUSH:Ljava/lang/String; = null

.field private static final TAG_PERF_REMOVE:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCacheSize:I

.field private mColorDepthSet:Landroid/util/SparseIntArray;

.field private mContext:Landroid/content/Context;

.field private mDecoderHandler:I

.field private mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field private mFileCacheSet:Landroid/util/SparseIntArray;

.field private mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field protected mScreenLarge:I

.field private mTaskLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    .line 974
    const-class v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[pull]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[push]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[remove]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[insertThumbDB]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[makeCacheTaskPath]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_MAKEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 966
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    .line 967
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    .line 970
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    .line 981
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 982
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 983
    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 984
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 985
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 67
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 68
    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 69
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 71
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    .line 73
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "fileCacheSize"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 966
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    .line 967
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    .line 970
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    .line 981
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 982
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 983
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 984
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 985
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 130
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 131
    iput p2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 132
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 134
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->initializeThumbDB()V

    .line 135
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->start()V

    .line 138
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 150
    return-void
.end method

.method public static final GetCacheTaskFactorParam(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 99
    .local v3, screenlarge:I
    :try_start_0
    sget v4, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_PORT:I

    if-eqz v4, :cond_0

    sget v4, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_LAND:I

    if-nez v4, :cond_3

    .line 101
    :cond_0
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 102
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    .local v2, mx:Landroid/util/DisplayMetrics;
    invoke-static {v0, v2}, Lcom/htc/wrap/android/view/HtcWrapDisplay;->getRealMetrics(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    .line 104
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 106
    sget-boolean v4, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GetCacheTaskFactorParam] mx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #mx:Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GetCacheTaskFactorParam]factor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_PORT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_LAND:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_2
    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[IteratorFileCacheManager][noDB]"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_1
    return v3

    .line 110
    :cond_3
    :try_start_1
    sget v4, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_PORT:I

    sget v5, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_LAND:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GetCacheTaskFactorParam] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    const/16 v3, 0x500

    .line 123
    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[IteratorFileCacheManager][noDB]"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[IteratorFileCacheManager][noDB]"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->closeThumnDB()V

    return-void
.end method

.method private addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 11
    .parameter "task"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    if-nez p1, :cond_0

    .line 230
    :goto_0
    return v6

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 173
    .local v3, runningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 174
    .local v2, handler:I
    iput v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 176
    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    .line 178
    iget v6, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    .line 180
    iget-boolean v6, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    if-ne v7, v6, :cond_1

    .line 184
    :cond_1
    iget-boolean v6, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    if-nez v6, :cond_3

    .line 186
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    monitor-enter v8

    .line 216
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 217
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 218
    .local v5, size:I
    if-lez v5, :cond_7

    .line 219
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v5, v6, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    .line 223
    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    iget v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 224
    .local v1, depth:I
    if-lez v1, :cond_8

    .line 225
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v1, v6, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 228
    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v7

    .line 230
    goto :goto_0

    .line 192
    .end local v1           #depth:I
    .end local v5           #size:I
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v4

    .line 193
    .local v4, scaladoBitmapHandle:I
    if-eqz v4, :cond_5

    .line 195
    sget-boolean v6, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "CacheTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "++SCALADO_BITMAP_COUNT [IteratorFileCacheManager][addNewTask]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEndForScaladoBitmap(II)I

    .line 197
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    .line 198
    sget-boolean v6, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "CacheTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--SCALADO_BITMAP_COUNT [IteratorFileCacheManager][addNewTask]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v9, v9, -0x1

    sput v9, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 210
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #scaladoBitmapHandle:I
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    goto/16 :goto_1

    .line 221
    .restart local v5       #size:I
    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v9, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    iput v9, v6, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    goto/16 :goto_2

    .line 228
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 227
    .restart local v1       #depth:I
    .restart local v5       #size:I
    :cond_8
    :try_start_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const/16 v9, 0x10

    iput v9, v6, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method private closeThumnDB()V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method private initializeThumbDB()V
    .locals 3

    .prologue
    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[initializeThumbDB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, tag:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->initCacheMgr(Landroid/content/Context;)V

    .line 836
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "filePath"
    .parameter "cachePath"
    .parameter "cacheSet"
    .parameter "cacheSize"

    .prologue
    .line 864
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v6

    .line 868
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[asynUpdateCache]:"

    invoke-static {v0, v1, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 871
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 828
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v0

    return v0
.end method

.method private updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "fileName"
    .parameter "cachePath"
    .parameter "cacheSet"

    .prologue
    .line 845
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 849
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[asynUpdateCache]:"

    invoke-static {v1, v2, v0}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 852
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method


# virtual methods
.method protected doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 5
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    const/4 v4, -0x1

    .line 361
    const/4 v1, 0x3

    .line 363
    .local v1, nRet:I
    iget-boolean v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    if-nez v2, :cond_2

    .line 365
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 366
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v2, :cond_0

    .line 382
    .end local v1           #nRet:I
    :goto_0
    return v1

    .line 368
    .restart local v1       #nRet:I
    :cond_0
    iget-boolean v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    if-eqz v2, :cond_1

    .line 370
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setUseScaladoBitmap(I)I

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 374
    .local v0, depth:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    .line 375
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v4, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 376
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 377
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 379
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doDecode] Key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v0           #depth:I
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v1

    goto :goto_0
.end method

.method protected doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 12
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    const/4 v3, 0x0

    .line 295
    const/4 v11, 0x3

    .line 298
    .local v11, nRet:I
    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 299
    .local v2, cache:Ljava/lang/String;
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v4, 0xc

    if-ne v0, v4, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".tmp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    :cond_0
    iget-object v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 306
    .local v1, cacheBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->getScaladoBitmapHandleWithoutNew()I

    move-result v5

    .line 308
    .local v5, scaladoBitmapHandle:I
    if-eqz v1, :cond_2

    .line 310
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .end local v5           #scaladoBitmapHandle:I
    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeBegin(Landroid/graphics/Bitmap;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 323
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v0, :cond_3

    .line 326
    .end local v11           #nRet:I
    :goto_1
    return v11

    .line 315
    .restart local v5       #scaladoBitmapHandle:I
    .restart local v11       #nRet:I
    :cond_2
    if-eqz v5, :cond_1

    .line 317
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getScaladoBitmapWidth(I)I

    move-result v9

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getScaladoBitmapHeight(I)I

    move-result v10

    move-object v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeBeginByScaladoBitmap(IZLjava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    goto :goto_0

    .line 326
    .end local v5           #scaladoBitmapHandle:I
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v11

    goto :goto_1
.end method

.method public execute(J)I
    .locals 33
    .parameter "deadLine"

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v2, :cond_1

    .line 390
    const/16 v18, 0x3

    .line 663
    :cond_0
    :goto_0
    return v18

    .line 394
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    move-object/from16 v27, v0

    .line 397
    .local v27, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->release()V

    .line 398
    const/16 v18, 0x2

    goto :goto_0

    .line 401
    .end local v27           #task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 402
    .local v25, start:J
    sub-long v28, p1, v25

    .line 403
    .local v28, ticks:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v2, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v9, 0x1

    .line 404
    .local v9, doDecode:Z
    :goto_1
    const/16 v18, 0x2

    .line 405
    .local v18, nRet:I
    const/16 v17, -0x1

    .line 406
    .local v17, nDecoder:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 408
    .local v15, handler:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    move-object/from16 v27, v0

    .line 410
    .restart local v27       #task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    if-nez v15, :cond_4

    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    if-nez v2, :cond_4

    .line 411
    const/16 v18, 0x3

    goto :goto_0

    .line 403
    .end local v9           #doDecode:Z
    .end local v15           #handler:I
    .end local v17           #nDecoder:I
    .end local v18           #nRet:I
    .end local v27           #task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 413
    .restart local v9       #doDecode:Z
    .restart local v15       #handler:I
    .restart local v17       #nDecoder:I
    .restart local v18       #nRet:I
    .restart local v27       #task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    :cond_4
    const/16 v22, 0x0

    .line 416
    .local v22, skiaBitmap:Landroid/graphics/Bitmap;
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_5

    sget-wide v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    cmp-long v2, v28, v2

    if-ltz v2, :cond_e

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_e

    .line 418
    const/16 v18, 0x2

    .line 420
    if-eqz v9, :cond_d

    .line 422
    const/4 v2, 0x1

    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    if-ne v2, v3, :cond_c

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v0

    .line 426
    .local v20, options:Landroid/graphics/BitmapFactory$Options;
    if-nez v20, :cond_6

    .line 427
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 428
    .restart local v20       #options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 429
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 431
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 432
    const/high16 v2, 0x1

    new-array v2, v2, [B

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 433
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 436
    :cond_6
    move-object/from16 v0, v27

    instance-of v2, v0, Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_a

    move-object/from16 v16, v27

    .line 437
    check-cast v16, Lcom/htc/sunny2/common/CacheItem;

    .line 438
    .local v16, item:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    invoke-static {v2, v3}, Lcom/htc/sunny2/common/CacheItem;->getCacheBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 439
    .local v8, bmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    iput-object v8, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 446
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v16           #item:Lcom/htc/sunny2/common/CacheItem;
    :goto_3
    :try_start_0
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 447
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v22

    if-eq v2, v0, :cond_7

    .line 448
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/sunny2/common/CacheItem;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 452
    :cond_7
    if-nez v22, :cond_9

    .line 453
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t decode from inBitmap, (null), file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_8
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 466
    :cond_9
    :goto_4
    const/16 v17, 0x1

    .line 480
    .end local v20           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_5
    packed-switch v17, :pswitch_data_0

    .line 491
    const/16 v18, 0x3

    .line 495
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v28, p1, v2

    goto/16 :goto_2

    .line 442
    .restart local v20       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 458
    :catch_0
    move-exception v10

    .line 459
    .local v10, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/sunny2/common/CacheItem;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 462
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t decode from inBitmap, (exception), file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_b
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v22

    goto :goto_4

    .line 470
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .end local v20           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v15, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v17

    goto :goto_5

    .line 475
    :cond_d
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v15, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeIterate(IJ)I

    move-result v17

    goto :goto_5

    .line 484
    :pswitch_0
    const/16 v18, 0x4

    .line 485
    goto :goto_6

    .line 487
    :pswitch_1
    const/16 v18, 0x2

    .line 488
    goto :goto_6

    .line 504
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v18

    if-eq v0, v2, :cond_11

    .line 506
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 508
    if-eqz v9, :cond_19

    .line 510
    const/16 v21, 0x0

    .line 511
    .local v21, scaladoBitmapHandle:I
    const/4 v8, 0x0

    .line 513
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    if-ne v2, v3, :cond_12

    .line 514
    move-object/from16 v8, v22

    .line 532
    :cond_f
    :goto_7
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_17

    .line 536
    const/4 v2, 0x1

    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    if-ne v2, v3, :cond_15

    .line 538
    move-object/from16 v0, v27

    iput-object v8, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 558
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_11

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v27

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    .line 652
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v21           #scaladoBitmapHandle:I
    :cond_11
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 653
    .local v11, end:J
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    sub-long v2, v11, p1

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 655
    sub-long v23, v11, v25

    .line 656
    .local v23, spent:J
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[execute] Time over loading > 5ms...\n  Total execution time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n doDecode  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Deadline = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n End time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    .end local v11           #end:J
    .end local v23           #spent:J
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    .restart local v21       #scaladoBitmapHandle:I
    :cond_12
    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    if-nez v2, :cond_13

    .line 518
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_7

    .line 524
    :cond_13
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v21

    .line 525
    if-eqz v21, :cond_f

    .line 527
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string v2, "CacheTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++SCALADO_BITMAP_COUNT [IteratorFileCacheManager][execute]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_14
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v15, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEndForScaladoBitmap(II)I

    goto/16 :goto_7

    .line 540
    :cond_15
    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    if-nez v2, :cond_16

    .line 542
    move-object/from16 v0, v27

    iput-object v8, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 546
    :cond_16
    if-eqz v21, :cond_10

    .line 548
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->getScaladoBitmapHandle()I

    move-result v3

    move/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->swapScaladoBitmap(II)V

    .line 549
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    .line 550
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string v2, "CacheTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--SCALADO_BITMAP_COUNT [IteratorFileCacheManager][execute]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 565
    :cond_17
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_18

    .line 567
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 571
    :cond_18
    if-eqz v21, :cond_11

    .line 573
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    .line 574
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "CacheTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--SCALADO_BITMAP_COUNT [IteratorFileCacheManager][execute]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 580
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v21           #scaladoBitmapHandle:I
    :cond_19
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    .line 581
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_11

    .line 590
    :try_start_1
    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v2, :cond_1c

    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1c

    .line 592
    new-instance v14, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 596
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 599
    :cond_1a
    const/4 v14, 0x0

    .line 601
    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v19, v2, 0x4

    .line 603
    .local v19, nRotate:I
    if-nez v19, :cond_1d

    .line 605
    const/16 v19, 0x1

    .line 621
    :cond_1b
    :goto_a
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v13, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 622
    .local v13, exif:Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {v13}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 625
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_1c

    .line 627
    const-string v2, "Orientation"

    const/4 v3, -0x1

    invoke-virtual {v13, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v30

    .line 628
    .local v30, x:I
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DMCCache][rotate]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DMCCache][rotate][filepath]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    .end local v13           #exif:Landroid/media/ExifInterface;
    .end local v14           #f:Ljava/io/File;
    .end local v19           #nRotate:I
    .end local v30           #x:I
    :cond_1c
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_11

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v27

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 607
    .restart local v14       #f:Ljava/io/File;
    .restart local v19       #nRotate:I
    :cond_1d
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1e

    .line 609
    const/16 v19, 0x6

    goto/16 :goto_a

    .line 611
    :cond_1e
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_1f

    .line 613
    const/16 v19, 0x3

    goto/16 :goto_a

    .line 615
    :cond_1f
    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_1b

    .line 617
    const/16 v19, 0x8

    goto/16 :goto_a

    .line 633
    .end local v14           #f:Ljava/io/File;
    .end local v19           #nRotate:I
    :catch_1
    move-exception v10

    .line 635
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DMCCache][Rename]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    .line 638
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheTask()Lcom/htc/sunny2/frameworks/cache/CacheTask;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    return-object v0
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    return v0
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1
    .parameter "task"

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;
    .locals 1
    .parameter "task"
    .parameter "useService"

    .prologue
    .line 815
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 818
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMediaMounted()V
    .locals 0

    .prologue
    .line 806
    return-void
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 4
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 337
    const/4 v1, 0x3

    .line 339
    .local v1, nRet:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 341
    :cond_0
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Pull by empty filename"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v1           #nRet:I
    :cond_1
    :goto_0
    return v1

    .line 345
    .restart local v1       #nRet:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 349
    sget v2, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_DECODE:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 350
    iget-boolean v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, p1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, f:Ljava/io/File;
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto :goto_0
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 6
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 241
    const/4 v1, 0x3

    .line 243
    .local v1, nRet:I
    if-nez p1, :cond_1

    .line 245
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Pull by empty cahce task."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v1           #nRet:I
    :cond_0
    :goto_0
    return v1

    .line 249
    .restart local v1       #nRet:I
    :cond_1
    sget v3, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 251
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->getScaladoBitmapHandleWithoutNew()I

    move-result v3

    if-nez v3, :cond_2

    .line 253
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[push]task.mCacheBmp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", task.mScaladoBitmapHandle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->getScaladoBitmapHandleWithoutNew()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 258
    .local v2, noSpace:Z
    :goto_1
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_5

    .line 260
    :cond_3
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[push] Error caused by mFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or No space = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v2           #noSpace:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 264
    .restart local v2       #noSpace:Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 268
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, file:Ljava/io/File;
    iget v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v3, :cond_8

    iget v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_8

    .line 275
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .restart local v0       #file:Ljava/io/File;
    :goto_2
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 285
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    :cond_6
    sget-boolean v3, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 288
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[push] CachePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto/16 :goto_0

    .line 279
    :cond_8
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_2
.end method

.method public release()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 764
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] Release now..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const-string v1, ""

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(Ljava/lang/String;JJI)V

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    .line 772
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->deInitCacheMgr(Landroid/content/Context;)V

    .line 775
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->quit()Z

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 798
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 800
    iput-object v8, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 802
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] --"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void

    .line 780
    :catch_0
    move-exception v7

    .line 782
    .local v7, ex:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[release] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 5
    .parameter "task"

    .prologue
    .line 746
    if-nez p1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, cachePath:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 751
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[remove] Cache path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, file:Ljava/io/File;
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/String;JJJ)V
    .locals 14
    .parameter "filePath"
    .parameter "dateModified"
    .parameter "dateTaken"
    .parameter "fileSize"

    .prologue
    .line 685
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v1, :cond_0

    .line 727
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 690
    .local v0, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p4

    if-eqz v1, :cond_1

    move-wide/from16 v3, p4

    .line 691
    .local v3, date:J
    :goto_1
    const/16 v1, 0x65

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 692
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 694
    const/16 v6, 0xa

    const/4 v12, 0x0

    move-object v5, v0

    move-object v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p6

    invoke-virtual/range {v5 .. v12}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 695
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 697
    const/16 v1, 0xb

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 698
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 701
    const/16 v1, 0xd

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 702
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 704
    const/16 v1, 0xe

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 705
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 712
    iget v13, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 714
    .local v13, tmp:I
    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 715
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 716
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 718
    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 719
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 720
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 721
    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 722
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 723
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 724
    iput v13, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    goto :goto_0

    .end local v3           #date:J
    .end local v13           #tmp:I
    :cond_1
    move-wide/from16 v3, p2

    .line 690
    goto :goto_1
.end method

.method public removeDMCCache(Ljava/lang/String;JJ)V
    .locals 8
    .parameter "filePath"
    .parameter "dateModified"
    .parameter "fileSize"

    .prologue
    .line 731
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    .line 732
    .local v0, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const/16 v1, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 733
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 734
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 735
    return-void
.end method

.method public declared-synchronized switchCacheSet(III)V
    .locals 2
    .parameter "key"
    .parameter "size"
    .parameter "depth"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 155
    if-lez p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 161
    if-lez p3, :cond_1

    .line 162
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_1
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
