.class public Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerPhotos.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IMediaHandlerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaHandlerPhotos"


# instance fields
.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqPhoto:Landroid/os/AsyncTask;

.field private mEnableCacheList:Z

.field private mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

.field private mIsEnableRecentVideos:Z

.field private mIsForceLiveUpdate:Z

.field mMediaOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

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

.field mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

.field mMediaWrapper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field mMediaWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentListType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceMgr"
    .parameter "dataPlugin"
    .parameter "szServiceName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 37
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    .line 38
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaOps:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 49
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 50
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    .line 51
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z

    .line 52
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mEnableCacheList:Z

    .line 64
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 66
    instance-of v0, p3, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_2

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mEnableCacheList:Z

    .line 70
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][MediaHandlerPhotos]: setDataPlugin.. "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 78
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z

    .line 79
    return-void

    .line 73
    :cond_2
    instance-of v0, p3, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isRecentFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isRecentVideoFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentVideoListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putRecentListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putRecentVideoListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mEnableCacheList:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isPhotosOfMeFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPhotosOfMeListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getRecentListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getRecentVideoListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isPhotosOfMeFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isRecentFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isRecentVideoFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private putListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    const/4 v3, 0x7

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 879
    return-void
.end method

.method private putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    const/16 v3, 0xa

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 945
    return-void
.end method

.method private putRecentListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    const/16 v3, 0x8

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 900
    return-void
.end method

.method private putRecentVideoListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    const/16 v3, 0x9

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 921
    return-void
.end method


# virtual methods
.method public actionInProgress()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public cancelBackgroundAction()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method public getMediaInfo(Ljava/lang/String;)V
    .locals 6
    .parameter "szUID"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 152
    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "MediaHandlerPhotos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][getMediaInfo]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_2
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;

    invoke-direct {v0, p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getMediaInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "szAID"
    .parameter "szUID"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 166
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 186
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 170
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    .line 173
    :cond_1
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "MediaHandlerPhotos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][getMediaInfo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    if-eqz p1, :cond_3

    .line 177
    new-instance v0, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 178
    .local v0, anAlbum:Lcom/htc/opensense/social/data/Album;
    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 182
    .end local v0           #anAlbum:Lcom/htc/opensense/social/data/Album;
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 183
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;

    invoke-direct {v1, p0, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "szUID"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, mediumOp:Lcom/htc/opensense/social/MediumOp;
    const/4 v9, 0x0

    .line 122
    .local v9, mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v0, :cond_0

    .line 123
    new-array v1, v12, [Ljava/lang/String;

    .line 124
    .local v1, szUIDs:[Ljava/lang/String;
    aput-object p1, v1, v11

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v10

    .line 128
    .local v10, nScreenDisplay:[I
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 135
    .end local v1           #szUIDs:[Ljava/lang/String;
    .end local v10           #nScreenDisplay:[I
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 136
    :cond_1
    new-array v7, v12, [Lcom/htc/opensense/social/data/Medium;

    .line 137
    .local v7, medium:[Lcom/htc/opensense/social/data/Medium;
    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    aput-object v0, v7, v11

    .line 138
    aget-object v0, v7, v11

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/Medium;->setId(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    check-cast v9, Ljava/util/List;

    .line 141
    .end local v7           #medium:[Lcom/htc/opensense/social/data/Medium;
    .restart local v9       #mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_2
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    check-cast v8, Lcom/htc/opensense/social/MediumOp;

    .line 142
    .restart local v8       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    return-object v8

    .line 131
    .restart local v1       #szUIDs:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 132
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "MediaHandlerPhotos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][getMediaInfoSynchronous]: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMediaList(Ljava/lang/Object;Ljava/lang/Object;ZI)Z
    .locals 6
    .parameter "objSource"
    .parameter "objSource2"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    if-eqz p1, :cond_0

    .line 206
    new-instance v0, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 207
    .local v0, anAlbum:Lcom/htc/opensense/social/data/Album;
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 209
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 211
    .end local v0           #anAlbum:Lcom/htc/opensense/social/data/Album;
    :cond_0
    if-eqz p2, :cond_1

    .line 213
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 214
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v1, :cond_2

    .line 219
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 221
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 222
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 225
    :cond_2
    iput p4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    .line 226
    iput-boolean p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 227
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 228
    return v5
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 1
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "objs"

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    .end local p1
    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method public getPhotosOfMeList(Ljava/lang/Object;ZI)Z
    .locals 6
    .parameter "objSource"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    if-eqz p1, :cond_0

    .line 252
    new-instance v0, Lcom/htc/opensense/social/data/Person;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, aPerson:Lcom/htc/opensense/social/data/Person;
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v1, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 255
    .end local v0           #aPerson:Lcom/htc/opensense/social/data/Person;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 256
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 257
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 258
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 261
    :cond_1
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    .line 262
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 263
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 264
    return v5
.end method

.method public getRecentMediaList(Ljava/lang/Object;ZI)Z
    .locals 6
    .parameter "objSource"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    if-eqz p1, :cond_0

    .line 234
    new-instance v0, Lcom/htc/opensense/social/data/Person;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, aPerson:Lcom/htc/opensense/social/data/Person;
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v1, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 237
    .end local v0           #aPerson:Lcom/htc/opensense/social/data/Person;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 238
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 239
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 240
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 243
    :cond_1
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    .line 244
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 245
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 246
    return v5
.end method

.method protected isPhotoListChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, cachedPhotoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .local p2, newPhotoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v9, 0x1

    .line 831
    const/4 v0, 0x0

    .line 833
    .local v0, bRes:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v9

    .line 836
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 837
    .local v1, cachedListSize:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 838
    .local v7, newListSize:I
    if-lez v1, :cond_0

    if-lez v7, :cond_0

    .line 841
    if-ne v1, v7, :cond_0

    .line 844
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 846
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 847
    .local v2, cachedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 848
    .local v8, newPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v2, :cond_2

    if-nez v8, :cond_4

    .line 850
    :cond_2
    const/4 v0, 0x1

    .end local v2           #cachedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v8           #newPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_3
    :goto_2
    move v9, v0

    .line 870
    goto :goto_0

    .line 853
    .restart local v2       #cachedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v8       #newPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_4
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v3

    .line 854
    .local v3, cachedPhotoName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 855
    .local v4, cachedPhotoUrl:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v5

    .line 856
    .local v5, cachedPhotoUrlThumbnail:Ljava/lang/String;
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-nez v5, :cond_6

    .line 858
    :cond_5
    const/4 v0, 0x1

    .line 859
    goto :goto_2

    .line 861
    :cond_6
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 865
    :cond_7
    const/4 v0, 0x1

    .line 866
    goto :goto_2

    .line 844
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public notifyProgressAbort()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setDataHandler(Landroid/os/Handler;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setUIHandler(Landroid/os/Handler;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->cancelBackgroundAction()V

    .line 100
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 2
    .parameter "dataPlugin"

    .prologue
    .line 82
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][setDataPlugin]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_3

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 87
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mEnableCacheList:Z

    .line 88
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][setDataPlugin]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 91
    :cond_3
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    goto :goto_0
.end method
