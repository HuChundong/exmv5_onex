.class public Lcom/htc/album/picker/PickerEventAdapter;
.super Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
.source "PickerEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerEventAdapter$PickerEventCacheUpdater;
    }
.end annotation


# instance fields
.field mReadGalleryCache:Z


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "sunnyContext"
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;-><init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerEventAdapter;->mReadGalleryCache:Z

    .line 26
    return-void
.end method


# virtual methods
.method public isCacheExist()Z
    .locals 6

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, bExist:Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/album/picker/PickerEventAdapter;->mReadGalleryCache:Z

    .line 36
    iget v4, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v4}, Lcom/htc/album/picker/PickerFolderHelper;->shouldUseGalleryCache(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isCacheExist()Z

    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/htc/album/picker/PickerEventAdapter;->mReadGalleryCache:Z

    move v1, v0

    .line 57
    .end local v0           #bExist:Z
    .local v1, bExist:Z
    :goto_0
    return v1

    .line 43
    .end local v1           #bExist:Z
    .restart local v0       #bExist:Z
    :cond_0
    const-string v2, "picker_event"

    .line 44
    .local v2, service:Ljava/lang/String;
    iget v4, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v4}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, uid:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x8

    invoke-static {v4, v2, v3, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 53
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isCacheExist()Z

    move-result v0

    .line 54
    iput-boolean v0, p0, Lcom/htc/album/picker/PickerEventAdapter;->mReadGalleryCache:Z

    :cond_1
    move v1, v0

    .line 57
    .end local v0           #bExist:Z
    .restart local v1       #bExist:Z
    goto :goto_0
.end method

.method protected onNewCacheUpdateThread()Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/htc/album/picker/PickerEventAdapter$PickerEventCacheUpdater;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-direct {v0, v1, v2}, Lcom/htc/album/picker/PickerEventAdapter$PickerEventCacheUpdater;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected readEventFileCache()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-boolean v3, p0, Lcom/htc/album/picker/PickerEventAdapter;->mReadGalleryCache:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v3}, Lcom/htc/album/picker/PickerFolderHelper;->shouldUseGalleryCache(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->readEventFileCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const-string v1, "picker_event"

    .line 71
    .local v1, service:Ljava/lang/String;
    iget v3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-static {v3}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, uid:Ljava/lang/String;
    const/4 v0, 0x0

    .line 74
    .local v0, cacheCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-static {v3, v1, v2, v4, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readEventCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .end local v0           #cacheCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 81
    .restart local v0       #cacheCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    goto :goto_0
.end method
