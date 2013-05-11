.class public Lcom/htc/album/TabPluginDevice/BurstShotCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "BurstShotCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/BurstShotCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_COVER_PATH:Ljava/lang/String; = "key_BurstShot_CoverFilePath"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCoverPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/BurstShotCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "bucketID"
    .parameter "coverPath"

    .prologue
    .line 36
    const-string v0, "com.htc.HTCAlbum.BURST_SHOTS"

    const-string v1, ""

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method


# virtual methods
.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 2
    .parameter "collection"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    .line 94
    instance-of v1, p1, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    .line 97
    .local v0, bsC:Lcom/htc/album/TabPluginDevice/BurstShotCollection;
    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    .line 99
    .end local v0           #bsC:Lcom/htc/album/TabPluginDevice/BurstShotCollection;
    :cond_0
    return-void
.end method

.method public getBurstCoverImage()Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getPhotoCount()I

    move-result v3

    .line 74
    .local v3, total:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    .line 75
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 77
    invoke-interface {v2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 85
    :goto_1
    return-object v4

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 4
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "key_BurstShot_CoverFilePath"

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/htc/opensense2/album/util/ImageManager;->burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    return-object v1
.end method

.method protected onLoadFromPreference(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onLoadFromPreference(Landroid/content/SharedPreferences;)V

    .line 116
    const-string v0, "key_BurstShot_CoverFilePath"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V

    .line 107
    const-string v0, "key_BurstShot_CoverFilePath"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0
    .parameter "coverPath"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "givenName"

    .prologue
    const/4 v1, 0x1

    .line 49
    const v0, 0x7f0a012f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 51
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return-void
.end method
