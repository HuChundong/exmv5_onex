.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_NotifyWifiPhoneCallComeIn:I = 0x33

.field static final TRANSACTION_NotifyWifiPhoneCallEnd:I = 0x34

.field static final TRANSACTION_RemoveOpenNetworkFromBlockedList:I = 0x49

.field static final TRANSACTION_acquireMulticastLock:I = 0x1a

.field static final TRANSACTION_acquireWifiLock:I = 0x15

.field static final TRANSACTION_addOpenNetworkToBlockedList:I = 0x48

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_addToBlacklist:I = 0x23

.field static final TRANSACTION_checkWifiApEnabledMhsRequest:I = 0x46

.field static final TRANSACTION_clearBlacklist:I = 0x24

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disableSsdpPacket:I = 0x2a

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableAutoIP:I = 0x2c

.field static final TRANSACTION_enableFakeScanResult:I = 0x4c

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_enablePowerActiveForFotaDownload:I = 0x30

.field static final TRANSACTION_enablePowerActiveMode:I = 0x2f

.field static final TRANSACTION_enableSsdpPacket:I = 0x29

.field static final TRANSACTION_getAssocListStr:I = 0x5f

.field static final TRANSACTION_getAssociationManual:I = 0x4e

.field static final TRANSACTION_getClientInfo:I = 0x40

.field static final TRANSACTION_getConfigFile:I = 0x27

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getDhcpInfo:I = 0x14

.field static final TRANSACTION_getDockWifiApAutoEnabled:I = 0x36

.field static final TRANSACTION_getDockWifiAutoEnabled:I = 0x38

.field static final TRANSACTION_getDongleScanList:I = 0x5c

.field static final TRANSACTION_getFrequencyBand:I = 0x11

.field static final TRANSACTION_getHotspotNumAllowedChannels:I = 0x41

.field static final TRANSACTION_getMostPreferredNetwork:I = 0x3e

.field static final TRANSACTION_getOpenNetworkBlockedList:I = 0x4a

.field static final TRANSACTION_getRequestedList:I = 0x42

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getTetheringDhcpRange:I = 0x60

.field static final TRANSACTION_getWagAddress:I = 0x3b

.field static final TRANSACTION_getWagAsUserDefined:I = 0x3a

.field static final TRANSACTION_getWifiApConfiguration:I = 0x1e

.field static final TRANSACTION_getWifiApEnabledState:I = 0x1d

.field static final TRANSACTION_getWifiDisplayApConfig:I = 0x55

.field static final TRANSACTION_getWifiEnabledState:I = 0xe

.field static final TRANSACTION_getWifiOffloadEnabled:I = 0x32

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x25

.field static final TRANSACTION_getWifiStateMachineMessenger:I = 0x26

.field static final TRANSACTION_getWifidisplayApEnabled:I = 0x52

.field static final TRANSACTION_getWifidisplayApState:I = 0x51

.field static final TRANSACTION_getWirelessDisplayCommonApConfiguration:I = 0x1f

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x18

.field static final TRANSACTION_isDualBandSupported:I = 0x12

.field static final TRANSACTION_isMulticastEnabled:I = 0x19

.field static final TRANSACTION_isWifiPowerModeNormal:I = 0x2e

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x1b

.field static final TRANSACTION_releaseWifiLock:I = 0x17

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_resetDhcpConfig:I = 0x43

.field static final TRANSACTION_saveConfiguration:I = 0x13

.field static final TRANSACTION_setAssociationManual:I = 0x4d

.field static final TRANSACTION_setCountryCode:I = 0xf

.field static final TRANSACTION_setDockWifiApAutoEnabled:I = 0x35

.field static final TRANSACTION_setDockWifiAutoEnabled:I = 0x37

.field static final TRANSACTION_setFakeScanResult:I = 0x4b

.field static final TRANSACTION_setFrequencyBand:I = 0x10

.field static final TRANSACTION_setHotspotAutoChannel:I = 0x39

.field static final TRANSACTION_setMostPreferredNetwork:I = 0x3f

.field static final TRANSACTION_setWagAddress:I = 0x3c

.field static final TRANSACTION_setWagAsUserDefined:I = 0x3d

.field static final TRANSACTION_setWifiApConfig:I = 0x44

.field static final TRANSACTION_setWifiApConfiguration:I = 0x20

.field static final TRANSACTION_setWifiApEnabled:I = 0x1c

.field static final TRANSACTION_setWifiApEnabledMhsRequest:I = 0x47

.field static final TRANSACTION_setWifiApMacList:I = 0x45

.field static final TRANSACTION_setWifiDisplayApConfig:I = 0x56

.field static final TRANSACTION_setWifiDisplayApMacList:I = 0x57

.field static final TRANSACTION_setWifiDisplayConfigure:I = 0x58

.field static final TRANSACTION_setWifiDisplayConfigureGuestKey:I = 0x59

.field static final TRANSACTION_setWifiDisplayUnscan:I = 0x5e

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_setWifiEnabledPersist:I = 0x2b

.field static final TRANSACTION_setWifiOffloadEnabled:I = 0x31

.field static final TRANSACTION_setWifiPowerSavingMode:I = 0x2d

.field static final TRANSACTION_setWifidisplayApEnabled:I = 0x54

.field static final TRANSACTION_setWifidisplayEnabled:I = 0x53

.field static final TRANSACTION_startDongleScan:I = 0x5a

.field static final TRANSACTION_startDongleSingleCscan:I = 0x5b

.field static final TRANSACTION_startDongleWakeUp:I = 0x5d

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_startWifi:I = 0x21

.field static final TRANSACTION_startWpsRegistrar:I = 0x4f

.field static final TRANSACTION_stopWifi:I = 0x22

.field static final TRANSACTION_stopWpsRegistrar:I = 0x50

.field static final TRANSACTION_tryTostartCWDeRegister:I = 0x28

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1023
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 60
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_2
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v1, v9

    .line 90
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_3
    move v1, v8

    .line 89
    goto :goto_2

    .line 97
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_6
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 109
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_5

    move v8, v9

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v4           #_result:Z
    :sswitch_7
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    move v0, v9

    .line 118
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v8

    .line 117
    goto :goto_3

    .line 124
    :sswitch_8
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 132
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_9
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    :sswitch_a
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    :sswitch_b
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    :sswitch_c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 155
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_7

    .line 157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 161
    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v4           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v0, v9

    .line 170
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 171
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v4, :cond_8

    move v8, v9

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_9
    move v0, v8

    .line 169
    goto :goto_4

    .line 177
    :sswitch_e
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 179
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v4           #_result:I
    :sswitch_f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v1, v9

    .line 190
    .restart local v1       #_arg1:Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_a
    move v1, v8

    .line 189
    goto :goto_5

    .line 196
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    move v1, v9

    .line 201
    .restart local v1       #_arg1:Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_b
    move v1, v8

    .line 200
    goto :goto_6

    .line 207
    .end local v0           #_arg0:I
    :sswitch_11
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 209
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v4           #_result:I
    :sswitch_12
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 217
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v4, :cond_c

    move v8, v9

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v4           #_result:Z
    :sswitch_13
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 225
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v4, :cond_d

    move v8, v9

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v4           #_result:Z
    :sswitch_14
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 233
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v4, :cond_e

    .line 235
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v4, p3, v9}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 239
    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_15
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 249
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10

    .line 254
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 259
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_7
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 260
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v4, :cond_f

    move v8, v9

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;
    goto :goto_7

    .line 266
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/WorkSource;
    :sswitch_16
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 270
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    .line 271
    sget-object v8, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 276
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 274
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;
    goto :goto_8

    .line 282
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :sswitch_17
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 285
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 286
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v4, :cond_12

    move v8, v9

    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 292
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_18
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 299
    :sswitch_19
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 301
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v4, :cond_13

    move v8, v9

    :cond_13
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    .end local v4           #_result:Z
    :sswitch_1a
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 311
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_1b
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 325
    :sswitch_1c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_14

    .line 328
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 334
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_15

    move v1, v9

    .line 335
    .local v1, _arg1:Z
    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 331
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    :cond_14
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_9

    :cond_15
    move v1, v8

    .line 334
    goto :goto_a

    .line 341
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1d
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 343
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 349
    .end local v4           #_result:I
    :sswitch_1e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 351
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v4, :cond_16

    .line 353
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 357
    :cond_16
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 365
    .restart local v4       #_result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v4, :cond_17

    .line 367
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 371
    :cond_17
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_20
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_18

    .line 380
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 385
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 383
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_18
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .line 391
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_21
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 398
    :sswitch_22
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 405
    :sswitch_23
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 414
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 421
    :sswitch_25
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 423
    .local v4, _result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v4, :cond_19

    .line 425
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    invoke-virtual {v4, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 429
    :cond_19
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 435
    .end local v4           #_result:Landroid/os/Messenger;
    :sswitch_26
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 437
    .restart local v4       #_result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v4, :cond_1a

    .line 439
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    invoke-virtual {v4, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 443
    :cond_1a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v4           #_result:Landroid/os/Messenger;
    :sswitch_27
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_28
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->tryTostartCWDeRegister()V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 464
    :sswitch_29
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->enableSsdpPacket()Z

    move-result v4

    .line 466
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v4, :cond_1b

    move v8, v9

    :cond_1b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v4           #_result:Z
    :sswitch_2a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disableSsdpPacket()Z

    move-result v4

    .line 474
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v4, :cond_1c

    move v8, v9

    :cond_1c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 480
    .end local v4           #_result:Z
    :sswitch_2b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1e

    move v0, v9

    .line 484
    .local v0, _arg0:Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f

    move v1, v9

    .line 485
    .restart local v1       #_arg1:Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledPersist(ZZ)Z

    move-result v4

    .line 486
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v4, :cond_1d

    move v8, v9

    :cond_1d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_1e
    move v0, v8

    .line 482
    goto :goto_c

    .restart local v0       #_arg0:Z
    :cond_1f
    move v1, v8

    .line 484
    goto :goto_d

    .line 492
    .end local v0           #_arg0:Z
    :sswitch_2c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAutoIP(I)Z

    move-result v4

    .line 496
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v4, :cond_20

    move v8, v9

    :cond_20
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 502
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_2d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 505
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiPowerSavingMode(I)Z

    move-result v4

    .line 506
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v4, :cond_21

    move v8, v9

    :cond_21
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 512
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_2e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiPowerModeNormal()Z

    move-result v4

    .line 514
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    if-eqz v4, :cond_22

    move v8, v9

    :cond_22
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 520
    .end local v4           #_result:Z
    :sswitch_2f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_24

    move v0, v9

    .line 523
    .local v0, _arg0:Z
    :goto_e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveMode(Z)Z

    move-result v4

    .line 524
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    if-eqz v4, :cond_23

    move v8, v9

    :cond_23
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_24
    move v0, v8

    .line 522
    goto :goto_e

    .line 530
    :sswitch_30
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_26

    move v0, v9

    .line 533
    .restart local v0       #_arg0:Z
    :goto_f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveForFotaDownload(Z)Z

    move-result v4

    .line 534
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v4, :cond_25

    move v8, v9

    :cond_25
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_26
    move v0, v8

    .line 532
    goto :goto_f

    .line 540
    :sswitch_31
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_28

    move v0, v9

    .line 543
    .restart local v0       #_arg0:Z
    :goto_10
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiOffloadEnabled(Z)Z

    move-result v4

    .line 544
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v4, :cond_27

    move v8, v9

    :cond_27
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_28
    move v0, v8

    .line 542
    goto :goto_10

    .line 550
    :sswitch_32
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiOffloadEnabled()Z

    move-result v4

    .line 552
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    if-eqz v4, :cond_29

    move v8, v9

    :cond_29
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 558
    .end local v4           #_result:Z
    :sswitch_33
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallComeIn()Z

    move-result v4

    .line 560
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v4, :cond_2a

    move v8, v9

    :cond_2a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 566
    .end local v4           #_result:Z
    :sswitch_34
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallEnd()Z

    move-result v4

    .line 568
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v4, :cond_2b

    move v8, v9

    :cond_2b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 574
    .end local v4           #_result:Z
    :sswitch_35
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2d

    move v0, v9

    .line 577
    .restart local v0       #_arg0:Z
    :goto_11
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiApAutoEnabled(Z)Z

    move-result v4

    .line 578
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    if-eqz v4, :cond_2c

    move v8, v9

    :cond_2c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_2d
    move v0, v8

    .line 576
    goto :goto_11

    .line 584
    :sswitch_36
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiApAutoEnabled()Z

    move-result v4

    .line 586
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v4, :cond_2e

    move v8, v9

    :cond_2e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 592
    .end local v4           #_result:Z
    :sswitch_37
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_30

    move v0, v9

    .line 595
    .restart local v0       #_arg0:Z
    :goto_12
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiAutoEnabled(Z)Z

    move-result v4

    .line 596
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v4, :cond_2f

    move v8, v9

    :cond_2f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_30
    move v0, v8

    .line 594
    goto :goto_12

    .line 602
    :sswitch_38
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiAutoEnabled()Z

    move-result v4

    .line 604
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v4, :cond_31

    move v8, v9

    :cond_31
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 610
    .end local v4           #_result:Z
    :sswitch_39
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 613
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotAutoChannel(I)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 619
    .end local v0           #_arg0:I
    :sswitch_3a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWagAsUserDefined()Z

    move-result v4

    .line 621
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    if-eqz v4, :cond_32

    move v8, v9

    :cond_32
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 627
    .end local v4           #_result:Z
    :sswitch_3b
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWagAddress()Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWagAddress(Ljava/lang/String;)Z

    move-result v4

    .line 639
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v4, :cond_33

    move v8, v9

    :cond_33
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 645
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_3d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_35

    move v0, v9

    .line 648
    .local v0, _arg0:Z
    :goto_13
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWagAsUserDefined(Z)Z

    move-result v4

    .line 649
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    if-eqz v4, :cond_34

    move v8, v9

    :cond_34
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_35
    move v0, v8

    .line 647
    goto :goto_13

    .line 655
    :sswitch_3e
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getMostPreferredNetwork()I

    move-result v4

    .line 657
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 663
    .end local v4           #_result:I
    :sswitch_3f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMostPreferredNetwork(I)Z

    move-result v4

    .line 667
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    if-eqz v4, :cond_36

    move v8, v9

    :cond_36
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 673
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_40
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getClientInfo()Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_41
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotNumAllowedChannels()I

    move-result v4

    .line 683
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 689
    .end local v4           #_result:I
    :sswitch_42
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRequestedList()Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 697
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_43
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->resetDhcpConfig()V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 704
    :sswitch_44
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_37

    .line 707
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 712
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_14
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 713
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 710
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_37
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_14

    .line 719
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_45
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_38

    .line 722
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 727
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_15
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 728
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 725
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_38
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_15

    .line 734
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_46
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWifiApEnabledMhsRequest()I

    move-result v4

    .line 736
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 742
    .end local v4           #_result:I
    :sswitch_47
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3a

    .line 745
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 751
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3b

    move v1, v9

    .line 752
    .restart local v1       #_arg1:Z
    :goto_17
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 753
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    if-eqz v4, :cond_39

    move v8, v9

    :cond_39
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 748
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_3a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_16

    :cond_3b
    move v1, v8

    .line 751
    goto :goto_17

    .line 759
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_48
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOpenNetworkToBlockedList(Ljava/lang/String;)I

    move-result v4

    .line 763
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 769
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_49
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    move-result v4

    .line 773
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 779
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_4a
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v7

    .line 781
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 787
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3d

    .line 790
    sget-object v10, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 795
    .local v0, _arg0:Landroid/net/wifi/ScanResult;
    :goto_18
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setFakeScanResult(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    .line 796
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    if-eqz v4, :cond_3c

    move v8, v9

    :cond_3c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 793
    .end local v0           #_arg0:Landroid/net/wifi/ScanResult;
    .end local v4           #_result:Z
    :cond_3d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/ScanResult;
    goto :goto_18

    .line 802
    .end local v0           #_arg0:Landroid/net/wifi/ScanResult;
    :sswitch_4c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3f

    move v0, v9

    .line 805
    .local v0, _arg0:Z
    :goto_19
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableFakeScanResult(Z)Z

    move-result v4

    .line 806
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    if-eqz v4, :cond_3e

    move v8, v9

    :cond_3e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_3f
    move v0, v8

    .line 804
    goto :goto_19

    .line 812
    :sswitch_4d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 815
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAssociationManual(I)Z

    move-result v4

    .line 816
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v4, :cond_40

    move v8, v9

    :cond_40
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 822
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4e
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssociationManual()I

    move-result v4

    .line 824
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 830
    .end local v4           #_result:I
    :sswitch_4f
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_41

    .line 833
    sget-object v8, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WpsInfo;

    .line 838
    .local v0, _arg0:Landroid/net/wifi/WpsInfo;
    :goto_1a
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 836
    .end local v0           #_arg0:Landroid/net/wifi/WpsInfo;
    :cond_41
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WpsInfo;
    goto :goto_1a

    .line 844
    .end local v0           #_arg0:Landroid/net/wifi/WpsInfo;
    :sswitch_50
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWpsRegistrar()V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 851
    :sswitch_51
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApState()I

    move-result v4

    .line 853
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 859
    .end local v4           #_result:I
    :sswitch_52
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApEnabled()Z

    move-result v4

    .line 861
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    if-eqz v4, :cond_42

    move v8, v9

    :cond_42
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 867
    .end local v4           #_result:Z
    :sswitch_53
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_44

    move v0, v9

    .line 870
    .local v0, _arg0:Z
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayEnabled(Z)Z

    move-result v4

    .line 871
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    if-eqz v4, :cond_43

    move v8, v9

    :cond_43
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_44
    move v0, v8

    .line 869
    goto :goto_1b

    .line 877
    :sswitch_54
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_45

    .line 880
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 886
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_46

    move v1, v9

    .line 887
    .restart local v1       #_arg1:Z
    :goto_1d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 883
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    :cond_45
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1c

    :cond_46
    move v1, v8

    .line 886
    goto :goto_1d

    .line 893
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_55
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 895
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v4, :cond_47

    .line 897
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 901
    :cond_47
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 907
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_56
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_48

    .line 910
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 915
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 916
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 913
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_48
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1e

    .line 922
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_57
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_49

    .line 925
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 930
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 931
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 928
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_49
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1f

    .line 937
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_58
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 941
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v4

    .line 943
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v4, :cond_4a

    move v8, v9

    :cond_4a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 949
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_59
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 953
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 955
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 957
    .local v2, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 958
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z

    move-result v4

    .line 959
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v4, :cond_4b

    move v8, v9

    :cond_4b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 965
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:[B
    .end local v3           #_arg3:I
    .end local v4           #_result:Z
    :sswitch_5a
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleScan()V

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 972
    :sswitch_5b
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 975
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleSingleCscan(I)V

    .line 976
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 981
    .end local v0           #_arg0:I
    :sswitch_5c
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDongleScanList()Ljava/util/List;

    move-result-object v5

    .line 983
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 989
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_5d
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleWakeUp(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 998
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4d

    move v0, v9

    .line 1001
    .local v0, _arg0:Z
    :goto_20
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayUnscan(Z)Z

    move-result v4

    .line 1002
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    if-eqz v4, :cond_4c

    move v8, v9

    :cond_4c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_4d
    move v0, v8

    .line 1000
    goto :goto_20

    .line 1008
    :sswitch_5f
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssocListStr()Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1016
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_60
    const-string v8, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v4

    .line 1018
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
