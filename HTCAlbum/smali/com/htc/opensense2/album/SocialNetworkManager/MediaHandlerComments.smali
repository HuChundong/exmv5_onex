.class public Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerComments.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IMediaHandlerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaHandlerComments"


# instance fields
.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqSetList:Landroid/os/AsyncTask;

.field private mEnableCacheList:Z

.field private mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

.field private mIsForceLiveUpdate:Z

.field mMediaContent:Ljava/lang/String;

.field mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

.field mMediaWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "serviceMgr"
    .parameter "plugin"
    .parameter "szServiceName"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 41
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaContent:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mEnableCacheList:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    .line 63
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 65
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object p4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 66
    instance-of v0, p3, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    check-cast p3, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .end local p3
    iput-object p3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local p3
    :cond_1
    instance-of v0, p3, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    check-cast p3, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    .end local p3
    iput-object p3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 73
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mEnableCacheList:Z

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->isFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mEnableCacheList:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private putListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szUID"
    .parameter "objList"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, p2, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 482
    return-void
.end method


# virtual methods
.method public actionInProgress()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public cancelBackgroundAction()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method public getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter "szUID"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    .local v8, mediumOp:Lcom/htc/opensense/social/MediumOp;
    const/4 v9, 0x0

    .line 119
    .local v9, mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v0, :cond_0

    .line 121
    new-array v1, v11, [Ljava/lang/String;

    .line 122
    .local v1, szUIDs:[Ljava/lang/String;
    aput-object p1, v1, v10

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/16 v4, 0x64

    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 132
    .end local v1           #szUIDs:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :cond_1
    new-array v7, v11, [Lcom/htc/opensense/social/data/Medium;

    .line 135
    .local v7, medium:[Lcom/htc/opensense/social/data/Medium;
    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    aput-object v0, v7, v10

    .line 136
    aget-object v0, v7, v10

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/Medium;->setId(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    check-cast v9, Ljava/util/List;

    .line 139
    .end local v7           #medium:[Lcom/htc/opensense/social/data/Medium;
    .restart local v9       #mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_2
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    check-cast v8, Lcom/htc/opensense/social/MediumOp;

    .line 140
    .restart local v8       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    return-object v8

    .line 127
    .restart local v1       #szUIDs:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 129
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "MediaHandlerComments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaHandlerComments][getMediaInfoSynchronous]: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    if-eqz p1, :cond_0

    .line 155
    instance-of v0, p1, Lcom/htc/opensense/social/MediumOp;

    if-eqz v0, :cond_2

    .line 156
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/MediumOp;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 160
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 165
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 168
    :cond_1
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    .line 169
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 170
    return v4

    .line 157
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local p1
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    goto :goto_0
.end method

.method public getMediaListCount(Ljava/lang/Object;Z)Z
    .locals 7
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    .line 178
    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move v1, v0

    .line 195
    .end local v0           #bResult:Z
    .end local p1
    .local v1, bResult:I
    :goto_0
    return v1

    .line 182
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 183
    iput-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 187
    :cond_1
    if-nez p1, :cond_2

    move v1, v0

    .line 188
    .restart local v1       #bResult:I
    goto :goto_0

    .line 190
    .end local v1           #bResult:I
    :cond_2
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    .end local p1
    invoke-direct {v2, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 192
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    .line 193
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;

    invoke-direct {v2, p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 194
    const/4 v0, 0x1

    move v1, v0

    .line 195
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public getMediaListCountSynchronous(Ljava/lang/Object;Z)I
    .locals 6
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 202
    .local v2, nCount:I
    :try_start_0
    const-string v3, "MediaHandlerComments"

    const-string v4, "[MediaHandlerComments][getMediaListCountSynchronous]: getAttachments.."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    check-cast p1, Lcom/htc/opensense/social/MediumOp;

    .end local p1
    const-string v3, "getComments"

    const-class v4, Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {p1, v3, v4}, Lcom/htc/opensense/social/MediumOp;->getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 216
    .end local v0           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    :cond_0
    :goto_0
    const-string v3, "MediaHandlerComments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaHandlerComments][getMediaListCountSynchronous]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return v2

    .line 210
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v3, "MediaHandlerComments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaHandlerComments][getMediaListCountSynchronous] SocialNetworkException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "objs"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    .end local p1
    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    .line 149
    :cond_0
    return-object v0
.end method

.method public isEnableCacheList()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mEnableCacheList:Z

    return v0
.end method

.method public notifyProgressAbort()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setDataHandler(Landroid/os/Handler;)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setUIHandler(Landroid/os/Handler;)V

    .line 92
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->cancelBackgroundAction()V

    .line 93
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 1
    .parameter "dataPlugin"

    .prologue
    .line 78
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    check-cast p1, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .end local p1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    check-cast p1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    .end local p1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 85
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mEnableCacheList:Z

    goto :goto_0
.end method

.method public setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "objTarget"
    .parameter "objInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 222
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaContent:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 229
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    .line 232
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    .line 233
    return-void
.end method
