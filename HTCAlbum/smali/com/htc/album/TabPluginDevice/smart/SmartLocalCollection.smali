.class public Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;
.super Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
.source "SmartLocalCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SmartLocalCollection"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "folderType"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    return-void
.end method


# virtual methods
.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method protected getFolderRecoveryParam()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryWhere(IZ)Ljava/lang/String;
    .locals 3
    .parameter "mediaType"
    .parameter "appendDefault"

    .prologue
    .line 128
    if-eqz p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryWhere(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    const-string v0, "SmartLocalCollection"

    const-string v1, "[getQueryWhere] appendDefault = false not define."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inRange(JLjava/lang/String;DD)Z
    .locals 1
    .parameter "time"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 8
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 117
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 165
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "givenName"

    .prologue
    .line 38
    const-string v0, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    const v0, 0x7f0a0064

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 42
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 58
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 59
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 50
    const v0, 0x7f0a0058

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 56
    :cond_2
    :goto_1
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 54
    :cond_3
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public setRange(JJLjava/lang/String;DD)V
    .locals 2
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    const-wide/16 v0, 0x0

    .line 100
    invoke-super/range {p0 .. p9}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setRange(JJLjava/lang/String;DD)V

    .line 102
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 103
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 104
    return-void
.end method

.method public updateEventIds()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    return-void
.end method
