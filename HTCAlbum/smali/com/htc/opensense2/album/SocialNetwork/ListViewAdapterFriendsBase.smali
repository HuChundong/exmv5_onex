.class public Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterFriendsBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewAdapterFriendsBase"


# instance fields
.field private mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 19
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 31
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->onCreate(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->setNotifyHandler(Landroid/os/Handler;)V

    .line 33
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->start()V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->onDestroy()V

    .line 38
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 39
    return-void
.end method

.method protected onErrorConnection()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected onErrorNoList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 104
    return-void
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nPos"
    .parameter "aPerson"
    .parameter "bIsIdle"

    .prologue
    .line 42
    const/4 v7, 0x0

    .line 44
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    move-object v8, v7

    .line 64
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 50
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    move-object v8, v7

    .line 54
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 56
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getAvatarBitmap(Landroid/content/Context;ILjava/lang/String;ZZLcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    .line 58
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->validatePhotoDownload(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getAvatarBitmap(Landroid/content/Context;ILjava/lang/String;ZZLcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_2
    move-object v8, v7

    .line 64
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected onSyncConnection()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 92
    return-void
.end method

.method protected onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 98
    return-void
.end method

.method public onVerifyImageStatus(III)V
    .locals 13
    .parameter "nFirstIndex"
    .parameter "nLastIndex"
    .parameter "nTotal"

    .prologue
    .line 117
    const/4 v12, 0x0

    .line 118
    .local v12, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v3, 0x0

    .line 119
    .local v3, szName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 120
    .local v4, szUrl:Ljava/lang/String;
    move v2, p1

    .local v2, nIndex:I
    :goto_0
    if-le p2, v2, :cond_2

    .line 122
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v12, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .restart local v12       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v12, :cond_1

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v4

    .line 127
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->validatePhotoDownload(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    move v7, v2

    move-object v8, v4

    invoke-virtual/range {v5 .. v11}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getAvatarBitmap(Landroid/content/Context;ILjava/lang/String;ZZLcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->isNotifyUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->notifyDataSetChanged()V

    .line 138
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->resetNotifyUpdate()V

    .line 141
    :cond_3
    return-void
.end method

.method public setScrollState(II)V
    .locals 3
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    const/16 v2, 0x4f4d

    .line 182
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    .line 194
    if-nez p1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->postResume()V

    .line 197
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 211
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v2, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->isNotifyUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->notifyDataSetChanged()V

    .line 219
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->resetNotifyUpdate()V

    .line 220
    const-string v0, "ListViewAdapterFriendsBase"

    const-string v1, "[HTCAlbum][AvatarDecoder][setScrollState]: idle update..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->postPause()V

    .line 202
    const/16 v0, 0x4f4e

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    goto :goto_1
.end method

.method public setScrollState(IIII)V
    .locals 3
    .parameter "nScrollState"
    .parameter "nFirstIndex"
    .parameter "nLastIndex"
    .parameter "nTotal"

    .prologue
    const/16 v2, 0x4f4d

    .line 144
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    .line 154
    if-nez p1, :cond_2

    .line 156
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->postResume()V

    .line 157
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 170
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v2, v0, :cond_0

    .line 172
    invoke-virtual {p0, p2, p3, p4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onVerifyImageStatus(III)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->postPause()V

    .line 162
    const/16 v0, 0x4f4e

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    goto :goto_1
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->mAvatarDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->setVisibleRange(II)V

    .line 74
    :cond_1
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    .line 80
    return-void
.end method
