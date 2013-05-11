.class public Lcom/htc/opensense/cache/ThreadExecutorHelper;
.super Ljava/lang/Object;
.source "ThreadExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/cache/ThreadExecutorHelper$TaskStopExecutor;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final KEEP_ALIVE_TIME:I = 0x1

.field static final MAX_THREADS:I = 0x2

.field static final MIN_THREADS:I = 0x2

.field static mCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public isShutDown()Z
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
