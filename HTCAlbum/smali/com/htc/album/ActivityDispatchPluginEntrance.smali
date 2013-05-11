.class public Lcom/htc/album/ActivityDispatchPluginEntrance;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "ActivityDispatchPluginEntrance.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityDispatchPluginEntrance"

.field private static final OPENSENSE_ACTION_ALBUMS:Ljava/lang/String; = "com.htc.album.SocialNetwork.MfFragmentMainOnline"

.field private static final OPENSENSE_ACTION_FRIENDS:Ljava/lang/String; = "com.htc.album.SocialNetwork.MfFragmentMainFriends"

.field private static final OPENSENSE_ACTION_LOCAL:Ljava/lang/String; = "com.htc.album.TabPluginDevice.MfFragmentMainLocal"


# instance fields
.field private mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ActivityDispatchPluginEntrance;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    .line 29
    const-string v0, "ActivityDispatchPluginEntrance"

    const-string v1, "[HTCAlbum][ActivityDispatchPluginEntrance][onCreate]..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/ActivityDispatchPluginEntrance;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "ActivityDispatchPluginEntrance"

    const-string v1, "[HTCAlbum][ActivityDispatchPluginEntrance][onDestroy]..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->destroyInstance()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ActivityDispatchPluginEntrance;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 75
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDestroy()V

    .line 76
    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onStartFragment()V
    .locals 6

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/htc/album/ActivityDispatchPluginEntrance;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 39
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "from_kddi"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    .local v0, bIsFromKDDI:Z
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 43
    iget-object v4, p0, Lcom/htc/album/ActivityDispatchPluginEntrance;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v1, bundleSocial:Landroid/os/Bundle;
    const-string v4, "social_intent"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    const-string v4, "package_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "com.htc.album.SocialNetwork.MfFragmentMainFriends"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    const-class v4, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v4, v1, v5}, Lcom/htc/album/ActivityDispatchPluginEntrance;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 62
    .end local v1           #bundleSocial:Landroid/os/Bundle;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v1       #bundleSocial:Landroid/os/Bundle;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    const-string v4, "com.htc.album.SocialNetwork.MfFragmentMainOnline"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    const-class v4, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v4, v1, v5}, Lcom/htc/album/ActivityDispatchPluginEntrance;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v4, "com.htc.album.TabPluginDevice.MfFragmentMainLocal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const-class v4, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v4, v1, v5}, Lcom/htc/album/ActivityDispatchPluginEntrance;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method
