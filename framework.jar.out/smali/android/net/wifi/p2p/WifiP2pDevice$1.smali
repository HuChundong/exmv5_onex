.class final Landroid/net/wifi/p2p/WifiP2pDevice$1;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDevice;
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
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 309
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 310
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    #setter for: Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->access$002(Landroid/net/wifi/p2p/WifiP2pDevice;Z)Z

    .line 321
    return-object v0

    .line 319
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 325
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    return-object v0
.end method
