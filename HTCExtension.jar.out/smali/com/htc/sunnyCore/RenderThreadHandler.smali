.class public Lcom/htc/sunnyCore/RenderThreadHandler;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "RenderThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final log_tag:Ljava/lang/String; = "RenderThreadHandler"


# instance fields
.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mInProcess:Z

.field private mIsReleased:Z

.field protected mQueued:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThread:Lcom/htc/sunnyCore/RenderThread;

.field private final mThreadLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V
    .locals 2
    .parameter "host"
    .parameter "name"
    .parameter "thread"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mQueued:Ljava/util/List;

    .line 93
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->setAlwaysNeedRenderAfterProcess(Z)V

    .line 94
    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mInProcess:Z

    .line 95
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 97
    invoke-virtual {p0, p3}, Lcom/htc/sunnyCore/RenderThreadHandler;->attachRenderThread(Lcom/htc/sunnyCore/RenderThread;)V

    .line 99
    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mIsReleased:Z

    .line 101
    return-void
.end method

.method private addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3
    .parameter "m"

    .prologue
    const/4 v1, 0x1

    .line 157
    iget-boolean v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mIsReleased:Z

    if-ne v1, v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 159
    :cond_0
    iput-object p0, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 160
    iget-boolean v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mInProcess:Z

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 167
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq v0, v2, :cond_1

    .line 169
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 171
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeMessage(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;>;"
    const/4 v1, 0x1

    .line 175
    iget-boolean v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mIsReleased:Z

    if-ne v1, v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 178
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 179
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 180
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq v0, v2, :cond_1

    .line 182
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 184
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public attachRenderThread(Lcom/htc/sunnyCore/RenderThread;)V
    .locals 3
    .parameter "renderThread"

    .prologue
    .line 202
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mIsReleased:Z

    if-ne v0, v1, :cond_0

    .line 203
    const-string v0, "RenderThreadHandler"

    const-string v1, "Can\'t attach RenderThread into released handler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit v1

    .line 226
    :goto_0
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq p1, v0, :cond_3

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t attach to another RenderThread"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 215
    :cond_3
    :try_start_1
    iput-object p1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 218
    invoke-virtual {p1, p0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 224
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mIsReleased:Z

    .line 225
    monitor-exit v1

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p1, p0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIHT(Lcom/htc/sunnyCore/RenderThreadAction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public handleMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 192
    return-void
.end method

.method public hasMessages(I)Z
    .locals 4
    .parameter "what"

    .prologue
    .line 232
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v3

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 234
    .local v1, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 235
    iget v2, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    if-ne v2, p1, :cond_0

    .line 236
    const/4 v2, 0x1

    monitor-exit v3

    .line 240
    .end local v1           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :goto_0
    return v2

    .line 239
    :cond_1
    monitor-exit v3

    .line 240
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 397
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 9
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 108
    iget-object v6, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mQueued:Ljava/util/List;

    monitor-enter v6

    .line 109
    :try_start_0
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v5, v7, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 110
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 112
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 113
    .local v1, isEmpty:Z
    if-eqz v1, :cond_0

    .line 114
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 115
    const/4 v5, 0x1

    .line 153
    :goto_0
    return v5

    .line 110
    .end local v1           #isEmpty:Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 118
    .restart local v1       #isEmpty:Z
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mInProcess:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, deleys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;>;"
    :goto_1
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 123
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 124
    .local v2, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 125
    .local v3, time:J
    iget-wide v5, v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 126
    invoke-virtual {v2}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    .line 128
    :cond_1
    iget-object v5, v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    iget-wide v5, v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v3

    if-gtz v5, :cond_2

    .line 130
    iget-object v5, v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 131
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 133
    invoke-virtual {v2}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    .line 135
    :cond_2
    iget-wide v5, v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    iget-wide v5, v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v3

    if-gtz v5, :cond_4

    .line 137
    :cond_3
    iget-object v5, v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v5, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->handleMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 138
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 140
    invoke-virtual {v2}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v2           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    .end local v3           #time:J
    :cond_5
    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mInProcess:Z

    .line 153
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 353
    invoke-static {}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 354
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iput-object p1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    .line 356
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 357
    return-void
.end method

.method public postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1
    .parameter "what"
    .parameter "obj"
    .parameter "time"

    .prologue
    .line 341
    invoke-static {}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 342
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iput-object p1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    .line 343
    iput-object p2, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    .line 344
    iput-wide p3, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 346
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 347
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "runnable"
    .parameter "delay"

    .prologue
    .line 363
    invoke-static {}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 364
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iput-object p1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 367
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 368
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mIsReleased:Z

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 381
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 387
    .end local v0           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, p0}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 390
    :cond_1
    monitor-exit v2

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "runnable"

    .prologue
    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;>;"
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 284
    .local v1, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 285
    iget-object v3, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget-object v3, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_0

    .line 286
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 290
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    .line 292
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;>;"
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 267
    .local v1, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 268
    iget-object v3, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget-object v3, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    .line 269
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 273
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    .line 275
    return-void
.end method

.method public removeMessages(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v2, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;>;"
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 250
    .local v1, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 251
    iget-object v3, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget v3, v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    if-ne v3, p1, :cond_0

    .line 252
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 256
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    .line 258
    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 298
    invoke-static {}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 299
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 301
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 302
    return-void
.end method

.method public sendEmptyMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 330
    invoke-static {}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 331
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 332
    iput-object p2, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    .line 334
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 335
    return-void
.end method

.method public sendEmptyMessageAtTime(IJ)V
    .locals 1
    .parameter "what"
    .parameter "time"

    .prologue
    .line 319
    invoke-static {}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 320
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 321
    iput-wide p2, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 323
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 324
    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 5
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 308
    invoke-static {}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 309
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 312
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->addMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V

    .line 313
    return-void
.end method
