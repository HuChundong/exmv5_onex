.class public Lcom/htc/opensense/social/data/Album;
.super Lcom/htc/opensense/social/data/Extra;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Album;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_PHOTO_SET:Ljava/lang/String; = "extra_recent"

.field public static final REGULAR_ALBUM:Ljava/lang/String; = "normal"


# instance fields
.field public albumId:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public count:I

.field public coverThumbnailUrl:Ljava/lang/String;

.field public coverUrl:Ljava/lang/String;

.field public cover_Id:Ljava/lang/String;

.field public createTime:J

.field public description:Ljava/lang/String;

.field public lastModified:J

.field public name:Ljava/lang/String;

.field public owner:Lcom/htc/opensense/social/data/Profile;

.field public privacy:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public webLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/htc/opensense/social/data/Album$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 119
    const-string v0, "normal"

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->type:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 119
    const-string v0, "normal"

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->type:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 164
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Album;->count:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->description:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Album;->lastModified:J

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Album;->type:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Album;->setExtra(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/htc/opensense/social/data/Album;->count:I

    return v0
.end method

.method public getCoverThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_Id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->cover_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Album;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 436
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Album;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->owner:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 283
    iput p1, p0, Lcom/htc/opensense/social/data/Album;->count:I

    .line 284
    return-void
.end method

.method public setCoverThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "coverThumbnailUrl"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "coverUrl"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setCover_Id(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_Id"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->cover_Id:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 427
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 428
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->description:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 445
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Album;->lastModified:J

    .line 446
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setOwner(Lcom/htc/opensense/social/data/Profile;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 266
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->type:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0
    .parameter "webLink"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->owner:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/htc/opensense/social/data/Album;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Album;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Album;->lastModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget-object v0, p0, Lcom/htc/opensense/social/data/Album;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 206
    return-void

    :cond_2
    move v0, v2

    .line 187
    goto :goto_0

    :cond_3
    move v1, v2

    .line 196
    goto :goto_1
.end method
