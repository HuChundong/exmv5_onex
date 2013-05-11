.class final Lcom/htc/album/helper/UserProfilingLog$1;
.super Ljava/lang/Object;
.source "UserProfilingLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 173
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .line 177
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 179
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 184
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v4

    .line 185
    .local v4, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v5, "com.htc.album"

    invoke-virtual {v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "Share"

    invoke-interface {v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v6

    const-string v7, "service"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "count"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 190
    invoke-static {v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 191
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 195
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 248
    .end local v4           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :catch_0
    move-exception v5

    .line 250
    :goto_1
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$100()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 201
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 202
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 207
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v4

    .line 208
    .restart local v4       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v5, "com.htc.album"

    invoke-virtual {v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "Slideshow"

    invoke-interface {v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v6

    const-string v7, "effect"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "count"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 213
    invoke-static {v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 214
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 224
    .end local v4           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "burst_shot"

    #calls: Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/album/helper/UserProfilingLog;->access$300(Ljava/util/Set;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "burst_auto_review"

    #calls: Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/album/helper/UserProfilingLog;->access$300(Ljava/util/Set;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "dlna"

    #calls: Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/album/helper/UserProfilingLog;->access$300(Ljava/util/Set;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "favorite"

    #calls: Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/album/helper/UserProfilingLog;->access$300(Ljava/util/Set;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "show_hide_item"

    #calls: Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/album/helper/UserProfilingLog;->access$300(Ljava/util/Set;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "social_service_features"

    #calls: Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/album/helper/UserProfilingLog;->access$300(Ljava/util/Set;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method
