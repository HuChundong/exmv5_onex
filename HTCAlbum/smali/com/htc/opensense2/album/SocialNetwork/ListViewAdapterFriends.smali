.class public Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
.super Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;
.source "ListViewAdapterFriends.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewAdapterFriends"


# instance fields
.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

.field protected mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;-><init>(Landroid/app/Activity;)V

    .line 39
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 40
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 57
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->setUIHandler(Landroid/os/Handler;)V

    .line 58
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private syncListFriendList(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v3, 0x0

    .line 610
    .local v3, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v4, 0x0

    .line 611
    .local v4, wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 612
    .local v1, nCountPeople:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_0

    .line 613
    const/4 v4, 0x0

    .line 615
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .restart local v4       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :goto_1
    if-nez v4, :cond_1

    .line 623
    const-string v5, "ListViewAdapterFriends"

    const-string v6, "[HTCAlbum][ListViewAdapterFriends][syncListFriendList]: REQUEST_ACTIVEUSER: true"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 646
    :cond_0
    return-void

    .line 616
    .end local v4           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ListViewAdapterFriends"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ListViewAdapterFriends][syncListFriendList]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v4, 0x0

    .restart local v4       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto :goto_1

    .line 628
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v5

    if-nez v5, :cond_3

    .line 612
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    :cond_3
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 634
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 635
    sget-object v5, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 640
    :goto_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v5, :cond_2

    .line 643
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    goto :goto_2

    .line 637
    :cond_4
    sget-object v5, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3
.end method


# virtual methods
.method public getActiveUser()Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .locals 3

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 530
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_0
    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    return-object v0
.end method

.method public getFriendsCount()I
    .locals 3

    .prologue
    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, nCount:I
    const/4 v1, 0x0

    .line 536
    .local v1, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 540
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "pos"

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, nType:I
    const/4 v2, 0x0

    .line 497
    .local v2, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 499
    .restart local v2       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v3

    if-nez v3, :cond_2

    .line 500
    :cond_0
    const-string v3, "ListViewAdapterFriends"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ListViewAdapterFriends][getItemViewType]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mMainView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v3, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    const-string v3, "ListViewAdapterFriends"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ListViewAdapterFriends][getItemViewType]: Checked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x3

    :cond_1
    move v1, v0

    .line 520
    .end local v0           #nType:I
    .local v1, nType:I
    :goto_0
    return v1

    .line 514
    .end local v1           #nType:I
    .restart local v0       #nType:I
    :cond_2
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 515
    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .line 520
    .end local v0           #nType:I
    .restart local v1       #nType:I
    goto :goto_0

    .line 516
    .end local v1           #nType:I
    .restart local v0       #nType:I
    :cond_4
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 518
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, nPosition:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getPositionForSection(I)I

    move-result v0

    .line 467
    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, objList:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 482
    :cond_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 443
    const/4 v0, 0x1

    .line 445
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 446
    :cond_0
    const/4 v2, 0x0

    .line 459
    :goto_0
    return v2

    .line 448
    :cond_1
    const/4 v1, 0x0

    .line 450
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_3

    .line 451
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v2, v3, :cond_3

    .line 455
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v2, v0

    .line 459
    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onCreate()V

    .line 67
    new-instance v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-direct {v0}, Lcom/htc/opensense2/album/util/IndexerAlphabet;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 84
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onDestroy()V

    .line 85
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 86
    return-void
.end method

.method protected onErrorConnection()V
    .locals 3

    .prologue
    .line 306
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 312
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onErrorConnectionRetry()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorConnectionRetry]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/16 v0, 0x4eec

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4eed

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected onErrorNoActiveUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 330
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorNoActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->resetActiveAccount()V

    .line 339
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    if-lez v0, :cond_2

    .line 340
    const/16 v0, 0x2751

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 342
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    goto :goto_0

    .line 344
    :cond_2
    const/16 v0, 0x2760

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 345
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 351
    const/16 v0, 0x2767

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onErrorNoList(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 359
    const-string v1, "ListViewAdapterFriends"

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][onErrorNoList]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/16 v1, 0x4eee

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 366
    const/16 v1, 0x2761

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 368
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 370
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 377
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 379
    const/16 v1, 0x4e8d

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 380
    const/16 v1, 0x4e88

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 387
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 438
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onMessageHandler(Landroid/os/Message;)V

    .line 441
    :goto_0
    return-void

    .line 396
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestAccountManager()V

    goto :goto_0

    .line 399
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 402
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 405
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 408
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestAuthentication()V

    goto :goto_0

    .line 411
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncConnection()V

    goto :goto_0

    .line 414
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 417
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 420
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 423
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncAuthentication()V

    goto :goto_0

    .line 426
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorConnection()V

    goto :goto_0

    .line 429
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorConnectionRetry()V

    goto :goto_0

    .line 432
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorNoActiveUser()V

    goto :goto_0

    .line 435
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_a
        0x2751 -> :sswitch_b
        0x2760 -> :sswitch_c
        0x2761 -> :sswitch_d
        0x4e20 -> :sswitch_1
        0x4e23 -> :sswitch_2
        0x4e28 -> :sswitch_3
        0x4e2d -> :sswitch_0
        0x4e4c -> :sswitch_4
        0x4e84 -> :sswitch_5
        0x4e85 -> :sswitch_6
        0x4e88 -> :sswitch_7
        0x4e89 -> :sswitch_8
        0x4ea8 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onPause()V

    .line 79
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 80
    return-void
.end method

.method protected onRequestAccountManager()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitAccountLogin(Landroid/app/Activity;)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onRequestActiveUser(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 141
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onRequestActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getActiveUser(Z)Z

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getActiveUser(Z)Z

    goto :goto_0
.end method

.method public onRequestAuthentication()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onRequestAuthentication]: begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitAccountAuthentication()V

    .line 221
    :cond_0
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onRequestAuthentication]: end"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method protected onRequestDataUpdate(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x4e20

    const/4 v4, 0x0

    const/16 v3, 0x2724

    const/4 v2, 0x0

    .line 167
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 193
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 194
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 175
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 183
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 184
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 188
    :sswitch_2
    const/16 v0, 0x4e23

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 189
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2760 -> :sswitch_1
        0x2761 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFriendlist(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    const-string v0, "ListViewAdapterFriends"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][onRequestFriendlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;ZZ)Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v4, v3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;ZZ)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onResume()V

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    .line 73
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 75
    return-void
.end method

.method protected onSyncActiveUser(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x4e23

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 259
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncAuthentication()V
    .locals 6

    .prologue
    const/16 v5, 0x4e20

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 226
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncAuthentication]: begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistActiveUserCache()Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 231
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 238
    :goto_0
    const/16 v0, 0x2724

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 239
    const/16 v0, 0x4e84

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 246
    :cond_0
    :goto_1
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncAuthentication]: end"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void

    .line 234
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 241
    :cond_2
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 242
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncAuthentication]: No Account Authentication."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSyncConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isFlaggedLoginAction()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->resetFlagLoginAction()V

    .line 208
    const/16 v0, 0x4e84

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 211
    :cond_2
    const/16 v0, 0x4e4c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncListComplete]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 278
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 279
    const/16 v0, 0x4e88

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 285
    const/16 v0, 0x4e20

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 290
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v0, v1, :cond_0

    .line 295
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncPhotoComplete]SYNC_UISTATE_IDLE"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/FriendListPluginBase;)V
    .locals 2
    .parameter "plugin"

    .prologue
    .line 652
    const-string v0, "ListViewAdapterFriends"

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][setDataPlugin]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 654
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, bResult:Z
    const/16 v1, 0x4eee

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const-string v1, "ListViewAdapterFriends"

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]: no account..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 106
    const/16 v1, 0x274f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    const-string v1, "ListViewAdapterFriends"

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]: no change just skip!!"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v1, "ListViewAdapterFriends"

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]InitConnection.."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 119
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;)V
    .locals 7
    .parameter "objList"

    .prologue
    const/4 v6, 0x0

    .line 551
    const/4 v2, 0x0

    .local v2, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    move-object v2, p1

    .line 552
    check-cast v2, Ljava/util/List;

    .line 554
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v4, :cond_0

    .line 555
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->onRelease()V

    .line 557
    :cond_0
    const/4 v1, 0x0

    .line 558
    .local v1, nCountPeople:I
    if-eqz v2, :cond_1

    .line 559
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItemRequest()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, aPerson:Lcom/htc/opensense/social/PersonOp;
    const/4 v3, 0x0

    .line 570
    .local v3, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    if-lez v1, :cond_2

    .line 574
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 575
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 576
    const v4, 0x20401ef

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 577
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 584
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 585
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v0           #aPerson:Lcom/htc/opensense/social/PersonOp;
    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :goto_0
    const/16 v4, 0x4e8d

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 606
    return-void

    .line 586
    .restart local v0       #aPerson:Lcom/htc/opensense/social/PersonOp;
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_2
    if-nez p1, :cond_3

    .line 587
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 588
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 589
    const v4, 0x7f0a0052

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 590
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    :cond_3
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 596
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 597
    const v4, 0x20401f0

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 598
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListFriendList(Ljava/util/List;)V

    goto :goto_0

    .line 603
    .end local v0           #aPerson:Lcom/htc/opensense/social/PersonOp;
    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListFriendList(Ljava/util/List;)V

    goto :goto_0
.end method
