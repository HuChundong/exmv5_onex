.class public Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;
.super Lcom/htc/album/TabPluginDevice/LocalDMCScene;
.source "LocalBurstShotDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/LocalDMCScene",
        "<",
        "Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalBurstShotDMCScene"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private launchCameraShots()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 91
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 92
    .local v5, intent:Landroid/content/Intent;
    const-string v6, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v7, "LocalPhotoDMCScene"

    invoke-interface {v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 118
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v3, extras:Landroid/os/Bundle;
    const-string v6, "from_gallery"

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    const-string v6, "Render"

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v6, "key_bucket_id"

    const-string v7, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v6, "folder_type"

    const-string v7, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v6, "key_folder_name"

    const-string v7, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 107
    .local v2, context:Landroid/content/Context;
    const-string v6, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-static {v2, v6}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    .line 108
    .local v0, cameraC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v6, "collection_info"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->saveToPerference()V

    .line 110
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    .line 111
    .local v1, collection:Lcom/htc/album/TabPluginDevice/BurstShotCollection;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getBurstCoverImage()Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    .line 112
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v4, :cond_1

    .line 113
    const-string v6, "photoId"

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    :cond_1
    const-string v6, "itemIndex"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v7, 0x0

    const-string v8, "LocalPhotoDMCScene"

    invoke-interface {v6, v7, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "LocalBurstShotDMCAdapter"

    return-object v0
.end method

.method protected createAdapter(Lcom/htc/album/modules/collection/Collection;Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;
    .locals 3
    .parameter "collection"
    .parameter "bundle"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 71
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v1
.end method

.method protected bridge synthetic createAdapter(Lcom/htc/album/modules/collection/Collection;Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->createAdapter(Lcom/htc/album/modules/collection/Collection;Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getBackIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "Render"

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "key_bucket_id"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "key_folder_name"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "folder_type"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "browse_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    return-object v0
.end method

.method protected getLaunchAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->launchCameraShots()V

    .line 87
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->launchCameraShots()V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onBindAdapter()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onBindAdapter()V

    .line 122
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 123
    .local v0, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_0

    .line 125
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 126
    const/16 v1, 0x139d

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 129
    :cond_0
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->isSecureSendToBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 153
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 136
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 150
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 153
    .restart local v1       #bResult:I
    goto :goto_0

    .line 140
    .end local v1           #bResult:I
    :pswitch_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v2

    .line 141
    .local v2, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v2}, Lcom/htc/sunnyCore/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    .line 144
    invoke-virtual {v2}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 146
    :cond_1
    const/4 v0, 0x1

    .line 148
    goto :goto_1

    .line 136
    :pswitch_data_0
    .packed-switch 0x139d
        :pswitch_0
    .end packed-switch
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "LocalBurstShotDMCScene"

    return-object v0
.end method
