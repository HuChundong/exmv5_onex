.class Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;
.super Ljava/lang/Thread;
.source "InkCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/cache/InkCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InkCacheWorker"
.end annotation


# instance fields
.field private mDeleteLock:Ljava/lang/Object;

.field private mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

.field private mStop:Z

.field private mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/htc/opensense2/album/cache/InkCacheTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/opensense2/album/cache/InkCacheManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/cache/InkCacheManager;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "fileSize"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->this$0:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mStop:Z

    .line 197
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mDeleteLock:Ljava/lang/Object;

    .line 202
    const-string v0, "InkCacheWorker"

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->setName(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    invoke-direct {v0, p2, p3}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    .line 204
    return-void
.end method


# virtual methods
.method public addTask(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z
    .locals 4
    .parameter "task"

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[addTask] Task = "

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    if-nez p1, :cond_0

    .line 267
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public cancel()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 286
    iput-boolean v5, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mStop:Z

    .line 288
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    new-array v7, v5, [B

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIII[B)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->addTask(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 289
    return-void
.end method

.method public removeTask(Lcom/htc/opensense2/album/cache/InkCacheTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 272
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeTask] Task = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mDeleteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 281
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

.method public run()V
    .locals 8

    .prologue
    .line 216
    :goto_0
    iget-boolean v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mStop:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->release()V

    .line 258
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    .line 259
    return-void

    .line 219
    :cond_0
    const/4 v3, 0x0

    .line 222
    .local v3, task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    check-cast v3, Lcom/htc/opensense2/album/cache/InkCacheTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .restart local v3       #task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    iget-object v4, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 233
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[InkCacheWorker][run] Task = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/opensense2/album/cache/InkCacheTask;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", go stop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mStop:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v3           #task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :catch_0
    move-exception v0

    .line 227
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[InkCacheWorker][run] Exception while taking task, Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v3       #task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mDeleteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 239
    :try_start_1
    iget v4, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 241
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[InkCacheWorker][run] TaskType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v3, v6, v7}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->push(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    .line 254
    :cond_2
    :goto_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 244
    :cond_3
    :try_start_2
    iget v4, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 246
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->mFileManager:Lcom/htc/opensense2/album/cache/InkFileCacheManager;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v3, v6, v7}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v2

    .line 247
    .local v2, nRet:I
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[InkCacheWorker][run] TaskType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 249
    .local v1, msg:Landroid/os/Message;
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    const/16 v4, 0x3e8

    :goto_2
    iput v4, v1, Landroid/os/Message;->what:I

    .line 251
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheWorker;->this$0:Lcom/htc/opensense2/album/cache/InkCacheManager;

    #getter for: Lcom/htc/opensense2/album/cache/InkCacheManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$300(Lcom/htc/opensense2/album/cache/InkCacheManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 249
    :cond_4
    const/16 v4, 0x3e9

    goto :goto_2
.end method
