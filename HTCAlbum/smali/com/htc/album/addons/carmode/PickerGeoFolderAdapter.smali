.class public Lcom/htc/album/addons/carmode/PickerGeoFolderAdapter;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;
.source "PickerGeoFolderAdapter.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PickerGeoFolderAdapter"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "PickerGeoFolderAdapter"

    return-object v0
.end method

.method public isCacheExist()Z
    .locals 5

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, bExist:Z
    const-string v1, "car_local"

    .line 34
    .local v1, service:Ljava/lang/String;
    iget v3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v3}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, uid:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    invoke-static {v3, v1, v2, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 41
    return v0
.end method

.method protected onReadCache()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "car_local"

    .line 50
    .local v0, service:Ljava/lang/String;
    iget v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v2}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, uid:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    return-object v2
.end method

.method protected onWriteCache(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const-string v1, "car_local"

    .line 64
    .local v1, service:Ljava/lang/String;
    iget v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v0}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, uid:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0xc

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V

    .line 73
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 4
    .parameter "control"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 89
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;

    move-result-object v0

    .line 92
    .local v0, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    new-instance v1, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    goto :goto_0
.end method
