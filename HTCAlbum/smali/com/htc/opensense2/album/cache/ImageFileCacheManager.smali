.class public Lcom/htc/opensense2/album/cache/ImageFileCacheManager;
.super Ljava/lang/Object;
.source "ImageFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;
    }
.end annotation


# static fields
.field private static final DB_REMOVAL_MAX:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static MIN_SPACE_DIV_BLOCK_SIZE:D = 0.0

.field private static final STORAGE_MIN_SPACE:J = 0x100000L

.field private static final TAG_PERF_INSERTDB:Ljava/lang/String;

.field private static final TAG_PERF_PULL:Ljava/lang/String;

.field private static final TAG_PERF_PUSH:Ljava/lang/String;

.field private static final TAG_PERF_REMOVE:Ljava/lang/String;


# instance fields
.field private mCacheSize:I

.field private mContext:Landroid/content/Context;

.field private mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

.field private mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

.field private mExternalStorageFolder:Ljava/lang/String;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPhoneStorageFolder:Ljava/lang/String;

.field private mPhoneStorageReady:Z

.field private mScreenLarge:I

.field private mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 228
    const-wide/high16 v0, -0x4010

    sput-wide v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    .line 556
    const-class v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[pull]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[push]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[remove]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[insertThumbDB]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "fileCacheSize"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-boolean v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mPhoneStorageReady:Z

    .line 565
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2, v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 566
    iput-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 567
    iput-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 568
    iput-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mContext:Landroid/content/Context;

    .line 569
    iput v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mScreenLarge:I

    .line 570
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mCacheSize:I

    .line 42
    iput-object p1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mCacheSize:I

    .line 44
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    .line 46
    invoke-static {v5}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mPhoneStorageReady:Z

    .line 48
    invoke-direct {p0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->initializeThumbDB()V

    .line 49
    new-instance v2, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;-><init>(Lcom/htc/opensense2/album/cache/ImageFileCacheManager;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    .line 50
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;->start()V

    .line 52
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 53
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 54
    .local v1, ptSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 55
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mScreenLarge:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/album/cache/ImageFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/cache/ImageFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense2/album/cache/ImageFileCacheManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->closeThumnDB()V

    return-void
.end method

.method private chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 224
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    goto :goto_0
.end method

.method private closeThumnDB()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    sget-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "closeThumnDB: mDBHelperExternal = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", mDBHelperPhone = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->close()V

    .line 295
    :cond_0
    iput-object v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 297
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->close()V

    .line 301
    :cond_1
    iput-object v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 302
    return-void
.end method

.method private initializeThumbDB()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[initializeThumbDB]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, tag:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, file:Ljava/io/File;
    invoke-static {v0, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 276
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 277
    .local v2, vid:I
    new-instance v3, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DBExternalThumb-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 280
    .end local v0           #file:Ljava/io/File;
    .end local v2           #vid:I
    :cond_1
    invoke-static {v7}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v0       #file:Ljava/io/File;
    invoke-static {v0, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_2
    new-instance v3, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mContext:Landroid/content/Context;

    const-string v5, "DBPhoneThumb"

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 287
    .end local v0           #file:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .parameter "filePath"
    .parameter "cachePath"
    .parameter "cacheSet"

    .prologue
    .line 343
    sget-boolean v12, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 344
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] insert record="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    const/4 v6, 0x0

    .line 348
    .local v6, dbhelper:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;
    invoke-static/range {p1 .. p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 349
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 353
    :goto_0
    if-nez v6, :cond_2

    .line 354
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Not support path. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_1
    return-void

    .line 351
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {v6}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 360
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v12

    if-nez v12, :cond_3

    .line 361
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] database closed. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_3
    const/4 v2, 0x0

    .line 367
    .local v2, cacheFull:Z
    const/4 v11, 0x0

    .line 368
    .local v11, recordCount:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT COUNT(_data) FROM thumbnails WHERE type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 369
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_5

    .line 372
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 374
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 375
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mCacheSize:I

    if-lt v11, v12, :cond_a

    const/4 v2, 0x1

    .line 376
    :goto_2
    sget-boolean v12, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v12, :cond_4

    .line 377
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Current table size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mCacheSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_5
    :goto_3
    if-eqz v2, :cond_c

    .line 394
    sget-boolean v12, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v12, :cond_6

    .line 395
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Cache table full with size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mCacheSize:I

    sub-int v12, v11, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 398
    .local v7, diff:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT _data FROM thumbnails WHERE cacheSet="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ORDER BY date_modified LIMIT ?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_c

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, count:I
    :goto_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x5

    if-ge v3, v12, :cond_b

    .line 408
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 412
    sget-boolean v12, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v12, :cond_7

    .line 413
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Remove cache, path = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_7
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v9, file:Ljava/io/File;
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 417
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DELETE FROM thumbnails WHERE _data=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    .end local v9           #file:Ljava/io/File;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 423
    goto :goto_4

    .line 375
    .end local v3           #count:I
    .end local v7           #diff:I
    .end local v10           #path:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 380
    :catch_0
    move-exception v8

    .line 382
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Exception during check cache table full, Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    const/4 v2, 0x0

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v12

    .line 431
    .restart local v3       #count:I
    .restart local v7       #diff:I
    :cond_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 439
    .end local v3           #count:I
    .end local v7           #diff:I
    :cond_c
    :goto_5
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DELETE FROM thumbnails WHERE _data=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 449
    :goto_6
    :try_start_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v4, cv:Landroid/content/ContentValues;
    const-string v12, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v4, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v12, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v12, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    const-string v12, "thumbnails"

    const-string v13, "type"

    invoke-virtual {v5, v12, v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 461
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 425
    .end local v4           #cv:Landroid/content/ContentValues;
    .restart local v3       #count:I
    .restart local v7       #diff:I
    :catch_1
    move-exception v8

    .line 427
    .restart local v8       #ex:Ljava/lang/Exception;
    :try_start_5
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Exception during delete oldest cache, Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 431
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v12

    .line 441
    .end local v3           #count:I
    .end local v7           #diff:I
    :catch_2
    move-exception v8

    .line 443
    .restart local v8       #ex:Ljava/lang/Exception;
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Delete record before insert, cachePath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 455
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 457
    .restart local v8       #ex:Ljava/lang/Exception;
    :try_start_6
    sget-object v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Exception during updating new record, Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 461
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v12

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v12
.end method

.method private isStorageSpaceAvailable()Z
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 232
    const/4 v0, 0x0

    .line 235
    .local v0, available:Z
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, path:Ljava/lang/String;
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 237
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    .line 238
    .local v4, nAvailableBlock:I
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    .line 239
    .local v5, nBlockSize:I
    mul-int v10, v4, v5

    int-to-long v2, v10

    .line 241
    .local v2, lFreeSpace:J
    sget-boolean v10, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 243
    sget-object v10, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "[isStorageSpaceAvailable] Path = "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    const/4 v12, 0x2

    const-string v13, ", Storage threshold = "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-wide/32 v13, 0x100000

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, ", AvailableBlocks = "

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, ", BlockSize = "

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, ", Free Space = "

    aput-object v13, v11, v12

    const/16 v12, 0x9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_0
    sget-wide v10, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 250
    if-lez v5, :cond_3

    const-wide/32 v10, 0x100000

    int-to-long v12, v5

    div-long/2addr v10, v12

    long-to-double v10, v10

    :goto_0
    sput-wide v10, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    .line 253
    :cond_1
    int-to-double v10, v4

    sget-wide v12, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_4

    move v0, v8

    .line 261
    .end local v2           #lFreeSpace:J
    .end local v4           #nAvailableBlock:I
    .end local v5           #nBlockSize:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #stat:Landroid/os/StatFs;
    :goto_1
    sget-boolean v8, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v8, :cond_2

    if-nez v0, :cond_2

    .line 262
    sget-object v8, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[isStorageSpaceAvailable] Storage space is less than 1M"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    return v0

    .line 250
    .restart local v2       #lFreeSpace:J
    .restart local v4       #nAvailableBlock:I
    .restart local v5       #nBlockSize:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #stat:Landroid/os/StatFs;
    :cond_3
    const-wide v10, 0x41dfffffffc00000L

    goto :goto_0

    :cond_4
    move v0, v9

    .line 253
    goto :goto_1

    .line 255
    .end local v2           #lFreeSpace:J
    .end local v4           #nAvailableBlock:I
    .end local v5           #nBlockSize:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 257
    .local v1, ex:Ljava/lang/Exception;
    sget-object v8, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[externalStorageChecker] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .parameter "factor"

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, hash:Ljava/lang/String;
    const-string v1, "%d-%08X-%d-%d.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "fileName"
    .parameter "cacheName"
    .parameter "type"

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, dbhelper:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    .line 311
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 312
    sget-object v4, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not support path. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_1
    return-void

    .line 308
    :cond_1
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 318
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 319
    sget-object v4, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_3
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    const-string v4, "thumbnails"

    const-string v5, "_data=? and type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 329
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 331
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "update access time fail"

    invoke-static {v4, v5, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method


# virtual methods
.method protected onMediaMounted()V
    .locals 5

    .prologue
    .line 206
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 209
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->close()V

    .line 210
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, vid:I
    new-instance v1, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBExternalThumb-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 216
    .end local v0           #vid:I
    :cond_0
    return-void

    .line 213
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pull(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 115
    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Pull by empty filename"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v7, 0x0

    .line 155
    :goto_0
    return-object v7

    .line 119
    :cond_0
    iget v6, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mScreenLarge:I

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v6}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, cacheName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, rootFolder:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v9, file:Ljava/io/File;
    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 127
    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    const/4 v7, 0x0

    goto :goto_0

    .line 131
    :cond_2
    const/4 v7, 0x0

    .line 134
    .local v7, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, path:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v10, v1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 138
    if-nez v7, :cond_3

    .line 140
    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[pull] Unable to decode file cache, delete it now..., Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/4 v7, 0x0

    .line 152
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 148
    .restart local v7       #bmp:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    if-eqz v1, :cond_4

    .line 149
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    const/4 v2, 0x3

    new-instance v3, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p5

    invoke-direct {v3, v4, p1, v5, v0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;-><init>(Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v10           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z
    .locals 12
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .parameter "bmp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->isStorageSpaceAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 102
    :goto_0
    return v1

    .line 69
    :cond_0
    iget v6, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mScreenLarge:I

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v6}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, cacheName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 73
    .local v11, rootFolder:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v9, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v10, fs:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    .line 81
    .local v7, bret:Z
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 83
    if-eqz v7, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    const/4 v2, 0x2

    new-instance v3, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p5

    invoke-direct {v3, v4, p1, v5, v0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;-><init>(Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 94
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "create cache fail. ("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, ") "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    const/4 v1, 0x0

    .line 99
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v7           #bret:Z
    .end local v9           #file:Ljava/io/File;
    .end local v10           #fs:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    sget-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] ++"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;->quit()Z

    .line 187
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    .line 201
    iput-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mContext:Landroid/content/Context;

    .line 202
    sget-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] --"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public remove(Ljava/lang/String;JII)V
    .locals 9
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v5, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->mScreenLarge:I

    move-object v0, p1

    move-wide v1, p2

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, cacheName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, rootFolder:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v7, file:Ljava/io/File;
    sget-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method
