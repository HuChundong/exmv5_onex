.class public Lcom/htc/album/TabPluginDevice/location/LocationsThumbScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.source "LocationsThumbScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocationsThumbScene"


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 0
    .parameter "tvListener"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .line 24
    return-void
.end method

.method public static CallMapFromGalleryLauncher(Landroid/app/Activity;)V
    .locals 5
    .parameter "act"

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    const-string v2, "from_outside"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v2, "alwayBackToGalleryPreviousPage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    const-string v2, "callMapView"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationsThumbScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onBackPressed]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getFullscreenSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "LocationsFullscreenScene"

    return-object v0
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onAnimationEnd(I)V

    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 139
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, caller:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, act:Landroid/app/Activity;
    const-string v3, "com.htc.album.action.LAUNCH_LOCATION_PHOTO"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #caller:Landroid/content/Intent;
    :goto_0
    return v2

    .line 71
    .restart local v0       #act:Landroid/app/Activity;
    .restart local v1       #caller:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.htc.album.action.LAUNCH_LOCATION_PHOTO_FROM_DMC"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/location/LocationsThumbScene;->CallMapFromGalleryLauncher(Landroid/app/Activity;)V

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 79
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #caller:Landroid/content/Intent;
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBackPressed()Z

    move-result v2

    goto :goto_0
.end method

.method protected onPostBackPressed(Z)Z
    .locals 5
    .parameter "isBackKey"

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, caller:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 91
    .local v0, act:Landroid/app/Activity;
    const-string v3, "com.htc.album.action.LAUNCH_LOCATION_PHOTO"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 104
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #caller:Landroid/content/Intent;
    :goto_0
    return v2

    .line 96
    .restart local v0       #act:Landroid/app/Activity;
    .restart local v1       #caller:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.htc.album.action.LAUNCH_LOCATION_PHOTO_FROM_DMC"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/location/LocationsThumbScene;->CallMapFromGalleryLauncher(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 104
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #caller:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostBackPressed(Z)Z

    move-result v2

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSendToBackground(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSendToForeground(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "LocationsThumbScene"

    return-object v0
.end method
