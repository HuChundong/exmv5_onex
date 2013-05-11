.class public Lcom/htc/album/TabPluginDevice/location/LocationsMfFragment;
.super Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.source "LocationsMfFragment.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mPickerMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;-><init>()V

    .line 25
    const-string v0, "LocationsMfFragment"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/location/LocationsMfFragment;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/location/LocationsMfFragment;->mPickerMode:I

    return-void
.end method


# virtual methods
.method public checkCallerIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "caller"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 48
    const-string v0, "LocationsMfFragment"

    const-string v1, "[HTCAlbum][LocationsMfFragment][checkCallerIntent]: Null Intent found!!"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    const-string v1, "LocationsMfFragment"

    const-string v2, "[HTCAlbum][LocationsMfFragment][onBroadcastMediaDisconnected]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 61
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/location/LocationsMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 62
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 64
    const/4 v1, 0x1

    return v1
.end method

.method public onCreateScene()Z
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/location/LocationsMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "LocationsThumbScene"

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x1

    return v1
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 7
    .parameter "object"

    .prologue
    .line 70
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    .line 71
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v3, :cond_1

    .line 73
    const-string v5, "LocationsMfFragment"

    const-string v6, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 1"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 76
    check-cast v1, Landroid/os/Bundle;

    .line 78
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "scene_identifier"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, szSceneIdentity:Ljava/lang/String;
    const-string v5, "scene_error_report"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, nCount:I
    const-string v5, "LocationsThumbScene"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LocationsFullscreenScene"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    :cond_2
    if-nez v2, :cond_0

    .line 86
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 87
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/location/LocationsMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 3
    .parameter "szSceneIdentity"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "LocationsFullscreenScene"

    if-eq v1, p1, :cond_0

    const-string v1, "LocationsFullscreenScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    new-instance v1, Lcom/htc/album/TabPluginDevice/location/LocationsFullscreenScene;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDevice/location/LocationsFullscreenScene;-><init>()V

    .line 109
    :goto_0
    return-object v1

    .line 103
    :cond_1
    const-string v1, "LocationsThumbScene"

    if-eq v1, p1, :cond_2

    const-string v1, "LocationsThumbScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    :cond_2
    new-instance v1, Lcom/htc/album/TabPluginDevice/location/LocationsThumbScene;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v1, v2}, Lcom/htc/album/TabPluginDevice/location/LocationsThumbScene;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    goto :goto_0

    .line 109
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    goto :goto_0
.end method
