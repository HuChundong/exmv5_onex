.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "AdapterSceneSocialNetwork.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdapterSceneSocialNetwork"

.field public static final RETRY_COUNT_CONNECTION:I = 0x3


# instance fields
.field protected mConnectionRetry:I

.field protected mFirstVisibleIndex:I

.field protected mHandlerData:Landroid/os/Handler;

.field public mHandlerUI:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemReuqested:Ljava/lang/Object;

.field protected mLastErrorState:I

.field protected mLastVisibleIndex:I

.field protected mList:Ljava/util/List;

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

.field protected mUIScrollState:I

.field protected mUIState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    .line 33
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    .line 34
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 36
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 37
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    .line 38
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastErrorState:I

    .line 39
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    .line 40
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 41
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mConnectionRetry:I

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 337
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 131
    :cond_0
    return v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 2
    .parameter "pos"

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, obj:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemRequest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    return-object v0
.end method

.method public getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 77
    const/16 v1, 0x4ee9

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    .line 82
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 83
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, 0x1

    sget v3, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 87
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 88
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDefaultImageResource(Landroid/content/Context;I)V

    .line 89
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onCreate()V

    .line 90
    return-void
.end method

.method public onDataRemoveNotify(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    .line 106
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->setDataHandler(Landroid/os/Handler;)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 109
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V

    .line 111
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 113
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V

    .line 118
    :cond_1
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 120
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    return-void
.end method

.method protected onErrorAccountAuthentication()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method protected abstract onErrorConnection()V
.end method

.method protected abstract onErrorNoList()V
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->isDestroyingAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 303
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 328
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onErrorAccountAuthentication()V

    goto :goto_0

    .line 308
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 309
    const/16 v0, 0x4e89

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 315
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    goto :goto_0

    .line 319
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->notifyDataSetChanged()V

    goto :goto_0

    .line 325
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onSyncAccountAuthentication()V

    goto :goto_0

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x276b -> :sswitch_0
        0x4e8d -> :sswitch_3
        0x4ea7 -> :sswitch_4
        0x4f4d -> :sswitch_1
        0x4f4e -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x4eec

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    .line 99
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    .line 102
    :cond_0
    return-void
.end method

.method protected onRequestAccountAuthentication()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x4eeb

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    .line 95
    return-void
.end method

.method protected onSyncAccountAuthentication()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method protected abstract onSyncConnection()V
.end method

.method protected abstract onSyncListComplete()V
.end method

.method protected abstract onSyncPhotoComplete(Landroid/os/Message;)V
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    :cond_0
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    .line 254
    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public setFirstVisibleIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 182
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 184
    return-void
.end method

.method public setHandlerData(Landroid/os/Handler;)V
    .locals 0
    .parameter "hData"

    .prologue
    .line 233
    return-void
.end method

.method public setLastVisibleIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 177
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 179
    return-void
.end method

.method public abstract setScrollState(III)V
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    .line 280
    return-void
.end method

.method public abstract setVisibleRange(II)V
.end method

.method protected abstract syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
.end method
