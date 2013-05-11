.class public abstract Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;
.source "AdapterBaseOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private collectionMgr:Lcom/htc/album/helper/FolderManager;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

.field protected mHandlerData:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field protected mIntent:Landroid/content/Intent;

.field protected mItemReuqested:Ljava/lang/Object;

.field protected mMediaType:I

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

.field protected mScrollState:I

.field protected mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

.field protected mVisibleIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 39
    const-string v0, "AdapterBaseOnlineFolder"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    .line 41
    iput v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mVisibleIndex:I

    .line 42
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 44
    new-instance v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;-><init>(Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    .line 45
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 46
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    .line 47
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    .line 48
    iput v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    .line 49
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mIntent:Landroid/content/Intent;

    .line 50
    iput v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mMediaType:I

    .line 51
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 53
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    .line 55
    new-instance v0, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->collectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 57
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 80
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setUIHandler(Landroid/os/Handler;)V

    .line 81
    return-void
.end method


# virtual methods
.method public addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V
    .locals 4
    .parameter "notify"

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 88
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, szIdentity:Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "SceneOnlineFolder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 91
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 94
    return-void
.end method

.method public flagUpdateIsLoading(Z)V
    .locals 4
    .parameter "bIsLoading"

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    check-cast v1, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isSecureOnDestroyAdapter()Z

    move-result v1

    if-eq v2, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 366
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isNotifyChange"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    const-string v1, "isNotifyChangeIndex"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 370
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0
.end method

.method public flagUpdateNotifyChange()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    check-cast v1, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isSecureOnDestroyAdapter()Z

    move-result v1

    if-eq v2, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 350
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isNotifyChange"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    const-string v1, "isNotifyChangeIndex"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 353
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0
.end method

.method public flagUpdateNotifyChangeIndex(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x1

    .line 325
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    check-cast v1, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isSecureOnDestroyAdapter()Z

    move-result v1

    if-eq v3, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 333
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isNotifyChange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    const-string v1, "isNotifyChangeIndex"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    const-string v1, "notifyChangeIndex"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getItemRequest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    return-object v0
.end method

.method public getflagVisibleIndex()I
    .locals 3

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, nIndex:I
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 376
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "visble_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 377
    return v1
.end method

.method protected loadDataFromDatabase(ILjava/util/ArrayList;)V
    .locals 5
    .parameter "nMediaType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, listAlbumCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v2, 0x0

    .line 271
    const-string v3, "AdapterBaseOnlineFolder"

    const-string v4, "[loadDataFromDatabase]: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mIntent:Landroid/content/Intent;

    const-string v4, "MimeTypeFilter"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, filter:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->collectionMgr:Lcom/htc/album/helper/FolderManager;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0, v2}, Lcom/htc/album/helper/FolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 274
    .local v1, listLocal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    const-string v2, "AdapterBaseOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadDataFromDatabase]: All: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .end local v0           #filter:Ljava/lang/String;
    .end local v1           #listLocal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_0
    move-object v0, v2

    .line 272
    goto :goto_0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 214
    :cond_0
    return-void
.end method

.method public onLoadData()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 99
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 100
    new-instance v3, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$1;-><init>(Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    .line 110
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v3, v3, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    if-ne v5, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->enableRecentAlbumList()V

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v3, v3, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentVideo:Z

    if-ne v5, v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->enableRecentVideoList()V

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v3, v3, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnablePhotoOfMe:Z

    if-ne v5, v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->enablePhotoOfMeAlbumList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onDeInit()V

    .line 132
    :cond_3
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 133
    .local v1, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 138
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 139
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v4, "dummy_account"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_4
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, szAlbumListPlugin:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v3, v2, v4}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createAlbumListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 148
    .end local v2           #szAlbumListPlugin:Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget v6, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 155
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 156
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V

    .line 160
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :goto_1
    return-void

    .line 122
    .end local v1           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdapterBaseOnlineFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AdapterBaseOnlineFolder][onLoadData]1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :catch_1
    move-exception v0

    .line 164
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "AdapterBaseOnlineFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AdapterBaseOnlineFolder][onLoadData]2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    goto :goto_0

    .line 233
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x4f4d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUnloadData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onPause()V

    .line 177
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 189
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_1
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 196
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 197
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setDataHandler(Landroid/os/Handler;)V

    .line 198
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 199
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdapterBaseOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseOnlineFolder][onUnloadData]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 193
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "AdapterBaseOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseOnlineFolder][onUnloadData]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onVerifyImageStatus(I)V
    .locals 9
    .parameter "nIndexTrigger"

    .prologue
    .line 282
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v6, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneNotify:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    check-cast v6, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-virtual {v6}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isSecureOnDestroyAdapter()Z

    move-result v6

    if-eq v7, v6, :cond_0

    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, nFirstIndex:I
    const/4 v1, 0x0

    .line 290
    .local v1, bForceUpdate:Z
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getflagVisibleIndex()I

    move-result v6

    iput v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mVisibleIndex:I

    .line 291
    const/4 v6, -0x1

    if-ne v6, p1, :cond_4

    .line 293
    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mVisibleIndex:I

    .line 294
    const/4 v1, 0x1

    .line 299
    :goto_1
    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 300
    .local v5, nLastIndex:I
    if-gtz v5, :cond_2

    .line 301
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v6

    add-int v5, v2, v6

    .line 303
    :cond_2
    const/4 v4, -0x1

    .line 304
    .local v4, nIntegrity:I
    const/4 v0, 0x0

    .line 305
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const-string v6, "AdapterBaseOnlineFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterBaseOnlineFolder][onVerifyImageStatus]: grid index range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move v3, v2

    .local v3, nIndex:I
    :goto_2
    if-lt v5, v3, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getCount()I

    move-result v6

    if-gt v6, v3, :cond_5

    .line 310
    const-string v6, "AdapterBaseOnlineFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterBaseOnlineFolder][onVerifyImageStatus]: index out of bound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->flagUpdateNotifyChange()V

    goto :goto_0

    .line 297
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    .end local v4           #nIntegrity:I
    .end local v5           #nLastIndex:I
    :cond_4
    move v2, p1

    goto :goto_1

    .line 313
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v3       #nIndex:I
    .restart local v4       #nIntegrity:I
    .restart local v5       #nLastIndex:I
    :cond_5
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-nez v0, :cond_6

    .line 306
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 316
    :cond_6
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v6, v3, v0, v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;Z)I

    move-result v4

    goto :goto_3
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    .line 220
    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 246
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 249
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "service_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "service_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceURL:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 252
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "album_update"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 253
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "recent_list"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    .line 255
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "sort_list"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    .line 256
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "flag_display"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsFlagDisplay:Z

    .line 257
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "from_insde"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsInternal:Z

    .line 258
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 383
    return-void
.end method
