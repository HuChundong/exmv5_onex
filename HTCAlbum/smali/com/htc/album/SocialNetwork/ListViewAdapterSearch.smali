.class public Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;
.super Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
.source "ListViewAdapterSearch.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewAdapterSearch"

.field public static final REQUEST_DATA_UPDATE_BY_FILTER:I = 0x9c41

.field public static final REQUEST_FRIENDSLIST_BY_FILTER:I = 0x9c42


# instance fields
.field public final strTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 26
    const-string v0, "ListViewAdapterSearch"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->strTag:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, AccountOwner:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .local p2, FriendList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 229
    :cond_1
    :goto_0
    return-object v4

    .line 196
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v4, listFinal:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v6, 0x1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-ne v6, v7, :cond_3

    .line 200
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 205
    :cond_3
    invoke-interface {v4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 210
    .local v3, indexList:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 211
    .local v5, nSize:I
    const/4 v0, 0x0

    .line 212
    .local v0, bInsertSuccess:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_5

    .line 214
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 216
    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    const/4 v0, 0x1

    .line 221
    :cond_5
    if-nez v0, :cond_4

    .line 223
    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 212
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "strFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v9, 0x0

    .line 234
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v9

    .line 321
    :goto_0
    return-object v5

    .line 236
    :cond_1
    const-string v10, "Kabaeva"

    const-string v11, "[HTCAlbum][ListViewAdapterSearch][filterList]: +"

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v6, 0x0

    .line 241
    .local v6, listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getTop5FriendList()Ljava/util/ArrayList;

    move-result-object v6

    .line 242
    if-nez v6, :cond_2

    .line 244
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .restart local v6       #listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_2
    const/4 v0, 0x0

    .line 249
    .local v0, bAddTop5:Z
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v0, 0x1

    .line 251
    :cond_3
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 253
    const-string v10, "Kabaeva"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][ListViewAdapterSearch][filterList] List size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 261
    .local v4, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 264
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_4

    .line 266
    const/4 v1, 0x0

    .line 269
    .local v1, bInTop5:Z
    if-eqz v0, :cond_6

    .line 271
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 273
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 275
    .local v8, top5_index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, strTop5Name:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_5

    .line 278
    const/4 v1, 0x1

    .line 285
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #strTop5Name:Ljava/lang/String;
    .end local v8           #top5_index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_6
    if-nez v1, :cond_4

    .line 287
    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 288
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_7

    .line 289
    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 290
    :cond_7
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    .end local v1           #bInTop5:Z
    .end local v4           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_9

    .line 314
    const-string v10, "ListViewAdapterSearch"

    const-string v11, "[HTCAlbum][ListViewAdapterSearch]: KA>>> 2 list size is Zero."

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 315
    goto/16 :goto_0

    .line 319
    :cond_9
    const-string v9, "ListViewAdapterSearch"

    const-string v10, "[HTCAlbum][ListViewAdapterSearch][filterList]: -"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onErrorNoList(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 36
    const-string v0, "ListViewAdapterSearch"

    const-string v1, "[HTCAlbum][ListViewAdapterSearch][onErrorNoList]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncListComplete(Landroid/os/Message;)V

    .line 38
    return-void
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 104
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onMessageHandler(Landroid/os/Message;)V

    .line 107
    :goto_0
    return-void

    .line 65
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestDataUpdateByFilter(Landroid/os/Message;)V

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestFriendsByFilter(Landroid/os/Message;)V

    goto :goto_0

    .line 71
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestAccountManager()V

    goto :goto_0

    .line 74
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 77
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 80
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 83
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncConnection()V

    goto :goto_0

    .line 86
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 92
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 95
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorConnection()V

    goto :goto_0

    .line 98
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorNoActiveUser()V

    goto :goto_0

    .line 101
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_a
        0x2760 -> :sswitch_b
        0x2761 -> :sswitch_c
        0x4e20 -> :sswitch_3
        0x4e23 -> :sswitch_4
        0x4e28 -> :sswitch_5
        0x4e2d -> :sswitch_2
        0x4e84 -> :sswitch_6
        0x4e85 -> :sswitch_7
        0x4e88 -> :sswitch_8
        0x4e89 -> :sswitch_9
        0x9c41 -> :sswitch_0
        0x9c42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRequestDataUpdateByFilter(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x2724

    const/4 v2, 0x0

    .line 111
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 143
    const v0, 0x9c42

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 144
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 115
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 127
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    const-string v0, "ListViewAdapterSearch"

    const-string v1, "[HTCAlbum][ListViewAdapterSearch][ERROR_NO_ACTIVEUSER]: msg.obj == null. set to false."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    const/16 v0, 0x4e20

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 133
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 138
    :sswitch_2
    const/16 v0, 0x4e23

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 139
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2760 -> :sswitch_1
        0x2761 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFriendlist(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    const-string v0, "ListViewAdapterSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewAdapterSearch][onRequestFriendlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onEnableMultipleFriends()Z

    move-result v0

    if-ne v4, v0, :cond_3

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;ZZ)Z

    .line 164
    :cond_2
    :goto_0
    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v5, v3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;ZZ)Z

    goto :goto_0
.end method

.method protected onRequestFriendsByFilter(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 168
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, listCombine:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 179
    const-string v1, ""

    .line 180
    .local v1, strFilter:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #strFilter:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 182
    .restart local v1       #strFilter:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->syncListItem(Ljava/util/List;Ljava/lang/String;)V

    .line 184
    const/16 v2, 0x4e8d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 185
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 186
    const/16 v2, 0x272d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 190
    return-void
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 44
    const-string v2, "ListViewAdapterSearch"

    const-string v3, "[HTCAlbum][ListViewAdapterSearch][onSyncListComplete]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, listCombine:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 51
    const-string v1, ""

    .line 52
    .local v1, strFilter:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->syncListItem(Ljava/util/List;Ljava/lang/String;)V

    .line 54
    const/16 v2, 0x4e8d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 55
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 56
    const/16 v2, 0x272d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 57
    return-void
.end method

.method public syncListItem(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "strFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v7, 0x1

    .line 326
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->onRelease()V

    .line 330
    :cond_0
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 338
    const/4 v3, 0x0

    .line 340
    .local v3, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v0, 0x1

    .line 341
    .local v0, bAddTop5:Z
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 344
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getTop5FriendList()Ljava/util/ArrayList;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 349
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 350
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 351
    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 352
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 357
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 359
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v2, :cond_3

    .line 361
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 362
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 375
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_2
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 366
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    .line 368
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 372
    :cond_4
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 380
    .end local v2           #nIndex:I
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 382
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 383
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 384
    const v4, 0x20401f0

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 385
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #nIndex:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_b

    .line 390
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 392
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v2, :cond_9

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 395
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 408
    :goto_3
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v4, :cond_7

    .line 412
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    .line 388
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 397
    :cond_8
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 399
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_a

    .line 401
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 405
    :cond_a
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 416
    .end local v0           #bAddTop5:Z
    .end local v1           #listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v2           #nIndex:I
    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_b
    const/16 v4, 0x4e8d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 417
    return-void
.end method
