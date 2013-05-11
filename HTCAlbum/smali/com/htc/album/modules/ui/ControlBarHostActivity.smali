.class public abstract Lcom/htc/album/modules/ui/ControlBarHostActivity;
.super Lcom/htc/album/AlbumMain/MainActivityBase;
.source "ControlBarHostActivity.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;


# instance fields
.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-void
.end method


# virtual methods
.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->requestHeaderBar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    new-instance v0, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 33
    :cond_1
    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 42
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onPause()V

    .line 43
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onResume()V

    .line 51
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
