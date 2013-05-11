.class public Lcom/htc/opensense/social/data/Medium;
.super Lcom/htc/opensense/social/data/Extra;
.source "Medium.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Medium;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIUM_TYPE_PHOTO:I = 0x0

.field public static final MEDIUM_TYPE_VIDEO:I = 0x1


# instance fields
.field public albumId:Ljava/lang/String;

.field public createTime:J

.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public lastModified:J

.field public name:Ljava/lang/String;

.field public owner:Lcom/htc/opensense/social/data/Profile;

.field public privacy:Ljava/lang/String;

.field public thumbnailUrl:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;

.field public url_hq:Ljava/lang/String;

.field public webLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/htc/opensense/social/data/Medium$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Medium;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 170
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Medium;->type:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->albumId:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->url_hq:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Medium;->privacy:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Medium;->lastModified:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Medium;->setExtra(Landroid/os/Bundle;)V

    .line 184
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 435
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Medium;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/htc/opensense/social/data/Medium;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_hq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->url_hq:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->albumId:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 444
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    .line 445
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 462
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Medium;->lastModified:J

    .line 463
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setOwner(Lcom/htc/opensense/social/data/Profile;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 263
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->privacy:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailUrl"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 300
    iput p1, p0, Lcom/htc/opensense/social/data/Medium;->type:I

    .line 301
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setUrl_hq(Ljava/lang/String;)V
    .locals 0
    .parameter "url_hq"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->url_hq:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0
    .parameter "webLink"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->owner:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/htc/opensense/social/data/Medium;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->url_hq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/htc/opensense/social/data/Medium;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Medium;->lastModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 215
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
