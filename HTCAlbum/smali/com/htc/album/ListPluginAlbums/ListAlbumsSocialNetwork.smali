.class public Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;
.super Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;
.source "ListAlbumsSocialNetwork.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListAlbumsSocialNetwork"


# instance fields
.field protected mFolderBackground:Landroid/graphics/Bitmap;

.field protected mIsLatest:Z

.field private mPeopleOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .parameter "hostContext"
    .parameter "pluginContext"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method private setListCategory()V
    .locals 3

    .prologue
    .line 520
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsFlagDisplay:Z

    if-nez v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const-string v1, "ListAlbumsSocialNetwork"

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setListCategory]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 531
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v0           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 532
    .restart local v0       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 533
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setListLoader(Z)V
    .locals 5
    .parameter "bIsEnable"

    .prologue
    .line 492
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsInternal:Z

    if-nez v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const-string v2, "ListAlbumsSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ListAlbumsSocialNetwork][setListLoader]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 505
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 507
    const-string v0, ""

    .line 509
    .local v0, txtLoading:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0044

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 512
    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v2, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 513
    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v0           #txtLoading:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemSeparationKey(I)Ljava/lang/Object;
    .locals 2
    .parameter "pos"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, object:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v0

    .line 217
    .end local v0           #object:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getItemSeparationText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 226
    :cond_0
    return-object v0
.end method

.method public getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 11
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 230
    invoke-static {}, Lcom/htc/opensense/plugin/ItemViewProxy;->obtain()Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v9

    .line 233
    .local v9, itemView:Lcom/htc/opensense/plugin/ItemViewProxy;
    if-eqz v9, :cond_3

    .line 235
    const/4 v7, 0x0

    .line 236
    .local v7, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 237
    .restart local v7       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v7, :cond_3

    .line 242
    const v0, 0x7f03001e

    invoke-virtual {v9, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->setItemLayout(I)V

    .line 243
    const v0, 0x7f090047

    const-string v1, "setImageBitmap"

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 249
    const-string v10, ""

    .line 250
    .local v10, szPhotoCount:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 252
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20401f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 264
    :goto_0
    const/4 v6, 0x1

    .line 265
    .local v6, bIsIdle:Z
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v6, 0x0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageGridBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 274
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 276
    const v0, 0x7f090048

    const-string v1, "setImageBitmap"

    invoke-virtual {v9, v0, v1, v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 280
    :cond_1
    const-string v0, ".ruplist"

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20401f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 285
    :cond_2
    const v0, 0x7f090012

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/htc/opensense/plugin/ItemViewProxy;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 286
    const v0, 0x7f090049

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCreateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/htc/opensense/plugin/ItemViewProxy;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 291
    .end local v6           #bIsIdle:Z
    .end local v7           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #szPhotoCount:Ljava/lang/String;
    :cond_3
    return-object v9

    .line 254
    .restart local v7       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v10       #szPhotoCount:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v0

    if-ne v4, v0, :cond_5

    .line 256
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public loadData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-super {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->loadData()V

    .line 95
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryFolderRest(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 98
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 108
    :goto_0
    iput v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    .line 109
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 111
    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    .line 113
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->syncBackgroundService()V

    goto :goto_0
.end method

.method public onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z
    .locals 1
    .parameter "contextMenuItemId"
    .parameter "info"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onErrorConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    const-string v1, "ListAlbumsSocialNetwork"

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onErrorConnection]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 426
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 428
    return-void
.end method

.method public onErrorNoList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 432
    const-string v1, "ListAlbumsSocialNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][onErrorNoList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 434
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const/16 v1, 0x2728

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 436
    const/16 v1, 0x4e8d

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 437
    return-void
.end method

.method public onItemClick(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v4, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 148
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz v0, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.htc.album.SocialNetwork.ActivityMainOnline"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v4, "online_scene"

    const-class v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v4, "from_outside"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v4, "service_name"

    iget-object v5, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v5, "user_id"

    iget-object v4, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v4, "album_id"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v4, "album_name"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v4, ".ruplist"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    const-string v4, "flag_genuine"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getItemRequest()Ljava/lang/Object;

    move-result-object v3

    .line 173
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 178
    const-string v5, "from_tabhost"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_tabhost"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v5, "from_albumhost"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_albumhost"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v5, "from_tmoFaves"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_tmoFaves"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v5, "listviewPos"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "listviewPos"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v5, "fromMainActivity"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "fromMainActivity"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string v5, "user_name"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v5, "user_buddyicon"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_buddyicon"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v3

    .line 190
    check-cast v4, Landroid/os/Bundle;

    const-string v5, "from_tmoFaves"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v9, v4, :cond_5

    .line 192
    const/4 v2, 0x0

    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v3

    .line 193
    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 194
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]: facebook: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v4, v3

    .line 197
    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 198
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]: flickr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_4
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v5, "user_name"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v4, "photo_id"

    check-cast v3, Landroid/os/Bundle;

    .end local v3           #obj:Ljava/lang/Object;
    const-string v5, "photo_id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 208
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 485
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->onMessageHandler(Landroid/os/Message;)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 444
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestUserInfo()V

    goto :goto_0

    .line 447
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestAlbumlist()V

    goto :goto_0

    .line 450
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestRecentList()V

    goto :goto_0

    .line 453
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestNextOnList()V

    goto :goto_0

    .line 456
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncConnection()V

    goto :goto_0

    .line 459
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncListComplete()V

    goto :goto_0

    .line 462
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncPhotoComplete()V

    goto :goto_0

    .line 466
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->notifyDataSetChanged()V

    goto :goto_0

    .line 473
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onErrorConnection()V

    goto :goto_0

    .line 476
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onErrorNoList()V

    goto :goto_0

    .line 479
    :sswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListLoader(Z)V

    goto :goto_0

    .line 482
    :sswitch_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListLoader(Z)V

    goto :goto_0

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_a
        0x2728 -> :sswitch_b
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_9
        0x4e21 -> :sswitch_0
        0x4e24 -> :sswitch_1
        0x4e2e -> :sswitch_2
        0x4e2f -> :sswitch_3
        0x4e84 -> :sswitch_4
        0x4e88 -> :sswitch_5
        0x4e89 -> :sswitch_6
        0x4e8d -> :sswitch_7
    .end sparse-switch
.end method

.method public onRequestAlbumlist()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 367
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestAlbumlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumList(Ljava/util/List;Z)Z

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/16 v0, 0x2761

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onRequestNextOnList()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestNextOnList]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumNextOnList(Z)Z

    .line 387
    :cond_0
    return-void
.end method

.method public onRequestRecentList()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestRecentList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumRecentList(Z)Z

    .line 381
    :cond_0
    return-void
.end method

.method public onRequestUserInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 341
    const-string v3, "ListAlbumsSocialNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestUserInfo]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 345
    .local v2, szUIDs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 346
    iget-object v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_1
    iget-object v3, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 356
    const/16 v3, 0x4e24

    invoke-virtual {p0, v3, v7, v6}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 362
    :goto_2
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ListAlbumsSocialNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestUserInfo]: mSNManager = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v3, 0x2761

    invoke-virtual {p0, v3, v7, v6}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_2
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 390
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onSyncConnection]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/16 v0, 0x4e21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 392
    return-void
.end method

.method public onSyncListComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onSyncListComplete]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->syncListItem(Ljava/lang/Object;)V

    .line 401
    iget-boolean v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iput-boolean v4, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    .line 404
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 406
    const/16 v0, 0x4e24

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 412
    :goto_0
    iput-boolean v4, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    .line 415
    :cond_0
    return-void

    .line 410
    :cond_1
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhotoComplete()V
    .locals 3

    .prologue
    .line 419
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 420
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 51
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataBundle]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setDataRequest(Ljava/lang/Object;)V

    .line 56
    :cond_0
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataBundle]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected setDataRequest(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 60
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->setDataRequest(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 68
    :cond_0
    :goto_0
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Display name\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: user ids\t\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Force update\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Recent list\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableRecentList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Sort\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: End "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 79
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    .line 84
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mScrollState:I

    if-nez v0, :cond_0

    .line 87
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncBackgroundService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    const/4 v0, 0x0

    .line 301
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 307
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "isLoading"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v6, v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 326
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncListItem(Ljava/lang/Object;)V
    .locals 13
    .parameter "objList"

    .prologue
    const/4 v12, 0x0

    .line 541
    const/4 v0, 0x0

    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    move-object v0, p1

    .line 542
    check-cast v0, Ljava/util/List;

    .line 547
    const/4 v5, 0x0

    .line 548
    .local v5, refList:Ljava/util/List;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 550
    .local v6, tempList:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 552
    :cond_0
    const-string v9, "ListAlbumsSocialNetwork"

    const-string v10, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Empty..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    iget-object v5, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    .line 596
    iput-object v6, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    .line 597
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: new list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: clear old: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 603
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mItemReuqested:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 604
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "isLoading"

    invoke-virtual {v1, v9, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 606
    const/16 v9, 0x4e8d

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v12}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 607
    return-void

    .line 556
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    const/4 v7, 0x0

    .line 557
    .local v7, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v8, 0x0

    .line 558
    .local v8, wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 559
    .local v4, nCountAlbum:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    if-le v4, v3, :cond_3

    .line 561
    const/4 v8, 0x0

    .line 564
    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .restart local v8       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_2
    if-nez v8, :cond_2

    .line 559
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 566
    .end local v8           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_0
    move-exception v2

    .line 568
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v8, 0x0

    .restart local v8       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_2

    .line 574
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v7           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getProfile()Lcom/htc/opensense/social/data/Album;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    .line 575
    .restart local v7       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v9, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v7, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 576
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 579
    :cond_3
    iget-object v9, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v9, v9, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    if-nez v9, :cond_4

    .line 581
    const-string v9, "ListAlbumsSocialNetwork"

    const-string v10, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: No sorting required..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_4
    invoke-direct {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListCategory()V

    goto/16 :goto_0

    .line 585
    :cond_4
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Sorting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 587
    const-string v9, "ListAlbumsSocialNetwork"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Sorting complete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public unloadData()V
    .locals 2

    .prologue
    .line 117
    const/16 v0, 0x4ee9

    iget v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    if-eq v0, v1, :cond_0

    .line 119
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]: skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 122
    :cond_0
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->mUIState:I

    .line 124
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]:Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-super {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->unloadData()V

    .line 127
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 133
    :cond_1
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]:End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
