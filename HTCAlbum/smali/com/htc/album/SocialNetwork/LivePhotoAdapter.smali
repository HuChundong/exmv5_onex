.class public Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
.super Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.source "LivePhotoAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LivePhotoAdapter"

.field private static final PHOTO_DETAILS:I = 0x2


# instance fields
.field private PHOTO_OPENSENSE_DETAILS:I

.field private mEnableCaptionPlugin:Z

.field private mEnableTagPlugin:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 25
    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 26
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    .line 27
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    .line 34
    return-void
.end method


# virtual methods
.method public checkAccountIsAvailable()Z
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x1

    .line 349
    .local v0, bIsAvailable:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    const/4 v0, 0x0

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 357
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableOpenSenseDetailCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 313
    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 314
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    .line 316
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    .line 318
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v0, v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 322
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    .line 323
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableTagsPlugin()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 337
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    .line 338
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    .line 342
    :cond_1
    const-string v0, "LivePhotoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapter][getEnablePhotoDetailCount] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->PHOTO_OPENSENSE_DETAILS:I

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method public getMediumOpList([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;
    .locals 1
    .parameter "medium"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Medium;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isBackgroundDownloadInProgress()Z
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v2, :cond_0

    move v1, v0

    .line 300
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 296
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isImageDownloadInProgress()Z

    move-result v0

    move v1, v0

    .line 300
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onErrorCommentCount(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 285
    return-void
.end method

.method public onErrorNoPhotoInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 281
    return-void
.end method

.method public onErrorNoTagList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 289
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->isDestroyingAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 85
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 124
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 88
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestCommentCount(Landroid/os/Message;)V

    goto :goto_0

    .line 97
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestListTag(Landroid/os/Message;)V

    goto :goto_0

    .line 100
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 103
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncCommentCount(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncListTag(Landroid/os/Message;)V

    goto :goto_0

    .line 109
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 112
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onErrorNoPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 115
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onErrorCommentCount(Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onErrorNoTagList(Landroid/os/Message;)V

    goto :goto_0

    .line 121
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onNotifyDataSetChange()V

    goto :goto_0

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x2766 -> :sswitch_8
        0x2768 -> :sswitch_9
        0x2769 -> :sswitch_a
        0x4e31 -> :sswitch_3
        0x4e33 -> :sswitch_2
        0x4e34 -> :sswitch_1
        0x4e35 -> :sswitch_0
        0x4e8a -> :sswitch_4
        0x4e8d -> :sswitch_b
        0x4e91 -> :sswitch_6
        0x4e93 -> :sswitch_5
        0x4e94 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 68
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 69
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onPause()V

    .line 71
    return-void
.end method

.method public onRequestCommentCount(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 187
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCommentCount(Lcom/htc/opensense/social/data/Medium;)Z

    .line 189
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onRequestListTag(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 195
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTagList(Lcom/htc/opensense/social/data/Medium;)Z

    .line 197
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onRequestPhotoDetail(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 137
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 141
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 143
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 144
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v2, "photo_detail_index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    if-ne v2, v3, :cond_3

    .line 151
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 152
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v2, "photo_detail_index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    .line 155
    :cond_3
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 159
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getEnableOpenSenseDetailCount()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 163
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    if-ne v5, v2, :cond_5

    .line 164
    :cond_4
    const/16 v2, 0x4e34

    invoke-virtual {p0, v2, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 165
    :cond_5
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    if-ne v5, v2, :cond_1

    .line 166
    :cond_6
    const/16 v2, 0x4e31

    invoke-virtual {p0, v2, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 162
    :cond_7
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public onRequestPhotoInfo(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 179
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;)Z

    .line 181
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onResume()V

    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    const-string v2, "LivePhotoAdapter"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][LivePhotoAdapter][onResume]: Can\'t get "

    aput-object v4, v3, v5

    iget v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, " Photo"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getEnableOpenSenseDetailCount()I

    move-result v1

    :cond_2
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 54
    const/16 v1, 0x4e40

    invoke-virtual {p0, v1, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 55
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableCaptionPlugin:Z

    if-ne v6, v1, :cond_4

    .line 56
    :cond_3
    const/16 v1, 0x4e34

    invoke-virtual {p0, v1, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->mEnableTagPlugin:Z

    if-ne v6, v1, :cond_0

    .line 58
    :cond_5
    const/16 v1, 0x4e31

    invoke-virtual {p0, v1, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncCommentCount(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 220
    const-string v3, "LivePhotoAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skyer [HTCAlbum][LivePhotoAdapter][onSyncCommentCount]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 222
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 223
    .local v2, nCommentCount:I
    const/4 v0, 0x0

    .line 225
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    .line 227
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    const-string v3, "comment_update"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 230
    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setCommentCount(I)V

    .line 235
    :cond_0
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 236
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public onSyncDownLoadStatus()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onSyncListTag(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 240
    const-string v3, "LivePhotoAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skyer [HTCAlbum][LivePhotoAdapter][onSyncListTag]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 242
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 244
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    .line 246
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const-string v3, "tag_update"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    .line 257
    .end local v2           #faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    :cond_0
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 258
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 259
    return-void
.end method

.method public onSyncPhotoDetail(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 262
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string v1, "LivePhotoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skyer [HTCAlbum][LivePhotoAdapter][onSyncPhotoDetail]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "photo_detail_index"

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const/16 v1, 0x4e94

    invoke-virtual {p0, v1, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 271
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    if-eq v1, v2, :cond_0

    .line 273
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "photo_detail_index"

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const/16 v1, 0x4e35

    invoke-virtual {p0, v1, v0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhotoInfo(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 200
    const-string v2, "LivePhotoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skyer [HTCAlbum][LivePhotoAdapter][onSyncPhotoInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 202
    .local v1, aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v0, 0x0

    .line 203
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_1

    .line 205
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDetailed(Z)V

    .line 212
    :cond_0
    const-string v2, "LivePhotoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter][onSyncPhotoInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 216
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 217
    return-void
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "LivePhotoAdapter"

    const-string v1, "[HTCAlbum][LivePhotoAdapter][onUnloadData]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onPause()V

    .line 77
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDestroy()V

    .line 78
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUnloadData()V

    .line 79
    return-void
.end method
