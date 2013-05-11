.class public Lcom/htc/album/addons/carmode/PickerGeoPhotoCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "PickerGeoPhotoCollection.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    const-string v0, "com.htc.HTCAlbum.GEO_PHOTOS"

    const-string v1, "com.htc.HTCAlbum.GEO_PHOTOS"

    const-string v2, "com.htc.HTCAlbum.GEO_PHOTOS"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 24
    const-string v0, "media/geo_only"

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 3
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 32
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->allGeoImages(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method
