.class public Lcom/htc/album/ObjectWriter/FileCacheThread;
.super Ljava/lang/Thread;
.source "FileCacheThread.java"


# static fields
.field public static final FILE_CACHE_READ:I = 0x1

.field public static final FILE_CACHE_WRITE:I = 0x2

.field private static mThread:Lcom/htc/album/ObjectWriter/FileCacheThread;


# instance fields
.field private mCancel:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentOpration:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private mExtension:I

.field private mHandler:Landroid/os/Handler;

.field private mOnCacheReadWriteFinish:Ljava/lang/Runnable;

.field private mService:Ljava/lang/String;

.field private mUID:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mThread:Lcom/htc/album/ObjectWriter/FileCacheThread;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"
    .parameter "version"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    iput v2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCurrentOpration:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCancel:Z

    .line 17
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mHandler:Landroid/os/Handler;

    .line 18
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mOnCacheReadWriteFinish:Ljava/lang/Runnable;

    .line 20
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mContext:Landroid/content/Context;

    .line 21
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mService:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mUID:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mExtension:I

    .line 24
    iput v2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mVersion:I

    .line 26
    iput-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mDataList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mService:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mUID:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mExtension:I

    .line 34
    iput p5, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mVersion:I

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/htc/album/ObjectWriter/FileCacheThread;
    .locals 7
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"
    .parameter "version"

    .prologue
    .line 39
    const-class v6, Lcom/htc/album/ObjectWriter/FileCacheThread;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mThread:Lcom/htc/album/ObjectWriter/FileCacheThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mThread:Lcom/htc/album/ObjectWriter/FileCacheThread;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/FileCacheThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mThread:Lcom/htc/album/ObjectWriter/FileCacheThread;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/FileCacheThread;->cancel()V

    .line 42
    :cond_0
    new-instance v0, Lcom/htc/album/ObjectWriter/FileCacheThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/FileCacheThread;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mThread:Lcom/htc/album/ObjectWriter/FileCacheThread;

    .line 44
    sget-object v0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mThread:Lcom/htc/album/ObjectWriter/FileCacheThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCancel:Z

    .line 49
    return-void
.end method

.method public declared-synchronized getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mDataList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCancel:Z

    .line 53
    iget v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCurrentOpration:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mOnCacheReadWriteFinish:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mOnCacheReadWriteFinish:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mService:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mUID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mExtension:I

    iget v4, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mVersion:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mDataList:Ljava/util/List;

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mService:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mDataList:Ljava/util/List;

    iget v4, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mExtension:I

    iget v5, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mVersion:I

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setReadCache(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "h"
    .parameter "run"

    .prologue
    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCurrentOpration:I

    .line 73
    iput-object p1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mOnCacheReadWriteFinish:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method public setWriteCache(Ljava/util/List;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "h"
    .parameter "run"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mCurrentOpration:I

    .line 79
    iput-object p2, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p3, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mOnCacheReadWriteFinish:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/htc/album/ObjectWriter/FileCacheThread;->mDataList:Ljava/util/List;

    .line 82
    return-void
.end method
