.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.super Landroid/widget/BaseAdapter;
.source "AdapterBaseSocialNetwork.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdapterBaseSocialNetwork"

.field public static final RETRY_COUNT_CONNECTION:I = 0x3


# instance fields
.field protected mConnectionRetry:I

.field protected mContext:Landroid/app/Activity;

.field protected mFirstVisibleIndex:I

.field protected mHandlerData:Landroid/os/Handler;

.field protected mHandlerUI:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemReuqested:Ljava/lang/Object;

.field protected mLastErrorState:I

.field protected mList:Ljava/util/List;

.field protected mMainView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

.field protected mUIScrollState:I

.field protected mUIState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    .line 35
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    .line 36
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 39
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    .line 40
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 41
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    .line 42
    const/16 v0, 0x4f4c

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    .line 43
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 49
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mMainView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 343
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    .line 66
    return-void
.end method


# virtual methods
.method public attachMainView(Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;)V
    .locals 2
    .parameter "mainView"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mMainView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 74
    const-string v0, "AdapterBaseSocialNetwork"

    const-string v1, "[HTCAlbum][AdapterBaseSocialNetwork][attachMainView]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 140
    :cond_0
    return v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "pos"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, obj:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 149
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 158
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemRequest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    return-object v0
.end method

.method public getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "nIndex"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mMainView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 87
    const/16 v1, 0x4ee9

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    .line 92
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 93
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, 0x1

    sget v3, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 97
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 98
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDefaultImageResource(Landroid/content/Context;I)V

    .line 99
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onCreate()V

    .line 100
    return-void
.end method

.method public onDataRemoveNotify(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    .line 115
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setDataHandler(Landroid/os/Handler;)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 118
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V

    .line 120
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 122
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V

    .line 127
    :cond_1
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 129
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    .line 131
    return-void
.end method

.method protected onErrorAccountAuthentication()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method protected abstract onErrorConnection()V
.end method

.method protected abstract onErrorNoList(Landroid/os/Message;)V
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 297
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    .line 298
    const/16 v0, 0x4e89

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 304
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    goto :goto_0

    .line 308
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->notifyDataSetChanged()V

    goto :goto_0

    .line 314
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onSyncAccountAuthentication()V

    goto :goto_0

    .line 317
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onErrorAccountAuthentication()V

    goto :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x276b -> :sswitch_4
        0x4e8d -> :sswitch_2
        0x4ea7 -> :sswitch_3
        0x4f4d -> :sswitch_0
        0x4f4e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x4eec

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    .line 109
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    .line 111
    return-void
.end method

.method protected onRequestAccountAuthentication()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x4eeb

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    .line 105
    return-void
.end method

.method protected onSyncAccountAuthentication()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method protected abstract onSyncConnection()V
.end method

.method protected abstract onSyncListComplete(Landroid/os/Message;)V
.end method

.method protected abstract onSyncPhotoComplete(Landroid/os/Message;)V
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    :cond_0
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public setHandlerData(Landroid/os/Handler;)V
    .locals 0
    .parameter "hData"

    .prologue
    .line 237
    return-void
.end method

.method public abstract setScrollState(II)V
.end method

.method public setScrollState(IIII)V
    .locals 0
    .parameter "nScrollState"
    .parameter "nFirstIndex"
    .parameter "nLastIndex"
    .parameter "nTotal"

    .prologue
    .line 189
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    .line 284
    return-void
.end method

.method public abstract setVisibleRange(II)V
.end method

.method protected abstract syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
.end method
