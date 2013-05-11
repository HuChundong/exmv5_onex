.class public Lcom/htc/album/picker/PickerFolderAdapter;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;
.source "PickerFolderAdapter.java"


# instance fields
.field mReadGalleryCache:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerFolderAdapter;->mReadGalleryCache:Z

    .line 28
    return-void
.end method


# virtual methods
.method public isCacheExist()Z
    .locals 6

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, bExist:Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/album/picker/PickerFolderAdapter;->mReadGalleryCache:Z

    .line 37
    iget v4, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v4}, Lcom/htc/album/picker/PickerFolderHelper;->shouldUseGalleryCache(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->isCacheExist()Z

    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/htc/album/picker/PickerFolderAdapter;->mReadGalleryCache:Z

    move v1, v0

    .line 58
    .end local v0           #bExist:Z
    .local v1, bExist:Z
    :goto_0
    return v1

    .line 44
    .end local v1           #bExist:Z
    .restart local v0       #bExist:Z
    :cond_0
    const-string v2, "picker_local"

    .line 45
    .local v2, service:Ljava/lang/String;
    iget v4, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v4}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, uid:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x8

    invoke-static {v4, v2, v3, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 54
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->isCacheExist()Z

    move-result v0

    .line 55
    iput-boolean v0, p0, Lcom/htc/album/picker/PickerFolderAdapter;->mReadGalleryCache:Z

    :cond_1
    move v1, v0

    .line 58
    .end local v0           #bExist:Z
    .restart local v1       #bExist:Z
    goto :goto_0
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
    .line 64
    iget-boolean v2, p0, Lcom/htc/album/picker/PickerFolderAdapter;->mReadGalleryCache:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v2}, Lcom/htc/album/picker/PickerFolderHelper;->shouldUseGalleryCache(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->onReadCache()Ljava/util/ArrayList;

    move-result-object v2

    .line 73
    :goto_0
    return-object v2

    .line 70
    :cond_1
    const-string v0, "picker_local"

    .line 71
    .local v0, service:Ljava/lang/String;
    iget v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v2}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, uid:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_0
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
    .line 83
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v0}, Lcom/htc/album/picker/PickerFolderHelper;->shouldUseGalleryCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->onWriteCache(Ljava/util/ArrayList;)V

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v1, "picker_local"

    .line 90
    .local v1, service:Ljava/lang/String;
    iget v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v0}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, uid:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x18

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V

    goto :goto_0
.end method
