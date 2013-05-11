.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "MfFragmentMainMediaList.java"


# instance fields
.field private final DLNA_FULLSCREENVIEW:I

.field private final DLNA_GRIDVIEW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private mGotoScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    .line 16
    const-string v0, "MfFragmentMainMediaList"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->LOG_TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_GRIDVIEW:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_FULLSCREENVIEW:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 201
    :cond_0
    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f03002f

    return v0
.end method

.method protected getIntentBundle()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, bundleArg:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 143
    const/4 v3, 0x0

    .line 188
    :cond_0
    :goto_0
    return-object v3

    .line 145
    :cond_1
    const/4 v4, 0x0

    .line 146
    .local v4, intentArg:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 148
    .local v3, bundleIntent:Landroid/os/Bundle;
    const-string v5, "dlna_intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4           #intentArg:Landroid/content/Intent;
    check-cast v4, Landroid/content/Intent;

    .restart local v4       #intentArg:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 151
    const-string v5, "dlna_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 152
    .local v2, bundleDlna:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 155
    move-object v3, v2

    .line 156
    const-string v5, "browse_info"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 157
    .local v1, bundleBrowse:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 160
    move-object v3, v1

    goto :goto_0

    .line 167
    .end local v1           #bundleBrowse:Landroid/os/Bundle;
    :cond_2
    const-string v5, "browse_info"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 168
    .restart local v1       #bundleBrowse:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 171
    move-object v3, v1

    goto :goto_0

    .line 178
    .end local v1           #bundleBrowse:Landroid/os/Bundle;
    .end local v2           #bundleDlna:Landroid/os/Bundle;
    :cond_3
    const-string v5, "browse_info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 179
    .restart local v2       #bundleDlna:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 182
    const-string v5, "DLNA_CONTENT"

    const-string v6, "DLNA_CONTENT"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object v3, v2

    goto :goto_0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getSceneIdentity()I
    .locals 7

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 100
    .local v3, sceneId:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 101
    .local v1, bundleArg:Landroid/os/Bundle;
    if-nez v1, :cond_0

    move v4, v3

    .line 136
    .end local v3           #sceneId:I
    .local v4, sceneId:I
    :goto_0
    return v4

    .line 104
    .end local v4           #sceneId:I
    .restart local v3       #sceneId:I
    :cond_0
    const/4 v2, 0x0

    .line 105
    .local v2, intentArg:Landroid/content/Intent;
    const-string v5, "dlna_intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #intentArg:Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    .restart local v2       #intentArg:Landroid/content/Intent;
    if-eqz v2, :cond_5

    .line 107
    const-string v5, "goto_scene"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    .line 108
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 110
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    const-string v6, "SceneDlnaGridview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v4, v3

    .line 136
    .end local v3           #sceneId:I
    .restart local v4       #sceneId:I
    goto :goto_0

    .line 112
    .end local v4           #sceneId:I
    .restart local v3       #sceneId:I
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    const-string v6, "SceneDlnaFullscreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    const/4 v3, 0x1

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 122
    const/4 v3, 0x0

    goto :goto_1

    .line 124
    :cond_4
    const-string v5, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const/4 v3, 0x1

    goto :goto_1

    .line 133
    .end local v0           #action:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onBackPressedOverride()Z
    .locals 6

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, retval:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    .line 220
    .local v1, isLaunchFromDMC:Z
    if-eqz v1, :cond_2

    .line 227
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    .line 228
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v3, :cond_1

    .line 229
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v2

    .line 235
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getSceneCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 244
    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_1
    return v2

    .line 232
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    const-string v4, "MfFragmentMainMediaList"

    const-string v5, "getForegroundScene null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onBackPressedOverride()Z

    move-result v2

    goto :goto_1
.end method

.method public onCreateScene()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 60
    const-string v3, "MfFragmentMainMediaList"

    const-string v4, "[HTCAlbum][MfFragmentMainMediaList][onCreateScene]..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getSceneIdentity()I

    move-result v1

    .line 64
    .local v1, sceneId:I
    const-string v3, "MfFragmentMainMediaList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfFragmentMainMediaList][onCreateScene]sceneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getIntentBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 73
    const/4 v2, 0x0

    .line 81
    :goto_0
    return v2

    .line 76
    :cond_0
    if-ne v1, v2, :cond_1

    .line 77
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaFullscreen"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaGridview"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 24
    const-string v0, "MfFragmentMainMediaList"

    const-string v1, "[HTCAlbum][MfFragmentMainMediaList][onNewIntent]: re-CreateScene"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 32
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->onCreateScene()Z

    .line 33
    return-void
.end method

.method public paneRight()Z
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 208
    :cond_0
    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 40
    const-string v1, "MfFragmentMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainMediaList][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneDlnaGridview"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .line 54
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v1, "SceneDlnaFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 52
    :cond_1
    const-string v1, "MfFragmentMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainMediaList][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
