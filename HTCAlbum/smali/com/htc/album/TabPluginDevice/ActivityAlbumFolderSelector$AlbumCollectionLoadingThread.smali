.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
.super Ljava/lang/Thread;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCollectionLoadingThread"
.end annotation


# instance fields
.field private mCollectionMgr:Lcom/htc/album/helper/FolderManager;

.field private mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingRequest:Z

.field private final mLocker:Ljava/lang/Object;

.field private mSaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveRequest:Z

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "n"
    .parameter "uiHandler"

    .prologue
    const/4 v1, 0x0

    .line 892
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 893
    const-string v0, "AlbumCollectionLoadingThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 882
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    .line 894
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    .line 895
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    .line 896
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    .line 897
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 898
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    .line 899
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    return-object v0
.end method

.method private onLoadData()V
    .locals 13

    .prologue
    .line 968
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 973
    .local v8, thisActivity:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
    const-string v9, "local"

    const-string v10, "local"

    const/16 v11, 0x8

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 982
    .local v4, mTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const-string v9, "local"

    const-string v10, "local"

    const/16 v11, 0x9

    invoke-static {v8, v9, v10, v11}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 986
    .local v1, hasFilterCache:Z
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 988
    :cond_0
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1047
    :goto_0
    return-void

    .line 992
    :cond_1
    const/4 v0, 0x0

    .line 993
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v2, 0x0

    .line 995
    .local v2, hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v9, 0x1

    if-ne v9, v1, :cond_6

    .line 998
    const-string v9, "local"

    const-string v10, "local"

    const/16 v11, 0x9

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1004
    .local v3, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v5, 0x0

    .line 1006
    .local v5, nCount:I
    if-eqz v3, :cond_2

    .line 1007
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1009
    :cond_2
    const/4 v6, 0x0

    .local v6, nHiddenIndex:I
    :goto_1
    if-le v5, v6, :cond_9

    .line 1011
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v2       #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v2, :cond_4

    .line 1009
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1014
    :cond_4
    const/4 v7, 0x0

    .local v7, nIndex:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v7, :cond_3

    .line 1016
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1017
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1018
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    .line 1014
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1027
    .end local v3           #hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v5           #nCount:I
    .end local v6           #nHiddenIndex:I
    .end local v7           #nIndex:I
    :cond_6
    const/4 v7, 0x0

    .restart local v7       #nIndex:I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v7, :cond_9

    .line 1029
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1030
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1031
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    .line 1027
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1032
    :cond_8
    const-string v9, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1033
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    goto :goto_4

    .line 1037
    .end local v7           #nIndex:I
    :cond_9
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    if-nez v9, :cond_a

    .line 1038
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread$1;

    invoke-direct {v10, p0, v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread$1;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1046
    :cond_a
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private onSaveData(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 956
    .local v0, thisActivity:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
    if-eqz p1, :cond_0

    .line 957
    const-string v1, "local"

    const-string v2, "local"

    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 964
    :cond_0
    return-void
.end method


# virtual methods
.method public doLoading()V
    .locals 2

    .prologue
    .line 939
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 940
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 941
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 942
    monitor-exit v1

    .line 943
    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSave(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 947
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    .line 948
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveList:Ljava/util/ArrayList;

    .line 949
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 950
    monitor-exit v1

    .line 951
    return-void

    .line 950
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
    .line 932
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    .line 934
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 935
    monitor-exit v1

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 902
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    if-nez v1, :cond_0

    .line 903
    new-instance v1, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v1}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 906
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    if-nez v1, :cond_3

    .line 907
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    if-nez v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    if-ne v4, v1, :cond_2

    .line 919
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->onLoadData()V

    .line 920
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 923
    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    if-ne v4, v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->onSaveData(Ljava/util/ArrayList;)V

    .line 925
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 916
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 929
    :cond_3
    return-void
.end method
