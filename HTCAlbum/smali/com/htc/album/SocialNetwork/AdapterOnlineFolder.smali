.class public Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;
.super Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;
.source "AdapterOnlineFolder.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;",
        "Landroid/widget/SectionIndexer;",
        "Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterOnlineFolder"


# instance fields
.field protected mDataBundle:Landroid/os/Bundle;

.field private mFirstActivity:Z

.field private mIsFilterPhotoOfMe:Z

.field private mIsFilterVideoAlbum:Z

.field private mIsInternal:Z

.field protected mIsLatest:Z

.field protected mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

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

.field private mTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field protected mUIState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 50
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    .line 53
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 55
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    .line 56
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstActivity:Z

    .line 58
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsFilterPhotoOfMe:Z

    .line 59
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsFilterVideoAlbum:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mTList:Ljava/util/ArrayList;

    .line 63
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    .line 68
    return-void
.end method

.method private initAccountConnection(Z)V
    .locals 4
    .parameter "bNeedToCheckAccount"

    .prologue
    const/4 v3, 0x0

    .line 236
    if-eqz p1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 241
    :goto_0
    const/4 v0, 0x0

    .line 243
    .local v0, bret:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v0

    .line 255
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 257
    const/16 v1, 0x2724

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 259
    :cond_1
    return-void

    .line 239
    .end local v0           #bret:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveDummyAccount()V

    goto :goto_0

    .line 249
    .restart local v0       #bret:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method private setListCategory()V
    .locals 3

    .prologue
    .line 720
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsFlagDisplay:Z

    if-nez v1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setListCategory]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 731
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v0           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 732
    .restart local v0       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 733
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setListLoader(Z)V
    .locals 5
    .parameter "bIsEnable"

    .prologue
    .line 353
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsInternal:Z

    if-nez v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const-string v2, "AdapterOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][setListLoader]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 366
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 368
    const-string v0, ""

    .line 370
    .local v0, txtLoading:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0044

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 373
    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v2, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 374
    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v0           #txtLoading:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAccountIsAvailable()Z
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x1

    .line 172
    .local v0, bIsAvailable:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 180
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public filterPhotoOfMeAlbum(Z)V
    .locals 0
    .parameter "bIsFilter"

    .prologue
    .line 848
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsFilterPhotoOfMe:Z

    .line 849
    return-void
.end method

.method public filterVideoAlbum(Z)V
    .locals 0
    .parameter "bIsFilter"

    .prologue
    .line 853
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsFilterVideoAlbum:Z

    .line 854
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    :cond_0
    return v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    return-object v0
.end method

.method public getFactoryIdentifiers(I)I
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public getFactorySize()I
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "AdapterOnlineFolder"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1
    .parameter "id"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-object v0
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-object v0
.end method

.method public bridge synthetic getPrototypeByIndex(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 843
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 833
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onErrorConnection()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onNotifyUpdateComplete()V

    .line 584
    return-void
.end method

.method public onErrorNoList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 588
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onErrorNoList]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    if-nez v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iput-boolean v5, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 592
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v0, :cond_2

    .line 594
    :cond_1
    const/16 v0, 0x4e24

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 600
    :goto_0
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 608
    :goto_1
    return-void

    .line 598
    :cond_2
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 605
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 606
    const/16 v0, 0x2763

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 5
    .parameter "downloadListener"

    .prologue
    const/16 v4, 0x4ee9

    .line 82
    iget v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    if-ne v4, v1, :cond_0

    .line 84
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onLoadData]: exits..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onLoadData]: Begin"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onLoadData()V

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 94
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 95
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncBackgroundService()V

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 107
    iput v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 108
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onLoadData]: End"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdapterOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][onLoadData]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    .line 290
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    :goto_0
    :sswitch_0
    return-void

    .line 292
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 346
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 295
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestUserInfo()V

    goto :goto_0

    .line 298
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestAlbumlist()V

    goto :goto_0

    .line 301
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestRecentList()V

    goto :goto_0

    .line 304
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestNextOnList()V

    goto :goto_0

    .line 307
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestAuthentication()V

    goto :goto_0

    .line 310
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncConnection()V

    goto :goto_0

    .line 313
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncListComplete(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 328
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncAuthentication()V

    goto :goto_0

    .line 331
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onErrorConnection()V

    goto :goto_0

    .line 334
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onErrorNoList()V

    goto :goto_0

    .line 337
    :sswitch_c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListLoader(Z)V

    goto :goto_0

    .line 340
    :sswitch_d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListLoader(Z)V

    goto :goto_0

    .line 343
    :sswitch_e
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncBackgroundService()V

    goto :goto_0

    .line 292
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_c
        0x2728 -> :sswitch_d
        0x274c -> :sswitch_a
        0x2761 -> :sswitch_b
        0x4e21 -> :sswitch_1
        0x4e24 -> :sswitch_2
        0x4e2e -> :sswitch_3
        0x4e2f -> :sswitch_4
        0x4e4c -> :sswitch_5
        0x4e84 -> :sswitch_6
        0x4e88 -> :sswitch_7
        0x4e89 -> :sswitch_8
        0x4e8d -> :sswitch_0
        0x4ea2 -> :sswitch_e
        0x4ea8 -> :sswitch_9
    .end sparse-switch
.end method

.method public onRequestAlbumlist()V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 404
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onRequestAlbumlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onRequestAlbumlist]: force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumList(Ljava/util/List;Z)Z

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    const/16 v0, 0x2761

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onRequestAuthentication()V
    .locals 2

    .prologue
    .line 464
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestAuthentication]: begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitAccountAuthentication()V

    .line 468
    :cond_0
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestAuthentication]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onRequestNextOnList()V
    .locals 2

    .prologue
    .line 422
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestNextOnList]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumNextOnList(Z)Z

    .line 425
    :cond_0
    return-void
.end method

.method public onRequestRecentList()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestRecentList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumRecentList(Z)Z

    .line 419
    :cond_0
    return-void
.end method

.method public onRequestUserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 382
    const-string v2, "AdapterOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][onRequestUserInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 386
    .local v1, szUIDs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 387
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    .line 391
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 393
    const/16 v2, 0x4e24

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 399
    :goto_1
    return-void

    .line 397
    :cond_1
    const/16 v2, 0x2761

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onResume()V

    .line 78
    return-void
.end method

.method public onSyncAuthentication()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 472
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onSyncAuthentication]: begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const/16 v0, 0x4e24

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 484
    :cond_0
    :goto_0
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onSyncAuthentication]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void

    .line 480
    :cond_1
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 481
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onSyncAuthentication]: No Account Authentication."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSyncConnection()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 428
    const-string v5, "AdapterOnlineFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterOnlineFolder][onSyncConnection]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v5, :cond_6

    .line 432
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    const-string v7, "first_activity"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstActivity:Z

    .line 433
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstActivity:Z

    if-eqz v5, :cond_4

    .line 434
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v7, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 435
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    const/4 v0, 0x0

    .line 437
    .local v0, account:[Landroid/accounts/Account;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 440
    .local v1, accountMgr:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 443
    .end local v1           #accountMgr:Landroid/accounts/AccountManager;
    :cond_0
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v0, :cond_3

    move-object v5, v6

    :goto_0
    invoke-virtual {v7, v5}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;

    move-result-object v2

    .line 444
    .local v2, pdata:Lcom/htc/opensense/album/plugin/PersonData;
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 446
    :cond_1
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 447
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/PersonData;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v2           #pdata:Lcom/htc/opensense/album/plugin/PersonData;
    .end local v3           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_2
    :goto_1
    const/16 v5, 0x4e4c

    invoke-virtual {p0, v5, v6, v9}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 462
    :goto_2
    return-void

    .line 443
    .restart local v0       #account:[Landroid/accounts/Account;
    .restart local v3       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_3
    aget-object v5, v0, v9

    goto :goto_0

    .line 450
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v3           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_4
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    const-string v7, "user_id"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, userId:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 453
    :cond_5
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 454
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    .end local v4           #userId:Ljava/lang/String;
    :cond_6
    const/16 v5, 0x4e21

    invoke-virtual {p0, v5, v6, v9}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_2
.end method

.method public onSyncListComplete()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncListComplete(Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method public onSyncListComplete(Ljava/lang/Object;)V
    .locals 11
    .parameter "object"

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 492
    const-string v6, "AdapterOnlineFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterOnlineFolder][onSyncListComplete]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, bundleExtra:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 497
    .local v1, bIsUpdated:Z
    if-eqz p1, :cond_0

    move-object v2, p1

    .line 499
    check-cast v2, Landroid/os/Bundle;

    .line 500
    const-string v6, "isLatest"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 501
    const-string v6, "isUpdated"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 502
    const-string v6, "AdapterOnlineFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterOnlineFolder][onSyncListComplete]: latest: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " updated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v6, :cond_7

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, bIsFirstTime:Z
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 508
    const/4 v0, 0x1

    .line 510
    :cond_1
    if-eqz v2, :cond_9

    .line 512
    if-eqz v1, :cond_2

    .line 513
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncListItem(Ljava/lang/Object;)V

    .line 518
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    if-nez v6, :cond_6

    .line 520
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iput-boolean v4, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 521
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableCacheList()Z

    move-result v6

    if-eqz v6, :cond_a

    move v3, v4

    .line 522
    .local v3, pluginEnableCache:Z
    :goto_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    if-eqz v3, :cond_b

    .line 524
    :cond_4
    const/16 v6, 0x4e24

    invoke-virtual {p0, v6, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 530
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 532
    .end local v3           #pluginEnableCache:Z
    :cond_6
    if-eqz v0, :cond_c

    .line 533
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onNotifyUpdateComplete()V

    .line 537
    .end local v0           #bIsFirstTime:Z
    :cond_7
    :goto_3
    if-eqz v2, :cond_d

    .line 539
    if-eqz v1, :cond_8

    .line 540
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    .line 549
    :cond_8
    :goto_4
    const/16 v4, 0x4e47

    const/16 v5, 0xbb8

    invoke-virtual {p0, v4, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 550
    return-void

    .line 516
    .restart local v0       #bIsFirstTime:Z
    :cond_9
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncListItem(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    move v3, v5

    .line 521
    goto :goto_1

    .line 526
    .restart local v3       #pluginEnableCache:Z
    :cond_b
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v6, :cond_5

    .line 528
    const/16 v6, 0x2761

    invoke-virtual {p0, v6, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_2

    .line 534
    .end local v3           #pluginEnableCache:Z
    :cond_c
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 535
    const/16 v4, 0x4e88

    invoke-virtual {p0, v4, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_3

    .line 543
    .end local v0           #bIsFirstTime:Z
    :cond_d
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    goto :goto_4
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 555
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 556
    .local v1, bundleNotify:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 557
    .local v3, nIndex:I
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 558
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const/4 v2, 0x0

    .line 563
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v4, :cond_0

    .line 565
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    .line 566
    if-nez v2, :cond_2

    .line 568
    const-string v4, "AdapterOnlineFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image cache is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 575
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 114
    const/16 v0, 0x4ee9

    iget v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    if-eq v0, v1, :cond_0

    .line 116
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]: skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 121
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onUnloadData()V

    .line 124
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 262
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataBundle]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz p1, :cond_0

    .line 265
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    .line 266
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setDataRequest(Ljava/lang/Object;)V

    .line 268
    :cond_0
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataBundle]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0
    .parameter "plugin"

    .prologue
    .line 163
    check-cast p1, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .end local p1
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 164
    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 272
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setDataRequest(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 280
    :cond_0
    :goto_0
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Display name\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Force update\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Recent list\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Sort\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: End "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setInternal(Z)V
    .locals 3
    .parameter "bIsInternal"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    .line 72
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setInternal]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 4
    .parameter "control"

    .prologue
    .line 859
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 860
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->release()V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v0

    .line 867
    .local v0, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    goto :goto_0
.end method

.method public setScrollState(III)V
    .locals 2
    .parameter "nScrollState"
    .parameter "nFirstIndex"
    .parameter "nLastIndex"

    .prologue
    const/16 v1, 0x4f4d

    .line 739
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_0

    .line 741
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setScrollState]: skip 1.."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_0
    return-void

    .line 744
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    if-ne v0, p2, :cond_1

    .line 746
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setScrollState]: skip 2.."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_1
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 750
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 751
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 755
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 759
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    goto :goto_0

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4e

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 764
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 773
    return-void
.end method

.method public syncBackgroundService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 188
    .local v1, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 190
    .local v0, needToCheckAccount:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 192
    :cond_0
    const/16 v2, 0x2761

    invoke-virtual {p0, v2, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 233
    :cond_1
    :goto_1
    return-void

    .end local v0           #needToCheckAccount:Z
    :cond_2
    move v0, v3

    .line 188
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 197
    .restart local v0       #needToCheckAccount:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 202
    :cond_5
    const-string v4, "AdapterOnlineFolder"

    const-string v5, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: begin..."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v4

    if-ne v2, v4, :cond_1

    .line 207
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v4

    if-nez v4, :cond_6

    .line 209
    const-string v2, "AdapterOnlineFolder"

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: no account..."

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    goto :goto_1

    .line 214
    :cond_6
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v3

    if-ne v2, v3, :cond_8

    .line 216
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_7

    .line 218
    const-string v2, "AdapterOnlineFolder"

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_7
    const-string v2, "AdapterOnlineFolder"

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: account is changed!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->initAccountConnection(Z)V

    goto :goto_1

    .line 228
    :cond_8
    const-string v2, "AdapterOnlineFolder"

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService] InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->initAccountConnection(Z)V

    goto :goto_1
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    .line 779
    return-void
.end method

.method public syncListItem(Ljava/lang/Object;)V
    .locals 12
    .parameter "objList"

    .prologue
    const/4 v11, 0x0

    .line 613
    const/4 v0, 0x0

    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    move-object v0, p1

    .line 614
    check-cast v0, Ljava/util/List;

    .line 619
    const/4 v6, 0x0

    .line 620
    .local v6, refList:Ljava/util/List;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 622
    .local v7, tempList:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 624
    :cond_0
    const-string v8, "AdapterOnlineFolder"

    const-string v9, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Empty..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 708
    iput-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 709
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: new list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: clear old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 715
    invoke-virtual {p0, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 716
    :goto_1
    return-void

    .line 630
    :cond_1
    const/4 v1, 0x0

    .line 631
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v4, 0x0

    .line 632
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v5, 0x0

    .local v5, index:I
    move-object v2, v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v2, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_9

    .line 634
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getProfile()Lcom/htc/opensense/social/data/Album;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_start_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getPID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setPID(Ljava/lang/String;)V

    .line 636
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverUrlHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setCoverUrlHeader(Ljava/lang/String;)V

    .line 637
    const-string v8, ".ruplist"

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 638
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v9, 0x20401f1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 640
    :cond_2
    const-string v8, ".ruvlist"

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 642
    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsFilterVideoAlbum:Z

    if-eqz v8, :cond_4

    .line 632
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v2, v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v2       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_2

    .line 645
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00c0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 648
    :cond_5
    const-string v8, ".pomlist"

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 649
    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsFilterPhotoOfMe:Z

    if-nez v8, :cond_3

    .line 652
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00c1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 666
    :cond_6
    invoke-virtual {v1, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setIndex(I)V

    .line 667
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCreateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setDateTime(Ljava/lang/String;)V

    .line 668
    sget-object v8, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 670
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v8, :cond_7

    .line 671
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v8, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v4

    .line 673
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    .line 675
    iget-object v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v8, :cond_8

    .line 677
    iget-object v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v9, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1, v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 681
    :cond_8
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 684
    :catch_0
    move-exception v3

    .line 686
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][GridAlbumSocialNetwork][syncListItem] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/16 v8, 0x4e24

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 691
    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_9
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v8, v8, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v8, :cond_b

    .line 693
    :cond_a
    const-string v8, "AdapterOnlineFolder"

    const-string v9, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: No sorting required..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :goto_5
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListCategory()V

    goto/16 :goto_0

    .line 697
    :cond_b
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Sorting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 699
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Sorting complete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 684
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_4
.end method
