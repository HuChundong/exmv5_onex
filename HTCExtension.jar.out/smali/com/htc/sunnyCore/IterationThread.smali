.class public Lcom/htc/sunnyCore/IterationThread;
.super Landroid/os/HandlerThread;
.source "IterationThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/IterationThread$1;,
        Lcom/htc/sunnyCore/IterationThread$IterateRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PAUSECHECKTIMEOUT:I = 0xa


# instance fields
.field private hasThreadBegun:Z

.field private hasThreadEnded:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mIterateRunnable:Ljava/lang/Runnable;

.field private mPause:Z

.field private final mPauseChecker:Ljava/lang/Object;

.field private mResumeRequest:Z

.field private final modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "threadName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "ITERATION_THREAD"

    iput-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    iput-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadBegun:Z

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadEnded:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->mPause:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->mResumeRequest:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->mIsPaused:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mPauseChecker:Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/htc/sunnyCore/IterationThread$IterateRunnable;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunnyCore/IterationThread$IterateRunnable;-><init>(Lcom/htc/sunnyCore/IterationThread;Lcom/htc/sunnyCore/IterationThread$1;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mIterateRunnable:Ljava/lang/Runnable;

    .line 44
    iput-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunnyCore/IterationThread;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunnyCore/IterationThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/sunnyCore/IterationThread;->mResumeRequest:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/sunnyCore/IterationThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/sunnyCore/IterationThread;->mResumeRequest:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/sunnyCore/IterationThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/sunnyCore/IterationThread;->mPause:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/sunnyCore/IterationThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/sunnyCore/IterationThread;->mPause:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/sunnyCore/IterationThread;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/sunnyCore/IterationThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/sunnyCore/IterationThread;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/sunnyCore/IterationThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mPauseChecker:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public beginThread()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v1, "beginThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/htc/sunnyCore/IterationThread;->start()V

    .line 65
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v1, "Wait for thread begin. +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadBegun:Z

    if-nez v0, :cond_0

    .line 70
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v1, "Wait for thread begin. -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public beginThreadWithoutWait()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v1, "beginThreadWithoutWait"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/htc/sunnyCore/IterationThread;->start()V

    .line 85
    return-void
.end method

.method public endThread()V
    .locals 6

    .prologue
    .line 92
    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v3, "endThread +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/htc/sunnyCore/IterationThread;->pauseThread()V

    .line 100
    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Send end thread request."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/htc/sunnyCore/IterationThread;->quit()Z

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    .local v0, waitStartTime:J
    iget-boolean v2, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadEnded:Z

    if-nez v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread end. +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadEnded:Z

    if-nez v2, :cond_1

    .line 114
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Re-notify thread in endThread()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-enter p0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 125
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread end. -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v3, "endThread -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 116
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public iterate()Z
    .locals 2

    .prologue
    .line 164
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v1, "default iterate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mHandler:Landroid/os/Handler;

    .line 245
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->mIterateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method public onThreadBegin()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public onThreadEnd()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public pauseThread()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 176
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v2, "pauseThread +"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 179
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->mPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 187
    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->mPauseChecker:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->mIsPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunnyCore/IterationThread;->mPause:Z

    if-ne v5, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->mPauseChecker:Ljava/lang/Object;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, ite:Ljava/lang/InterruptedException;
    :try_start_2
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseThread: mIsPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/sunnyCore/IterationThread;->mIsPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v0           #ite:Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    :cond_2
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v2, "pauseThread -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    return-void

    .line 182
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 196
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public resumeThread()V
    .locals 2

    .prologue
    .line 208
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/IterationThread;->resumeThread(J)V

    .line 209
    return-void
.end method

.method public resumeThread(J)V
    .locals 2
    .parameter "delayedTimeMillis"

    .prologue
    const/4 v1, 0x1

    .line 217
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 219
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/IterationThread;->mPause:Z

    if-ne v0, v1, :cond_1

    .line 220
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/IterationThread;->mPause:Z

    .line 222
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->mIterateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/IterationThread;->mResumeRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    return-void

    .line 225
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->mIterateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/IterationThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    .line 259
    iput-boolean v3, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadBegun:Z

    .line 260
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/htc/sunnyCore/IterationThread;->onThreadBegin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    const-string v1, "run end due to cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput-boolean v3, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadEnded:Z

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 272
    invoke-virtual {p0}, Lcom/htc/sunnyCore/IterationThread;->onThreadEnd()V

    .line 274
    iget-object v0, p0, Lcom/htc/sunnyCore/IterationThread;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput-boolean v3, p0, Lcom/htc/sunnyCore/IterationThread;->hasThreadEnded:Z

    goto :goto_0
.end method
