.class Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$CarEventCacheUpdater;
.super Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;
.source "PickerGeoEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarEventCacheUpdater"
.end annotation


# instance fields
.field private mMediaTypes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mediaTypes"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;-><init>(Landroid/content/Context;)V

    .line 295
    iput p2, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$CarEventCacheUpdater;->mMediaTypes:I

    .line 296
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
    .line 302
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v1, "car_event"

    .line 303
    .local v1, service:Ljava/lang/String;
    iget v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$CarEventCacheUpdater;->mMediaTypes:I

    invoke-static {v0}, Lcom/htc/album/picker/PickerFolderHelper;->getCacheUID(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, uid:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0xc

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V

    .line 312
    return-void
.end method
