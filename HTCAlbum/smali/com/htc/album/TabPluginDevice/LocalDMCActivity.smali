.class public Lcom/htc/album/TabPluginDevice/LocalDMCActivity;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "LocalDMCActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    const/16 v1, 0x400

    .line 17
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 18
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStart()V

    .line 40
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public onStartFragment()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lcom/htc/album/TabPluginDevice/LocalDMCFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/LocalDMCActivity;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 26
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 48
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStop()V

    .line 49
    return-void
.end method
