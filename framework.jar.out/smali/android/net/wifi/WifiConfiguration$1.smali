.class final Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
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
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 949
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 950
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 956
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 957
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    .line 956
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 961
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 962
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 963
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 964
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 965
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 967
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 968
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 967
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    move v6, v8

    .line 960
    goto :goto_1

    .line 972
    .restart local v0       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 983
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 990
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 991
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    :goto_3
    iput-boolean v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 992
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    .line 993
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 994
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 995
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 996
    const/4 v3, 0x0

    :goto_4
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 997
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 996
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v7, v8

    .line 991
    goto :goto_3

    .line 998
    :cond_4
    const/4 v3, 0x0

    :goto_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 999
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 998
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1000
    :cond_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 1001
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 1002
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 1003
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1004
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1005
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 1006
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1007
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1009
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 1010
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 1011
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 1013
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 1017
    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method
