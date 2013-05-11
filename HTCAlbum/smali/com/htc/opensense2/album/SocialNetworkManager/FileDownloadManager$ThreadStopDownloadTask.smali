.class public final Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;
.super Ljava/lang/Thread;
.source "FileDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadStopDownloadTask"
.end annotation


# instance fields
.field private final mLocker:Ljava/lang/Object;

.field private mRunning:Z

.field private mTasksToStop:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mTasksToStop:Ljava/util/List;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mRunning:Z

    return-void
.end method


# virtual methods
.method public doClear()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mTasksToStop:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doStop()V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mTasksToStop:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mRunning:Z

    .line 164
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postStopTask(I)V
    .locals 3
    .parameter "nTaskId"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mTasksToStop:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 105
    const-string v2, "FileDownloadManager"

    const-string v3, "[HTCAlbum][FileDownloadManager][ThreadStopDownloadTask]: begin..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mRunning:Z

    if-eqz v2, :cond_1

    .line 109
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mTasksToStop:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager$ThreadStopDownloadTask;->mTasksToStop:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    .local v1, nTaskId:I
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->access$000()Lcom/htc/opensense/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/opensense/cache/CacheManager;->stopDownloadPhotoByTaskId(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 132
    .end local v1           #nTaskId:I
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FileDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FileDownloadManager][ThreadStopDownloadTask]2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 122
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "FileDownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][FileDownloadManager][ThreadStopDownloadTask]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 137
    :cond_1
    const-string v2, "FileDownloadManager"

    const-string v3, "[HTCAlbum][FileDownloadManager][ThreadStopDownloadTask]: end..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method
