.class public abstract Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneLocalBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunnyCore/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<TVIEW;TADAPTER;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SceneLocalBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    return-void
.end method

.method private checkAdapterDataSetChange()V
    .locals 5

    .prologue
    .line 19
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v2, v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    if-eqz v2, :cond_0

    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 22
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->isObservedDataChange()Z

    move-result v1

    .line 23
    .local v1, isDataChanged:Z
    const-string v2, "SceneLocalBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneLocalBase][onResume]: dirty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 29
    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    .end local v1           #isDataChanged:Z
    :cond_0
    return-void
.end method


# virtual methods
.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected onDMRChanged(Ljava/lang/String;I)V
    .locals 2
    .parameter "DMR"
    .parameter "index"

    .prologue
    .line 58
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->DLNA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "local_photo_dmc_count"

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDMRChanged(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public onDestroyScene()V
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyScene()V

    .line 68
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 38
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    .line 39
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->checkAdapterDataSetChange()V

    .line 40
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 45
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->checkAdapterDataSetChange()V

    .line 47
    return-void
.end method
