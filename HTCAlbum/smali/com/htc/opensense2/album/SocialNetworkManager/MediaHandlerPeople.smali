.class public Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerPeople.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IMediaHandlerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaHandlerPeople"


# instance fields
.field private mAsyncReqActiveUser:Landroid/os/AsyncTask;

.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqUser:Landroid/os/AsyncTask;

.field private mEnableCacheList:Z

.field private mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

.field private mIsForceLiveUpdate:Z

.field private mIsFriendsList:Z

.field mMediaSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field

.field mMediaUIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMediaWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "serviceMgr"
    .parameter "dataPlugin"
    .parameter "szServiceName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 42
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 52
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mEnableCacheList:Z

    .line 53
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z

    .line 66
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    .line 68
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 69
    instance-of v0, p4, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    check-cast p4, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .end local p4
    iput-object p4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mEnableCacheList:Z

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 78
    return-void

    .line 74
    .restart local p4
    :cond_1
    instance-of v0, p4, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    check-cast p4, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    .end local p4
    iput-object p4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putActiveUserListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isActiveUserFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mEnableCacheList:Z

    return v0
.end method

.method private getActiveUserListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isActiveUserFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private putActiveUserListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szUID"
    .parameter "objList"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 805
    return-void
.end method

.method private putListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szUID"
    .parameter "objList"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v1, p1, p2, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 779
    return-void
.end method


# virtual methods
.method public actionInProgress()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public cancelBackgroundAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 116
    :cond_0
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 118
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 123
    :cond_1
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

.method public getActiveUser(Z)V
    .locals 5
    .parameter "bIsForceSync"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 218
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 221
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 222
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 223
    return-void
.end method

.method public getActiveUserResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    return-object v0
.end method

.method public getActiveUserSync()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v5}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;

    move-result-object v1

    .line 229
    .local v1, personData:Lcom/htc/opensense/album/plugin/PersonData;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v2, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 231
    move-object v0, v1

    .line 232
    .local v0, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 236
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v7, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v6, v7, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putActiveUserListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    .line 243
    .end local v0           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v1           #personData:Lcom/htc/opensense/album/plugin/PersonData;
    .end local v2           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public getMediaInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "szUID"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 166
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 170
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 172
    return-void
.end method

.method public getMediaInfo2(Ljava/lang/String;)V
    .locals 5
    .parameter "szUID"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 183
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 187
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 189
    return-void
.end method

.method public getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "szUID"

    .prologue
    .line 128
    const/4 v5, 0x0

    .line 129
    .local v5, personOp:Lcom/htc/opensense/social/PersonOp;
    const/4 v4, 0x0

    .line 131
    .local v4, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 132
    .local v7, szUIDs:[Ljava/lang/String;
    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 135
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 137
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v6, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v3, :cond_0

    .line 140
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 142
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v1

    .line 143
    .local v1, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8, v6}, Lcom/htc/opensense/social/PersonOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v1           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v3           #nIndex:I
    .end local v6           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :catch_0
    move-exception v2

    .line 150
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "MediaHandlerPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][getMediaInfoSynchronous]: Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v5
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    check-cast p1, Lcom/htc/opensense/social/PersonOp;

    .end local p1
    invoke-direct {v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 261
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 264
    :cond_1
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 265
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 266
    return v4
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "objs"

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v3, :cond_1

    .line 195
    array-length v3, p1

    new-array v1, v3, [Lcom/htc/opensense/social/data/Person;

    .line 196
    .local v1, people:[Lcom/htc/opensense/social/data/Person;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    array-length v3, p1

    if-le v3, v0, :cond_0

    .line 198
    new-instance v4, Lcom/htc/opensense/social/data/Person;

    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v0

    .line 199
    const-string v3, "MediaHandlerPeople"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MediaHandlerPeople][getMediaOpFast]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v2

    .line 203
    .end local v0           #nIndex:I
    .end local v1           #people:[Lcom/htc/opensense/social/data/Person;
    :cond_1
    return-object v2
.end method

.method public getUserResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public isExistActiveUserCache()Z
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isActiveUserFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    .line 209
    return v0
.end method

.method public notifyProgressAbort()V
    .locals 0

    .prologue
    .line 824
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setDataHandler(Landroid/os/Handler;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setUIHandler(Landroid/os/Handler;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->cancelBackgroundAction()V

    .line 102
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    .line 82
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 2
    .parameter "dataPlugin"

    .prologue
    .line 85
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    check-cast p1, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .end local p1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 88
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mEnableCacheList:Z

    .line 95
    :cond_0
    :goto_0
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][setDataPlugin]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 90
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    check-cast p1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    .end local p1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    goto :goto_0
.end method

.method public setListMode(Z)V
    .locals 0
    .parameter "bIsFriendsList"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z

    .line 248
    return-void
.end method

.method public updateCacheList(Ljava/lang/Object;)Z
    .locals 8
    .parameter "objList"

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 285
    .local v2, listFriend:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-nez p1, :cond_0

    move v1, v0

    .line 299
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    move-object v2, p1

    .line 288
    check-cast v2, Ljava/util/List;

    .line 289
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 291
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 293
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-direct {p0, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const/4 v0, 0x1

    move v1, v0

    .line 299
    .restart local v1       #bResult:I
    goto :goto_0
.end method
