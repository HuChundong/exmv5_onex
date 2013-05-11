.class public abstract Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "CollectionBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunnyCore/view/SView;",
        ">",
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<TVIEW;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CollectionBaseScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    return-void
.end method

.method private createAdapter()Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 4

    .prologue
    .line 27
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/htc/album/helper/CollectionMaker;->createCollection(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 29
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    .line 31
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 32
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onLoadData()V

    .line 34
    return-object v0
.end method


# virtual methods
.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 3
    .parameter "collection"

    .prologue
    .line 71
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v0
.end method

.method protected doLaunchDMC(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/collection/Collection;)V
    .locals 2
    .parameter "activity"
    .parameter "renderer"
    .parameter "image"
    .parameter "collection"

    .prologue
    .line 101
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1, p2, p3, p4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchLocalVideoDMC(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/collection/Collection;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, p2, v0, p4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V

    goto :goto_0
.end method

.method protected isPreNewAdapter(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 44
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onDMRChanged(Ljava/lang/String;I)V
    .locals 6
    .parameter "DMR"
    .parameter "index"

    .prologue
    .line 78
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 86
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    move v4, p2

    .line 88
    .local v4, outputIndex:I
    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 89
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 94
    .local v2, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDMRChanged(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p0, v0, p1, v3, v2}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->doLaunchDMC(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/collection/Collection;)V

    goto :goto_0
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 63
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->isPreNewAdapter(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->createAdapter()Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 67
    :cond_0
    return-void
.end method

.method protected onPreNewAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 49
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    const/4 v0, 0x0

    .line 50
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->isPreNewAdapter(Landroid/os/Bundle;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->createAdapter()Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    .line 53
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPreNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPreNewAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    return-object v0
.end method
