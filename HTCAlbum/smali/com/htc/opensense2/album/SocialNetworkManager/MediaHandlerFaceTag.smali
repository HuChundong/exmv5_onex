.class public Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerFaceTag.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IMediaHandlerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$1;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaHandlerFaceTag"


# instance fields
.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqSetList:Landroid/os/AsyncTask;

.field private mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

.field private mIsForceLiveUpdate:Z

.field mMediaContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

.field mMediaWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "serviceMgr"
    .parameter "dataPlugin"
    .parameter "szServiceName"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 32
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    .line 33
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 34
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    .line 36
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    .line 38
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaContent:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mIsForceLiveUpdate:Z

    .line 53
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 55
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object p4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 56
    instance-of v0, p3, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    check-cast p3, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .end local p3
    iput-object p3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    return-object v0
.end method


# virtual methods
.method public actionInProgress()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public cancelBackgroundAction()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 7
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move v1, v0

    .line 119
    .end local v0           #bResult:Z
    .end local p1
    .local v1, bResult:I
    :goto_0
    return v1

    .line 105
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 106
    iput-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 109
    :cond_1
    if-nez p1, :cond_2

    move v1, v0

    .line 110
    .restart local v1       #bResult:I
    goto :goto_0

    .line 113
    .end local v1           #bResult:I
    :cond_2
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    .end local p1
    invoke-direct {v2, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 115
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mIsForceLiveUpdate:Z

    .line 116
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;

    invoke-direct {v2, p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V

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

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 118
    const/4 v0, 0x1

    move v1, v0

    .line 119
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "objs"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    .end local p1
    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    .line 94
    :cond_0
    return-object v0
.end method

.method public notifyProgressAbort()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataHandler(Landroid/os/Handler;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setUIHandler(Landroid/os/Handler;)V

    .line 68
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->cancelBackgroundAction()V

    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 1
    .parameter "dataPlugin"

    .prologue
    .line 61
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 63
    :cond_0
    return-void
.end method

.method public setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "objTarget"
    .parameter "objInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 124
    check-cast p2, Ljava/util/List;

    .end local p2
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaContent:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 131
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    .line 134
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    .line 135
    return-void
.end method
