.class public Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
.source "LocalPhotoDMCAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalPhotoDMCAdapter"


# instance fields
.field protected mPhotoIDs:[I

.field protected mStartUpIndex:I

.field protected mStartUpPhotoID:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"
    .parameter "collection"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 2
    .parameter "activity"
    .parameter "handler"
    .parameter "collection"
    .parameter "isPartialLoad"

    .prologue
    const/4 v1, -0x1

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mPhotoIDs:[I

    .line 24
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    .line 25
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpIndex:I

    .line 36
    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "LocalPhotoDMCAdapter"

    return-object v0
.end method

.method public getPhotoIDs()[I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mPhotoIDs:[I

    return-object v0
.end method

.method public getStartupIndex()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpIndex:I

    return v0
.end method

.method public getStartupPhotoID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 8
    .parameter "params"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    .line 71
    .local v4, result:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    .line 72
    .local v3, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_2

    .line 74
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    .line 75
    .local v5, size:I
    new-array v1, v5, [I

    .line 77
    .local v1, idList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 79
    invoke-interface {v3, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 80
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v1, v0

    .line 81
    iget v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    aget v6, v1, v0

    iget v7, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    if-ne v6, v7, :cond_0

    .line 83
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpIndex:I

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mPhotoIDs:[I

    .line 90
    .end local v0           #i:I
    .end local v1           #idList:[I
    .end local v5           #size:I
    :cond_2
    return-object v4
.end method

.method public setStartupPhotoID(I)V
    .locals 0
    .parameter "startID"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    .line 48
    return-void
.end method
