.class final Landroid/app/HtcDeviceInfo$1;
.super Ljava/lang/Object;
.source "HtcDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/HtcDeviceInfo;
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
        "Landroid/app/HtcDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/HtcDeviceInfo;
    .locals 6
    .parameter "in"

    .prologue
    .line 232
    new-instance v0, Landroid/app/HtcDeviceInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo;-><init>()V

    .line 233
    .local v0, deviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 241
    .local v3, numProcesses:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 242
    new-instance v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 243
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    .line 251
    iget-object v4, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Landroid/app/HtcDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/HtcDeviceInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 258
    new-array v0, p1, [Landroid/app/HtcDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Landroid/app/HtcDeviceInfo$1;->newArray(I)[Landroid/app/HtcDeviceInfo;

    move-result-object v0

    return-object v0
.end method
