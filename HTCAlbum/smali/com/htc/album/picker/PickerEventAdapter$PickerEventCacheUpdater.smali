.class Lcom/htc/album/picker/PickerEventAdapter$PickerEventCacheUpdater;
.super Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;
.source "PickerEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickerEventCacheUpdater"
.end annotation


# instance fields
.field private mMediaTypes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mediaTypes"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;-><init>(Landroid/content/Context;)V

    .line 100
    iput p2, p0, Lcom/htc/album/picker/PickerEventAdapter$PickerEventCacheUpdater;->mMediaTypes:I

    .line 101
    return-void
.end method


# virtual methods
.method protected onWriteCache(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget v0, p0, Lcom/htc/album/picker/PickerEventAdapter$PickerEventCacheUpdater;->mMediaTypes:I

    invoke-static {v0}, Lcom/htc/album/picker/PickerFolderHelper;->shouldUseGalleryCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onWriteCache(Ljava/util/ArrayList;)V

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "picker_event"

    .line 114
    .local v1, service:Ljava/lang/String;
    iget v0, p0, Lcom/htc/album/picker/PickerEventAdapter$PickerEventCacheUpdater;->mMediaTypes:I

    invoke-static {v0}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, uid:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x18

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V

    goto :goto_0
.end method
