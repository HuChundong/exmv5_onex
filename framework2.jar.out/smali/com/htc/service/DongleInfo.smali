.class public Lcom/htc/service/DongleInfo;
.super Ljava/lang/Object;
.source "DongleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LOCK_DISABLED:I = 0x0

.field public static final PATTERN_LOCK_ENABLED:I = 0x1

.field public static final PATTERN_LOCK_UNSUPPORT:I = 0x2

.field public static final STATE_CONFIGURED:I = 0x2

.field public static final STATE_PAIRED:I = 0x3

.field public static final STATE_UNCONFIGURED:I = 0x4

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_WPS:I = 0x1

.field public static final getStateName:[Ljava/lang/String;


# instance fields
.field public bssid:Ljava/lang/String;

.field public capabilities:J

.field public currentAph:Ljava/lang/String;

.field public inetAddress:Ljava/lang/String;

.field public isConnectable:Z

.field public isDiscoveredByWivu:Z

.field public lockStatus:Ljava/lang/String;

.field public lockType:I

.field public name:Ljava/lang/String;

.field public pairedApm:Ljava/lang/String;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public staBssid:Ljava/lang/String;

.field public status:I

.field public version:Ljava/lang/String;

.field public wifiQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WPS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONFIGURED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PAIRED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UNCONFIGURED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/htc/service/DongleInfo$1;

    invoke-direct {v0}, Lcom/htc/service/DongleInfo$1;-><init>()V

    sput-object v0, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .parameter "dongleName"
    .parameter "dongleSsid"
    .parameter "dongleBssid"
    .parameter "dongleStatus"
    .parameter "isWivu"
    .parameter "isConn"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 130
    iput p4, p0, Lcom/htc/service/DongleInfo;->status:I

    .line 131
    iput-boolean p5, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 132
    iput-boolean p6, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 0
    .parameter "dongleName"
    .parameter "dongleSsid"
    .parameter "dongleBssid"
    .parameter "dongleStatus"
    .parameter "isWivu"
    .parameter "isConn"
    .parameter "ver"

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 140
    iput p4, p0, Lcom/htc/service/DongleInfo;->status:I

    .line 141
    iput-boolean p5, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 142
    iput-boolean p6, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 143
    iput-object p7, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilites()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/htc/service/DongleInfo;->capabilities:J

    return-wide v0
.end method

.method public getCurrentAph()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsConnectable()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    return v0
.end method

.method public getIsDiscoveredByWivu()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    return v0
.end method

.method public getLockStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/htc/service/DongleInfo;->lockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPairedApm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/service/DongleInfo;->rssi:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getStaBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/service/DongleInfo;->status:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiQuality()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DongleInfo{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, isDiscoveredByWivu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConnectable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, ip address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sta bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current aph = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paired apm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/service/DongleInfo;->capabilities:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lockType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiQuality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-wide v0, p0, Lcom/htc/service/DongleInfo;->capabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget v0, p0, Lcom/htc/service/DongleInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    :cond_1
    move v1, v2

    .line 152
    goto :goto_1
.end method
