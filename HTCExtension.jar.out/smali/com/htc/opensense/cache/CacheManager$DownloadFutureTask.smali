.class public Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DownloadFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/htc/opensense/cache/CacheManager$Info;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;",
        ">;"
    }
.end annotation


# instance fields
.field mData:Landroid/os/Bundle;

.field taskId:I

.field final synthetic this$0:Lcom/htc/opensense/cache/CacheManager;

.field url_hash:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/cache/CacheManager;ILjava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter "id"
    .parameter "url"
    .parameter "callback"
    .parameter "data"

    .prologue
    .line 874
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;-><init>(Lcom/htc/opensense/cache/CacheManager;ILjava/lang/String;Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)V

    .line 875
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/cache/CacheManager;ILjava/lang/String;Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "url"
    .parameter "auth_header"
    .parameter "callback"
    .parameter "data"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    .line 883
    new-instance v0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;

    invoke-direct {v0, p1, p3, p4}, Lcom/htc/opensense/cache/CacheManager$ImageCallable;-><init>(Lcom/htc/opensense/cache/CacheManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 884
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    .line 885
    iput p2, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    .line 886
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add call back : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget v0, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    iget v1, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->addCallBack(IILcom/htc/opensense/cache/DownloadCallback;)V
    invoke-static {p1, v0, v1, p5}, Lcom/htc/opensense/cache/CacheManager;->access$100(Lcom/htc/opensense/cache/CacheManager;IILcom/htc/opensense/cache/DownloadCallback;)V

    .line 888
    iput-object p6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->mData:Landroid/os/Bundle;

    .line 889
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;)I
    .locals 2
    .parameter "other"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 996
    iget v0, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    iget v1, p1, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 862
    check-cast p1, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->compareTo(Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;)I

    move-result v0

    return v0
.end method

.method protected done()V
    .locals 13

    .prologue
    const/4 v8, 0x2

    const/4 v12, 0x1

    .line 898
    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$200(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget v7, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-virtual {p0}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/cache/CacheManager$Info;

    .line 901
    .local v4, info:Lcom/htc/opensense/cache/CacheManager$Info;
    iget v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-nez v6, :cond_0

    .line 902
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v7, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;
    invoke-static {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->access$300(Lcom/htc/opensense/cache/CacheManager;I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v4

    .line 904
    :cond_0
    if-eqz v4, :cond_5

    .line 905
    iget v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-ne v6, v12, :cond_6

    .line 906
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "on download success, uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v6, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 909
    :try_start_1
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->removeCallbackListWithLock(I)Ljava/util/HashMap;
    invoke-static {v6, v8}, Lcom/htc/opensense/cache/CacheManager;->access$400(Lcom/htc/opensense/cache/CacheManager;I)Ljava/util/HashMap;

    move-result-object v1

    .line 910
    .local v1, callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    if-eqz v1, :cond_4

    .line 911
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 912
    .local v2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 913
    .local v5, itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 914
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/cache/DownloadCallback;

    .line 915
    .local v0, callback:Lcom/htc/opensense/cache/DownloadCallback;
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "on Download Success callback : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->mData:Landroid/os/Bundle;

    invoke-interface {v0, v6, v8}, Lcom/htc/opensense/cache/DownloadCallback;->onDownloadSuccess(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 922
    .end local v0           #callback:Lcom/htc/opensense/cache/DownloadCallback;
    .end local v1           #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v2           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v5           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 931
    .end local v4           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catch_0
    move-exception v3

    .line 932
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User interrupt task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v7, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;
    invoke-static {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->access$300(Lcom/htc/opensense/cache/CacheManager;I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v4

    .line 934
    .restart local v4       #info:Lcom/htc/opensense/cache/CacheManager$Info;
    if-eqz v4, :cond_1

    iget-object v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-eq v6, v12, :cond_1

    .line 936
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v4, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->deleteFromDb(Ljava/lang/String;)V

    .line 938
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v6, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 939
    :try_start_4
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->getCallbackListWithLock(I)Ljava/util/HashMap;
    invoke-static {v6, v8}, Lcom/htc/opensense/cache/CacheManager;->access$500(Lcom/htc/opensense/cache/CacheManager;I)Ljava/util/HashMap;

    move-result-object v1

    .line 940
    .restart local v1       #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    if-eqz v1, :cond_2

    .line 941
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InterruptedException remove task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url_hash : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 944
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v6, v6, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 983
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    monitor-enter v7

    .line 984
    :try_start_5
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 987
    .end local v1           #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v3           #e:Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 919
    .restart local v1       #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    .restart local v2       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    .restart local v5       #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 922
    .end local v2           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v5           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :cond_4
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 923
    :try_start_7
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v4, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, " last_modified_time"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/opensense/cache/CacheManager;->updateToDb(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_2

    .line 983
    .end local v1           #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    :cond_5
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    monitor-enter v7

    .line 984
    :try_start_8
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    monitor-exit v7

    goto :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 925
    :cond_6
    :try_start_9
    iget v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-ne v6, v8, :cond_5

    .line 926
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    const-string v7, "Download fail"

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v6, v7, v8}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 948
    .end local v4           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catch_1
    move-exception v3

    .line 949
    .local v3, e:Ljava/util/concurrent/ExecutionException;
    :try_start_a
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExecutionException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v7, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;
    invoke-static {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->access$300(Lcom/htc/opensense/cache/CacheManager;I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v4

    .line 951
    .restart local v4       #info:Lcom/htc/opensense/cache/CacheManager$Info;
    iget-object v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-eq v6, v12, :cond_7

    .line 952
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v4, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->deleteFromDb(Ljava/lang/String;)V

    .line 954
    :cond_7
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v6, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 955
    :try_start_b
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->removeCallbackListWithLock(I)Ljava/util/HashMap;
    invoke-static {v6, v8}, Lcom/htc/opensense/cache/CacheManager;->access$400(Lcom/htc/opensense/cache/CacheManager;I)Ljava/util/HashMap;

    move-result-object v1

    .line 956
    .restart local v1       #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    if-eqz v1, :cond_9

    .line 957
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 958
    .restart local v2       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 959
    .restart local v5       #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 960
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/cache/DownloadCallback;

    .line 961
    .restart local v0       #callback:Lcom/htc/opensense/cache/DownloadCallback;
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->mData:Landroid/os/Bundle;

    invoke-interface {v0, v3, v6}, Lcom/htc/opensense/cache/DownloadCallback;->onDownloadError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_2

    .line 965
    .end local v0           #callback:Lcom/htc/opensense/cache/DownloadCallback;
    .end local v1           #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v2           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v5           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 983
    .end local v3           #e:Ljava/util/concurrent/ExecutionException;
    .end local v4           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catchall_3
    move-exception v6

    iget-object v7, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v7}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    monitor-enter v7

    .line 984
    :try_start_d
    iget-object v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    iget v9, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    throw v6

    .line 947
    .local v3, e:Ljava/lang/InterruptedException;
    .restart local v4       #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catchall_4
    move-exception v6

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 985
    .restart local v1       #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    :catchall_5
    move-exception v6

    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v6

    .line 963
    .restart local v2       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    .local v3, e:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :cond_8
    :try_start_11
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 965
    .end local v2           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v5           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :cond_9
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 983
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    monitor-enter v7

    .line 984
    :try_start_12
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    monitor-exit v7

    goto/16 :goto_1

    :catchall_6
    move-exception v6

    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v6

    .line 966
    .end local v1           #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    .end local v3           #e:Ljava/util/concurrent/ExecutionException;
    .end local v4           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catch_2
    move-exception v3

    .line 967
    .local v3, e:Ljava/util/concurrent/CancellationException;
    :try_start_13
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User CancellationException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v7, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;
    invoke-static {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->access$300(Lcom/htc/opensense/cache/CacheManager;I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v4

    .line 969
    .restart local v4       #info:Lcom/htc/opensense/cache/CacheManager$Info;
    iget-object v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget v6, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-eq v6, v12, :cond_a

    .line 970
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v4, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->deleteFromDb(Ljava/lang/String;)V

    .line 972
    :cond_a
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v7, v6, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 973
    :try_start_14
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->getCallbackListWithLock(I)Ljava/util/HashMap;
    invoke-static {v6, v8}, Lcom/htc/opensense/cache/CacheManager;->access$500(Lcom/htc/opensense/cache/CacheManager;I)Ljava/util/HashMap;

    move-result-object v1

    .line 974
    .restart local v1       #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    if-eqz v1, :cond_b

    .line 975
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CancellationException remove task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url_hash : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 978
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v6, v6, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_b
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 983
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    monitor-enter v7

    .line 984
    :try_start_15
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget v8, p0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->url_hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    monitor-exit v7

    goto/16 :goto_1

    :catchall_7
    move-exception v6

    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v6

    .line 981
    .end local v1           #callbackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/cache/DownloadCallback;>;"
    :catchall_8
    move-exception v6

    :try_start_16
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    throw v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 985
    .end local v3           #e:Ljava/util/concurrent/CancellationException;
    .end local v4           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catchall_9
    move-exception v6

    :try_start_18
    monitor-exit v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v6
.end method
