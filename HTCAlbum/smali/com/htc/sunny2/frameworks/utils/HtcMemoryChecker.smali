.class public Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;
.super Ljava/util/TimerTask;
.source "HtcMemoryChecker.java"


# static fields
.field private static final EXTERNAL_MEMORY_THRESHOLD:J = 0x200000L

.field public static final INTERNAL_MEMORY_THRESOLD:J = 0x500000L

.field private static final LOG_TAG:Ljava/lang/String; = "HtcMemoryCheckTimer"

.field public static final ONLINEALBUM_CACHESIZE:I = 0xa38d80

.field public static final ONLINEALBUM_THUMBSIZE:I = 0x200000

.field private static final PATH:Ljava/lang/String; = null

.field public static final STORAGE_FULL_ACTION:Ljava/lang/String; = "com.htc.album.action.MEMORY_FILL"

.field public static final STORAGE_FULL_STATUS:Ljava/lang/String; = "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

.field public static final STORAGE_NOT_FULL_ACTION:Ljava/lang/String; = "com.htc.album.action.MEMORY_NOT_FILL"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 33
    const-string v0, "HtcMemoryCheckTimer"

    const-string v1, "create HtcMemoryCheckTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static declared-synchronized checkIternalMemory()J
    .locals 11

    .prologue
    .line 51
    const-class v8, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 53
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 54
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 55
    .local v5, size:J
    const-string v7, "HtcMemoryCheckTimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "internal memory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v8

    return-wide v5

    .line 51
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #size:J
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 95
    const-wide/16 v5, 0x0

    .line 97
    .local v5, size:J
    if-nez p0, :cond_0

    .line 98
    const-wide/16 v7, 0x0

    .line 107
    :goto_0
    return-wide v7

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 103
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 104
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 105
    .local v1, currentFile:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #currentFile:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move-wide v7, v5

    .line 107
    goto :goto_0
.end method

.method public static declared-synchronized isExternalStorageEnough()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 82
    const-class v4, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;

    monitor-enter v4

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v5}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 86
    .local v0, remaining:J
    const-wide/32 v5, 0x200000

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 87
    const/4 v3, 0x0

    .line 90
    :cond_0
    monitor-exit v4

    return v3

    .line 82
    .end local v0           #remaining:J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized isInternalStorageEnough(J)Z
    .locals 4
    .parameter "required"

    .prologue
    .line 75
    const-class v3, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->checkIternalMemory()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 76
    .local v0, size:J
    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    .end local v0           #size:J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized isInternalStorageEnough(Landroid/content/Context;)Z
    .locals 9
    .parameter "ctx"

    .prologue
    const-wide/32 v7, 0x500000

    const/4 v3, 0x1

    .line 60
    const-class v4, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->checkIternalMemory()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 62
    .local v1, size:J
    cmp-long v5, v1, v7

    if-lez v5, :cond_1

    .line 71
    :cond_0
    :goto_0
    monitor-exit v4

    return v3

    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->getFileSize(Ljava/io/File;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 71
    const/4 v3, 0x0

    goto :goto_0

    .line 60
    .end local v0           #file:Ljava/io/File;
    .end local v1           #size:J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 39
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->checkIternalMemory()J

    move-result-wide v1

    .line 40
    .local v1, size:J
    const-wide/32 v3, 0x500000

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 41
    const-string v3, "HtcMemoryCheckTimer"

    const-string v4, "sending broadcast"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.album.action.MEMORY_FILL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    :goto_0
    return-void

    .line 45
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.album.action.MEMORY_NOT_FILL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
