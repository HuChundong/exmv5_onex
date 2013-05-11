.class final Lcom/htc/service/DongleInfo$1;
.super Ljava/lang/Object;
.source "DongleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/DongleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/service/DongleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/service/DongleInfo;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    new-instance v0, Lcom/htc/service/DongleInfo;

    invoke-direct {v0}, Lcom/htc/service/DongleInfo;-><init>()V

    .line 195
    .local v0, info:Lcom/htc/service/DongleInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/service/DongleInfo;->status:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/service/DongleInfo;->capabilities:J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/service/DongleInfo;->rssi:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/service/DongleInfo;->lockType:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    .line 211
    return-object v0

    :cond_0
    move v1, v3

    .line 199
    goto :goto_0

    :cond_1
    move v2, v3

    .line 200
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/htc/service/DongleInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/service/DongleInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 215
    new-array v0, p1, [Lcom/htc/service/DongleInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/htc/service/DongleInfo$1;->newArray(I)[Lcom/htc/service/DongleInfo;

    move-result-object v0

    return-object v0
.end method
