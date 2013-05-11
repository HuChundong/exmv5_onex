.class public Lcom/htc/opensense/social/data/Event;
.super Lcom/htc/opensense/social/data/Extra;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final GET_EVENT_BY_EID:Ljava/lang/String; = "get event by event id"

.field public static final GET_EVENT_BY_UID:Ljava/lang/String; = "get event by user id"

.field public static final GET_EVNET_BY_UID:Ljava/lang/String; = "add event by user id"


# instance fields
.field public description:Ljava/lang/String;

.field public endTime:J

.field public host:Ljava/lang/String;

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public lastupdate_time:J

.field public location:Ljava/lang/String;

.field public owner_id:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public pic_big:Ljava/lang/String;

.field public pic_small:Ljava/lang/String;

.field public pic_square:Ljava/lang/String;

.field public startTime:J

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/htc/opensense/social/data/Event$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Event$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 203
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 33
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 68
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 181
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 33
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 68
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Event;->setExtra(Landroid/os/Bundle;)V

    .line 197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastupdate_time()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_big()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_small()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_square()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 299
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 300
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setLastupdate_time(J)V
    .locals 0
    .parameter "lastupdate_time"

    .prologue
    .line 387
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 388
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setOwner_id(Ljava/lang/String;)V
    .locals 0
    .parameter "owner_id"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setPic_big(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_big"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setPic_small(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_small"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setPic_square(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_square"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 282
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 492
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method
