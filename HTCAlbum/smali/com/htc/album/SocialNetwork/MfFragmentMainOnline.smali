.class public Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;
.super Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;
.source "MfFragmentMainOnline.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainOnline"

.field private static final OPENSENSE_ACTION_ALBUM:Ljava/lang/String; = "com.htc.album.actions.opensense.albums"


# instance fields
.field private mGotoScene:Ljava/lang/String;

.field protected mIsExternal:Z

.field private mIsOpensenseAlbum:Z

.field private mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    .line 38
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    .line 39
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    return-void
.end method

.method private startSceneWithIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "service_name"

    const-string v2, "service_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "user_id"

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "album_id"

    const-string v2, "album_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "album_name"

    const-string v2, "album_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "flag_genuine"

    const-string v2, "flag_genuine"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    const-string v1, "from_tabhost"

    const-string v2, "from_tabhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string v1, "from_albumhost"

    const-string v2, "from_albumhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v1, "from_tmoFaves"

    const-string v2, "from_tmoFaves"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    const-string v1, "opensense_pugin"

    const-string v2, "opensense_pugin"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "user_buddyicon"

    const-string v2, "user_buddyicon"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "from_outside"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "online_scene"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private startWatchViewerScene(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "from_watch"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string v1, "album_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "opensense_pugin"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v1, "service_name"

    const-string v2, "WatchDataPlugin"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, v0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 177
    return-void
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 245
    :cond_0
    return v0
.end method

.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f03002f

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 320
    :cond_0
    return-object v0
.end method

.method public initializeLoginView(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->initializeLoginView(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 328
    :cond_0
    return-void
.end method

.method public isLoginViewInitialized()Z
    .locals 3

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->isLoginViewInitialized()Z

    move-result v0

    .line 340
    :goto_0
    return v0

    .line 338
    :cond_0
    const-string v1, "MfFragmentMainOnline"

    const-string v2, "[HTCAlbum][MfFragmentMainOnline][isLoginViewInitialized]: mLoginViewManager is null..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    const-string v1, "MfFragmentMainOnline"

    const-string v2, "[HTCAlbum][MfFragmentMainOnline][onActivityCreated]:... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-direct {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    .line 73
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getLayoutHost()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->setRootView(Landroid/widget/RelativeLayout;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onCreate]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onCreateScene()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, bundleArg:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 116
    const-string v7, "MfFragmentMainOnline"

    const-string v8, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: no arguments..."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return v6

    .line 119
    :cond_0
    const-string v8, "social_intent"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 120
    .local v2, intentArg:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 122
    const-string v7, "MfFragmentMainOnline"

    const-string v8, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: no social intent..."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, szAction:Ljava/lang/String;
    const-string v8, "MfFragmentMainOnline"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v5, :cond_2

    const-string v8, "com.htc.album.actions.opensense.albums"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 128
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    .line 130
    :cond_2
    const-string v8, "from_outside"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    .line 131
    const-string v8, "com.htc.album.action.VIEW_WATCH_ONLINE_FULLSCREEN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 132
    .local v3, isWatch:Z
    const-string v8, "goto_scene"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    .line 134
    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-eqz v8, :cond_4

    .line 136
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: external..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->startSceneWithIntent(Landroid/content/Intent;)V

    .line 156
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 158
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v4, v8, v9

    .line 160
    .local v4, nTop:I
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8, v6, v4, v6, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPadding(IIII)V

    .end local v4           #nTop:I
    :cond_3
    move v6, v7

    .line 165
    goto/16 :goto_0

    .line 139
    :cond_4
    if-eqz v3, :cond_5

    .line 141
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 2..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->startWatchViewerScene(Landroid/content/Intent;)V

    goto :goto_1

    .line 144
    :cond_5
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 146
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 3..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v8, "social_bundle"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 148
    .local v1, bundleSocial:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v1           #bundleSocial:Landroid/os/Bundle;
    :cond_6
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 4..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v9, 0x0

    const-string v10, "SceneOnlineFolder"

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->onDestroy()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    .line 93
    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onDestroy()V

    .line 94
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onDestroyView]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onDestroyView()V

    .line 83
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 56
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onMessage(Landroid/os/Message;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 50
    :pswitch_0
    const-string v1, "MfFragmentMainOnline"

    const-string v2, "[HTCAlbum][MfFragmentMainOnline][onMessage]: SHOW_ALERTDLG_NO_CONNECTION"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    .line 52
    const/16 v1, 0x272c

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x272c
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 101
    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onNewIntent]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->onCreateScene()Z

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onPause]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onPause()V

    .line 88
    return-void
.end method

.method public paneRight()Z
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 259
    :cond_0
    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneOnlineFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;-><init>()V

    .line 227
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    const-string v1, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 222
    :cond_2
    const-string v1, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 224
    :cond_3
    const-string v1, "ScenePhotoTagEditor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    new-instance v0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0
.end method

.method public sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    .locals 4
    .parameter "szIdentity"

    .prologue
    .line 270
    const-string v1, "MfFragmentMainOnline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainOnline][sceneSourceFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/htc/album/UploadEditor/SceneSourceLive;

    invoke-direct {v0}, Lcom/htc/album/UploadEditor/SceneSourceLive;-><init>()V

    .line 273
    .local v0, plugin:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    return-object v0
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setLoginButtonText(Ljava/lang/String;)V
    .locals 1
    .parameter "loginText"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->setLoginButtonText(Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method

.method public setLoginDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "loginDescription"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->setLoginDescription(Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mLoginViewManager:Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->setVisibility(I)V

    .line 288
    :cond_0
    return-void
.end method
