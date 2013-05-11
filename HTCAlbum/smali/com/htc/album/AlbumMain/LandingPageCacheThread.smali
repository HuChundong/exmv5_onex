.class public Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.super Landroid/os/HandlerThread;
.source "LandingPageCacheThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$1;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LandingPageCacheThread"


# instance fields
.field private mCacheHandler:Landroid/os/Handler;

.field private mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

.field private mContext:Landroid/content/Context;

.field private mExtension:I

.field private mHandler:Landroid/os/Handler;

.field private final mLockObject:Ljava/lang/Object;

.field private mRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;IILcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;)V
    .locals 2
    .parameter "name"
    .parameter "h"
    .parameter "context"
    .parameter "szService"
    .parameter "szExtension"
    .parameter "version"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    .line 31
    iput v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    .line 33
    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    .line 34
    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    .line 45
    iput-object p4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    .line 46
    iput p5, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    .line 47
    iput p6, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    .line 48
    iput-object p7, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->isCacheExit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromFileCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToFileCache(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    return-object v0
.end method

.method private isCacheExit(Ljava/lang/String;)Z
    .locals 3
    .parameter "uid"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iget v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    invoke-static {v0, v1, p1, v2}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private readFromDB()Ljava/util/List;
    .locals 10
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
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, ListPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    new-instance v1, Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    iget-object v7, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, TabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, TotalPlugin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    :try_start_0
    iget-object v7, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "LandingPageCacheThread"

    const-string v8, "[LandingPageCacheThread][readFromDB]: plugin is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 99
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "LandingPageCacheThread"

    const-string v8, "[LandingPageCacheThread][readFromDB]: plugin count is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v4

    .line 109
    .local v4, e:Ljava/lang/Exception;
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "LandingPageCacheThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LandingPageCacheThread][readFromDB]: doInBackground: Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->setPreorderedPluginList(Ljava/util/List;)V

    .line 104
    iget-object v7, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->reorderPlugins(Landroid/content/Context;)V

    .line 105
    iget-object v7, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->removeDisabledPlugins(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    invoke-virtual {v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->getOrderedPluginList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 115
    .local v3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/plugin/TabPlugin;>;"
    if-nez v3, :cond_3

    .line 117
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "LandingPageCacheThread"

    const-string v8, "[LandingPageCacheThread][readFromDB]: getOrderedPluginList() is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/plugin/TabPlugin;

    .line 123
    .local v6, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-eqz v6, :cond_4

    .line 127
    new-instance v7, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-direct {v7, v6}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;-><init>(Lcom/htc/opensense/plugin/TabPlugin;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private readFromFileCache(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iget v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    iget v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private writeToFileCache(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iget v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    iget v5, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    .prologue
    .line 53
    iget-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 62
    .local v0, i:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 64
    .end local v0           #i:Ljava/lang/Runnable;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "LandingPageCacheThread"

    const-string v3, "[LandingPageCacheThread][onLooperPrepared]..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    return-void
.end method

.method public readFromTabPluginFileCache()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_0
    new-instance v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Lcom/htc/album/AlbumMain/LandingPageCacheThread$1;)V

    .line 139
    .local v0, readRunnable:Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_0
    monitor-exit v2

    .line 148
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 147
    .end local v0           #readRunnable:Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToTabPluginFileCache(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_0
    new-instance v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 156
    .local v0, wirteToCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_0
    monitor-exit v2

    .line 165
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 164
    .end local v0           #wirteToCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
