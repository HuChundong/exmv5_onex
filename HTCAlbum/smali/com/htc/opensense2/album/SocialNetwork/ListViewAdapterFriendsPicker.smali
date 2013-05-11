.class public Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
.super Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;
.source "ListViewAdapterFriendsPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewAdapterFriendsPicker"


# instance fields
.field protected mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;-><init>(Landroid/app/Activity;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 42
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->setUIHandler(Landroid/os/Handler;)V

    .line 43
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, nPosition:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getPositionForSection(I)I

    move-result v0

    .line 315
    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, objList:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 331
    :cond_0
    return-object v0
.end method

.method public isDeselectAll()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 424
    .local v0, count:I
    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v3

    .line 426
    :cond_1
    const/4 v2, 0x0

    .line 427
    .local v2, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 429
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 430
    .restart local v2       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 435
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 293
    const/4 v0, 0x1

    .line 295
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 296
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v2, v3, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 306
    :cond_1
    return v0
.end method

.method public isSelectAll()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 408
    .local v0, count:I
    if-nez v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v3

    .line 410
    :cond_1
    const/4 v2, 0x0

    .line 411
    .local v2, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 413
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 414
    .restart local v2       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 419
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onCreate()V

    .line 52
    new-instance v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-direct {v0}, Lcom/htc/opensense2/album/util/IndexerAlphabet;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onDestroy()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 68
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    .line 230
    const-string v0, "ListViewAdapterFriendsPicker"

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 232
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 233
    return-void
.end method

.method public onErrorNoList(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 237
    const-string v0, "ListViewAdapterFriendsPicker"

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onErrorNoList]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/16 v0, 0x2761

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 240
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    .line 244
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    .line 246
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 247
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 248
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 287
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onMessageHandler(Landroid/os/Message;)V

    .line 290
    :goto_0
    return-void

    .line 254
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestUserInfo()V

    goto :goto_0

    .line 257
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 260
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 263
    :sswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestAllCheckState(Z)V

    goto :goto_0

    .line 266
    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestAllCheckState(Z)V

    goto :goto_0

    .line 269
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncConnection()V

    goto :goto_0

    .line 272
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncUserInfo()V

    goto :goto_0

    .line 275
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 278
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 281
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onErrorConnection()V

    goto :goto_0

    .line 284
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_9
        0x2761 -> :sswitch_a
        0x4e21 -> :sswitch_0
        0x4e23 -> :sswitch_1
        0x4e28 -> :sswitch_2
        0x4e2b -> :sswitch_3
        0x4e2c -> :sswitch_4
        0x4e84 -> :sswitch_5
        0x4e86 -> :sswitch_6
        0x4e88 -> :sswitch_7
        0x4e89 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onPause()V

    .line 62
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 63
    return-void
.end method

.method public onRequestAllCheckState(Z)V
    .locals 6
    .parameter "bIsCheckStateOn"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 182
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    if-le v2, v1, :cond_1

    .line 184
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 185
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v3

    if-eq p1, v3, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const/16 v3, 0x4e8d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 189
    return-void
.end method

.method public onRequestDataUpdate(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v1, 0x4e23

    const/16 v4, 0x2724

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 174
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 150
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 162
    :sswitch_1
    const/16 v0, 0x4e21

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 163
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 168
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 169
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2760 -> :sswitch_1
        0x2761 -> :sswitch_2
    .end sparse-switch
.end method

.method public onRequestFriendlist(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 138
    const-string v0, "ListViewAdapterFriendsPicker"

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

    .line 139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;ZZ)Z

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;ZZ)Z

    goto :goto_0
.end method

.method public onRequestUserInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string v1, "ListViewAdapterFriendsPicker"

    const-string v2, "[HTCAlbum][ListViewAdapterFriendsPicker][onRequestUserInfo]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 130
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 131
    .local v0, szUIDs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v3

    .line 133
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/PersonOp;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    .line 134
    const/16 v1, 0x4e86

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 58
    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 192
    const-string v0, "ListViewAdapterFriendsPicker"

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/16 v0, 0x4e21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 194
    return-void
.end method

.method public onSyncListComplete(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 203
    const-string v0, "ListViewAdapterFriendsPicker"

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncListComplete]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    .line 208
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 209
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 210
    const/16 v0, 0x272d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 211
    const/16 v0, 0x4e95

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 212
    return-void
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 217
    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v0, v1, :cond_0

    .line 220
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 226
    :cond_0
    return-void
.end method

.method public onSyncUserInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    const-string v0, "ListViewAdapterFriendsPicker"

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncUserInfo]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v0, 0x4e23

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 199
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 8
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, bResult:Z
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->setUIHandler(Landroid/os/Handler;)V

    .line 82
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 84
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getDataHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    const-string v2, "ListViewAdapterFriendsPicker"

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v2, 0x274f

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v6, v2, :cond_4

    .line 99
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    const-string v2, "ListViewAdapterFriendsPicker"

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    const/16 v2, 0x2750

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 110
    :cond_4
    const-string v2, "ListViewAdapterFriendsPicker"

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 112
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;)V
    .locals 9
    .parameter "objList"

    .prologue
    .line 357
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v6, :cond_0

    .line 358
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->onRelease()V

    .line 360
    :cond_0
    const/4 v3, 0x0

    .local v3, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    move-object v3, p1

    .line 361
    check-cast v3, Ljava/util/List;

    .line 363
    if-eqz v3, :cond_4

    .line 365
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 367
    .local v1, nCountPeople:I
    if-nez v1, :cond_1

    .line 368
    const-string v6, "ListViewAdapterFriendsPicker"

    const-string v7, "[HTCAlbum][ListViewAdapterFriendsPicker][syncListItem]: people list count is 0"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v1           #nCountPeople:I
    :goto_0
    return-void

    .line 372
    .restart local v1       #nCountPeople:I
    :cond_1
    const/4 v4, 0x0

    .line 373
    .local v4, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v5, 0x0

    .line 375
    .local v5, wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    if-le v1, v2, :cond_4

    .line 377
    const/4 v5, 0x0

    .line 380
    :try_start_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .restart local v5       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :goto_2
    if-nez v5, :cond_3

    .line 375
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    .end local v5           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ListViewAdapterFriendsPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ListViewAdapterFriendsPicker][syncListItem]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v5, 0x0

    .restart local v5       #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto :goto_2

    .line 390
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getDataHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 391
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 392
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v6, :cond_2

    .line 396
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    goto :goto_3

    .line 400
    .end local v1           #nCountPeople:I
    .end local v2           #nIndex:I
    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v5           #wrapperTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_4
    const/16 v6, 0x4e8d

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public updateFileCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 341
    .local v0, tempPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v0, :cond_0

    const-string v1, "SEPARABLE_DIVIDER"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 346
    .end local v0           #tempPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->updateFriendList(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method
