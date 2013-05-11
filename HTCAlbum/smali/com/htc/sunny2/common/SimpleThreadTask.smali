.class public abstract Lcom/htc/sunny2/common/SimpleThreadTask;
.super Ljava/lang/Thread;
.source "SimpleThreadTask.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,
        Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimpleThreadTask"

.field private static final POST_RESULT:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLocker:Ljava/lang/Object;

.field private mPaused:Z

.field private mQueue:Ljava/util/List;

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mRunning:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z

    .line 183
    new-instance v0, Lcom/htc/sunny2/common/SimpleThreadTask$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/SimpleThreadTask$1;-><init>(Lcom/htc/sunny2/common/SimpleThreadTask;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    .line 235
    return-void
.end method

.method private onPostResult(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/common/SimpleThreadTask",
            "<TParams;TResult;>.ThreadTask;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    .local p1, task:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    #getter for: Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;
    invoke-static {p1}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->access$000(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPostExecute(Ljava/lang/Object;)V

    .line 171
    return-void
.end method


# virtual methods
.method protected abstract doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)TResult;"
        }
    .end annotation
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 196
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    .locals 4

    .prologue
    .line 154
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->UNKNOWN:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    .line 157
    .local v0, status:Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->FINISHED:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    .line 164
    :goto_0
    monitor-exit v2

    return-object v0

    .line 159
    :cond_0
    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z

    if-ne v1, v3, :cond_1

    .line 160
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->PAUSED:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    goto :goto_0

    .line 162
    :cond_1
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->RUNNING:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    goto :goto_0

    .line 165
    .end local v0           #status:Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract onCancelled(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 201
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_0
    return v0

    .line 206
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPostResult(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)V

    .line 207
    const/4 v0, 0x1

    .line 208
    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 219
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    :cond_0
    return-void
.end method

.method protected abstract onPreExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 226
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public postPause()V
    .locals 5

    .prologue
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    const/4 v3, 0x1

    .line 137
    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 139
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z

    if-ne v3, v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 150
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SimpleThreadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SimpleThreadTask][postResume]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public postQuit()V
    .locals 5

    .prologue
    .line 104
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v2

    .line 117
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SimpleThreadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SimpleThreadTask][postQuit]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postResume()V
    .locals 5

    .prologue
    .line 120
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 133
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SimpleThreadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SimpleThreadTask][postResume]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public postStop()V
    .locals 5

    .prologue
    .line 87
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mRunning:Z

    .line 98
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v2

    .line 101
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SimpleThreadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SimpleThreadTask][postStop]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postTask(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    .local p1, params:Ljava/lang/Object;,"TParams;"
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    new-instance v2, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;

    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, p0, v3, p1}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;-><init>(Lcom/htc/sunny2/common/SimpleThreadTask;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPreExecute(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 33
    :goto_0
    iget-boolean v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mRunning:Z

    if-eqz v3, :cond_3

    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, task:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    iget-object v4, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z

    if-ne v6, v3, :cond_1

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 44
    iget-boolean v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v3, :cond_1

    .line 45
    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 48
    :catch_0
    move-exception v3

    .line 54
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 57
    monitor-exit v4

    goto :goto_0

    .line 59
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;

    move-object v2, v0

    .line 60
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    #getter for: Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mParam:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->access$100(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/common/SimpleThreadTask;->doInBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #setter for: Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->access$002(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 71
    :goto_1
    invoke-virtual {p0, v6, v2, v7}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SimpleThreadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SimpleThreadTask][run]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #task:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    :cond_3
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 193
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    return-void
.end method
