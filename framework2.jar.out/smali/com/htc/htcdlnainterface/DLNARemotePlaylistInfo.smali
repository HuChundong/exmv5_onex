.class public Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;
.super Ljava/lang/Object;
.source "DLNARemotePlaylistInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private containerID:Ljava/lang/String;

.field private contentID:Ljava/lang/String;

.field private direction:I

.field private durationMillis:J

.field private endIndex:J

.field private filterCapability:I

.field private serverID:Ljava/lang/String;

.field private startIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 230
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I

    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    return-wide v0
.end method

.method public getEndIndex()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    return-wide v0
.end method

.method public getFilterCapability()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    return v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getStartIndex()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    return-wide v0
.end method

.method public setContainerID(Ljava/lang/String;)V
    .locals 0
    .parameter "containerID"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 0
    .parameter "contentID"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 60
    return-void
.end method

.method public setDurationMillis(J)V
    .locals 0
    .parameter "durationMillis"

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 190
    return-void
.end method

.method public setEndIndex(J)V
    .locals 0
    .parameter "endIndex"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 82
    return-void
.end method

.method public setFilterCapability(I)V
    .locals 0
    .parameter "filterCapability"

    .prologue
    .line 125
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 126
    return-void
.end method

.method public setServerID(Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setStartIndex(J)V
    .locals 0
    .parameter "startIndex"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
