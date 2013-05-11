.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$Channel;,
        Landroid/net/wifi/WifiManager$WpsListener;,
        Landroid/net/wifi/WifiManager$ActionListener;,
        Landroid/net/wifi/WifiManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGEMENT_WIFI_CLIENT:Ljava/lang/String; = "com.htc.hotspot.WIFI_CLIENT_MANAGEMENT"

.field public static final ACTION_PICK_VERIZON_WIFI_NETWORK:Ljava/lang/String; = "com.htc.wifi.PICK_VERIZON_WIFI_NETWORK"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final AKA_INVALID_SIM_CHANGED_ACTION:Ljava/lang/String; = "com.htc.wifi.AKA_INVALID_SIM"

.field public static final ASSOC_LIST_CHANGE_ACTION:Ljava/lang/String; = "android.net.hotspot.ASSOCLIST"

.field private static final BASE:I = 0x25000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CMD_CHECK_IMEI_VALUE:I = 0x2a

.field public static final CMD_ENABLE_CHECK_IMEI_VALUE:I = 0x29

.field public static final CMD_START_ACCESS_POINT_MHS:I = 0x1f

.field public static final CMD_STOP_ACCESS_POINT_MHS:I = 0x20

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final CW_NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CW_STATE_CHANGE"

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final DONGLE_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.DONGLE_SCAN_RESULTS"

.field public static final EAP_NOTIFICATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.EAP_NOTIFICATION"

.field public static final ENABLE_TRAFFIC_STATS_POLL:I = 0x25015

.field public static final ERROR:I = 0x0

.field public static final ERROR_ACTION:Ljava/lang/String; = "android.net.wifi.ERROR"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BLOCK_MAC:Ljava/lang/String; = "hotspot_block_mac"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_LATEST_TIME_CONNECTION_REQUEST:Ljava/lang/String; = "hotspot_lastest_time_of_request"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_TYPE_DATA:Ljava/lang/String; = "typeData"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final HOTSPOT_CONNECTION_REQUEST_NOTIFY:Ljava/lang/String; = "android.net.hotspot.connecitonrequest"

.field public static final IN_PROGRESS:I = 0x1

.field public static final L2PE_FAIL:Ljava/lang/String; = "android.net.hotspot.L2PE_FAIL"

.field public static final L2PE_SUCCESSFUL:Ljava/lang/String; = "android.net.hotspot.L2PE_SUCCESSFUL"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x4

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SMART_WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.wifi.SMART_WIFI_STATE_CHANGED"

.field public static final SMART_WIFI_STATE_START:I = 0x1

.field public static final SMART_WIFI_STATE_STOP:I = 0x0

.field public static final SMART_WIFI_STATUS_IDEL:I = 0x0

.field public static final SMART_WIFI_STATUS_READY:I = 0x1

.field public static final SMART_WIFI_STATUS_RUNNING:I = 0x2

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_REGISTRAR:I = 0x7

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final STOP_WPS_REGISTRAR:I = 0x8

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final TRAFFIC_STATS_POLL:I = 0x25016

.field public static final WEP_ERROR:I = 0x8

.field public static final WIFIDISPLAY_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

.field public static final WIFI_AP_SET_INTERFACE_ADDRESS:Ljava/lang/String; = "com.htc.wifi.SET_HOTSPOT_INTERFACE_ADDRESS"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_FAIL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_FAIL"

.field public static final WPS_OVERLAP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_OVERLAP"

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_REGISTRAR_FAIL:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_FAIL"

.field public static final WPS_REGISTRAR_START:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_START"

.field public static final WPS_REGISTRAR_SUCCESSFUL:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

.field public static final WPS_SUCCESS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_SUCCESS"

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field public static final cw_ssid_key:Ljava/lang/String; = "cw_ssid_key"


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 627
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 628
    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$308(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$310(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 712
    :goto_0
    return v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 7
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v6, 0x5

    const/16 v5, -0x46

    const/16 v4, -0x50

    .line 1181
    const/4 v1, 0x0

    .line 1182
    .local v1, level:I
    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    if-ne p1, v6, :cond_5

    .line 1183
    :cond_0
    if-lt p0, v5, :cond_2

    .line 1184
    const/4 v1, 0x3

    .line 1192
    :goto_0
    if-ne p1, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1204
    :cond_1
    :goto_1
    return v1

    .line 1185
    :cond_2
    if-ge p0, v5, :cond_3

    if-lt p0, v4, :cond_3

    .line 1186
    const/4 v1, 0x2

    goto :goto_0

    .line 1187
    :cond_3
    if-ge p0, v4, :cond_4

    const/16 v3, -0x55

    if-lt p0, v3, :cond_4

    .line 1188
    const/4 v1, 0x1

    goto :goto_0

    .line 1190
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1194
    :cond_5
    const/16 v3, -0x64

    if-gt p0, v3, :cond_6

    .line 1195
    const/4 v1, 0x0

    goto :goto_1

    .line 1196
    :cond_6
    const/16 v3, -0x37

    if-lt p0, v3, :cond_7

    .line 1197
    add-int/lit8 v1, p1, -0x1

    goto :goto_1

    .line 1199
    :cond_7
    const/high16 v0, 0x4234

    .line 1200
    .local v0, inputRange:F
    add-int/lit8 v3, p1, -0x1

    int-to-float v2, v3

    .line 1201
    .local v2, outputRange:F
    add-int/lit8 v3, p0, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_1
.end method

.method public static calculateSignalLevel(III)I
    .locals 1
    .parameter "rssi"
    .parameter "numLevels"
    .parameter "frequency"

    .prologue
    .line 2698
    invoke-static {p0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 1218
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public NotifyWifiPhoneCallComeIn()Z
    .locals 2

    .prologue
    .line 2378
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->NotifyWifiPhoneCallComeIn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2380
    :goto_0
    return v1

    .line 2379
    :catch_0
    move-exception v0

    .line 2380
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public NotifyWifiPhoneCallEnd()Z
    .locals 2

    .prologue
    .line 2386
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->NotifyWifiPhoneCallEnd()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2388
    :goto_0
    return v1

    .line 2387
    :catch_0
    move-exception v0

    .line 2388
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I
    .locals 2
    .parameter "ssid"

    .prologue
    .line 2759
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2761
    :goto_0
    return v1

    .line 2760
    :catch_0
    move-exception v0

    .line 2761
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 671
    if-nez p1, :cond_0

    .line 675
    :goto_0
    return v0

    .line 674
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 675
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public addOpenNetworkToBlockedList(Ljava/lang/String;)I
    .locals 2
    .parameter "ssid"

    .prologue
    .line 2750
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOpenNetworkToBlockedList(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2752
    :goto_0
    return v1

    .line 2751
    :catch_0
    move-exception v0

    .line 2752
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    .line 1404
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    const/4 v1, 0x1

    .line 1407
    :goto_0
    return v1

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "srcContext"
    .parameter "srcHandler"

    .prologue
    .line 1728
    return-void
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 1905
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1907
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500e

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1908
    return-void
.end method

.method public checkWifiApEnabledMhsRequest()I
    .locals 2

    .prologue
    .line 2733
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->checkWifiApEnabledMhsRequest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2735
    :goto_0
    return v1

    .line 2734
    :catch_0
    move-exception v0

    .line 2735
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public clearBlacklist()Z
    .locals 2

    .prologue
    .line 1421
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    const/4 v1, 0x1

    .line 1424
    :goto_0
    return v1

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter "c"
    .parameter "networkId"
    .parameter "listener"

    .prologue
    .line 1777
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1778
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1780
    :cond_1
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect to network ID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_2

    .line 1784
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->tryTostartCWDeRegister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    :cond_2
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1790
    return-void

    .line 1785
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1746
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1747
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1749
    :cond_1
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect to network config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_2

    .line 1753
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->tryTostartCWDeRegister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    :cond_2
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    const/4 v2, -0x1

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1762
    return-void

    .line 1754
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .parameter "tag"

    .prologue
    .line 2186
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 2152
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .parameter "tag"

    .prologue
    .line 2168
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disable(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter "c"
    .parameter "netId"
    .parameter "listener"

    .prologue
    .line 1844
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1845
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1847
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25011

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1848
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 761
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 763
    :goto_0
    return v1

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableSsdpPacket()Z
    .locals 2

    .prologue
    .line 2402
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disableSsdpPacket()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2404
    :goto_0
    return v1

    .line 2403
    :catch_0
    move-exception v0

    .line 2404
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    const/4 v1, 0x1

    .line 777
    :goto_0
    return v1

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAutoIP(I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 2410
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableAutoIP(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2412
    :goto_0
    return v1

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableFakeScanResult(Z)Z
    .locals 2
    .parameter "enableFake"

    .prologue
    .line 2784
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableFakeScanResult(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2786
    :goto_0
    return v1

    .line 2785
    :catch_0
    move-exception v0

    .line 2786
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 746
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 748
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveForFotaDownload(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 2458
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enablePowerActiveForFotaDownload(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2460
    :goto_0
    return v1

    .line 2459
    :catch_0
    move-exception v0

    .line 2460
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveMode(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 2450
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enablePowerActiveMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2452
    :goto_0
    return v1

    .line 2451
    :catch_0
    move-exception v0

    .line 2452
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSsdpPacket()Z
    .locals 2

    .prologue
    .line 2394
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->enableSsdpPacket()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2396
    :goto_0
    return v1

    .line 2395
    :catch_0
    move-exception v0

    .line 2396
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter "c"
    .parameter "netId"
    .parameter "listener"

    .prologue
    .line 1829
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1830
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1832
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25004

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1833
    return-void
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2603
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAssocListStr()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2605
    :goto_0
    return-object v1

    .line 2604
    :catch_0
    move-exception v0

    .line 2605
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAssociationManual()I
    .locals 2

    .prologue
    .line 813
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAssociationManual()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 815
    :goto_0
    return v1

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2611
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getClientInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2613
    :goto_0
    return-object v1

    .line 2612
    :catch_0
    move-exception v0

    .line 2613
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1948
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1950
    :goto_0
    return-object v1

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 652
    :goto_0
    return-object v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 890
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 892
    :goto_0
    return-object v1

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionPolicyEnabled()Z
    .locals 1

    .prologue
    .line 2720
    const/4 v0, 0x0

    return v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 990
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 992
    :goto_0
    return-object v1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDockWifiApAutoEnabled()Z
    .locals 2

    .prologue
    .line 2490
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDockWifiApAutoEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2492
    :goto_0
    return v1

    .line 2491
    :catch_0
    move-exception v0

    .line 2492
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 2

    .prologue
    .line 2506
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDockWifiAutoEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2508
    :goto_0
    return v1

    .line 2507
    :catch_0
    move-exception v0

    .line 2508
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDongleScanList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1081
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDongleScanList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1083
    :goto_0
    return-object v1

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrequencyBand()I
    .locals 2

    .prologue
    .line 964
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 966
    :goto_0
    return v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHotspotNumAllowedChannels()I
    .locals 2

    .prologue
    .line 2619
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHotspotNumAllowedChannels()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2621
    :goto_0
    return v1

    .line 2620
    :catch_0
    move-exception v0

    .line 2621
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMostPreferredNetwork()I
    .locals 2

    .prologue
    .line 2587
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getMostPreferredNetwork()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2589
    :goto_0
    return v1

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getOpenNetworkBlockedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2768
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getOpenNetworkBlockedList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2770
    :goto_0
    return-object v1

    .line 2769
    :catch_0
    move-exception v0

    .line 2770
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2627
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRequestedList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2629
    :goto_0
    return-object v1

    .line 2628
    :catch_0
    move-exception v0

    .line 2629
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 902
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 904
    :goto_0
    return-object v1

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmartWifiState()I
    .locals 1

    .prologue
    .line 2429
    const/4 v0, 0x0

    return v0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2741
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getTetheringDhcpRange()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2743
    :goto_0
    return-object v1

    .line 2742
    :catch_0
    move-exception v0

    .line 2743
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWagAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2563
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWagAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2565
    :goto_0
    return-object v1

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWagAsUserDefined()Z
    .locals 2

    .prologue
    .line 2555
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWagAsUserDefined()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2557
    :goto_0
    return v1

    .line 2556
    :catch_0
    move-exception v0

    .line 2557
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1327
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1329
    :goto_0
    return-object v1

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 3

    .prologue
    .line 1256
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    const-string v1, "WifiManager"

    const-string v2, "WifiDisplay: WiFi Display On, return WIFI_AP_STATE_DISABLED to getWifiApState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    const/16 v1, 0xb

    .line 1271
    :goto_0
    return v1

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v2, "WifiDisplay: Got exception from getWifidisplayApEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1270
    :catch_1
    move-exception v0

    .line 1271
    .restart local v0       #e:Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 2659
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2661
    :goto_0
    return-object v1

    .line 2660
    :catch_0
    move-exception v0

    .line 2661
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiOffloadEnabled()Z
    .locals 2

    .prologue
    .line 2474
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiOffloadEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2476
    :goto_0
    return v1

    .line 2475
    :catch_0
    move-exception v0

    .line 2476
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1921
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1923
    :goto_0
    return-object v1

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 1154
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1156
    :goto_0
    return v1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1934
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1936
    :goto_0
    return-object v1

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifidisplayApEnabled()Z
    .locals 2

    .prologue
    .line 1022
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1024
    :goto_0
    return v1

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifidisplayApState()I
    .locals 2

    .prologue
    .line 1014
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1016
    :goto_0
    return v1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1312
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1314
    :goto_0
    return-object v1

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;
    .locals 5
    .parameter "srcContext"
    .parameter "srcLooper"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 1705
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 1706
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 1713
    :cond_0
    :goto_0
    return-object v0

    .line 1708
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiManager$Channel;

    invoke-direct {v0, p2, p3}, Landroid/net/wifi/WifiManager$Channel;-><init>(Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)V

    .line 1709
    .local v0, c:Landroid/net/wifi/WifiManager$Channel;
    iget-object v3, v0, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Landroid/net/wifi/WifiManager$Channel;->mHandler:Landroid/net/wifi/WifiManager$Channel$WifiHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1713
    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 2368
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    const/4 v1, 0x1

    .line 2371
    :goto_0
    return v1

    .line 2370
    :catch_0
    move-exception v0

    .line 2371
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 977
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 979
    :goto_0
    return v1

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2356
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2358
    :goto_0
    return v1

    .line 2357
    :catch_0
    move-exception v0

    .line 2358
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiApEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1286
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1288
    const-string v2, "WifiManager"

    const-string v3, "WifiDisplay: WiFi Display On, return false to isWifiApEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    :goto_0
    return v1

    .line 1292
    :cond_1
    const-string v2, "WifiManager"

    const-string v3, "WifiDisplay: isWifiApEnabled=FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 1166
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiPowerModeNormal()Z
    .locals 2

    .prologue
    .line 2442
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isWifiPowerModeNormal()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2444
    :goto_0
    return v1

    .line 2443
    :catch_0
    move-exception v0

    .line 2444
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 841
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 846
    :goto_0
    return v1

    .line 844
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    const/4 v1, 0x1

    .line 831
    :goto_0
    return v1

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 789
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    const/4 v1, 0x1

    .line 792
    :goto_0
    return v1

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 726
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 728
    :goto_0
    return v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDhcpConfig()V
    .locals 1

    .prologue
    .line 2635
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->resetDhcpConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    :goto_0
    return-void

    .line 2636
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1810
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1811
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1813
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25007

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1814
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 919
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 921
    :goto_0
    return v1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAssociationManual(I)Z
    .locals 2
    .parameter "isManual"

    .prologue
    .line 802
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setAssociationManual(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    const/4 v1, 0x1

    .line 805
    :goto_0
    return v1

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setConnectionPolicyEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2709
    const/4 v0, 0x0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 1
    .parameter "country"
    .parameter "persist"

    .prologue
    .line 934
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2482
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setDockWifiApAutoEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2484
    :goto_0
    return v1

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2498
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setDockWifiAutoEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2500
    :goto_0
    return v1

    .line 2499
    :catch_0
    move-exception v0

    .line 2500
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFakeScanResult(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .parameter "fackScanResult"

    .prologue
    .line 2776
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setFakeScanResult(Landroid/net/wifi/ScanResult;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2778
    :goto_0
    return v1

    .line 2777
    :catch_0
    move-exception v0

    .line 2778
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 1
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 949
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHotspotAutoChannel(I)V
    .locals 1
    .parameter "autoChannel"

    .prologue
    .line 2514
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setHotspotAutoChannel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2517
    :goto_0
    return-void

    .line 2515
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 2
    .parameter "networkId"

    .prologue
    .line 2595
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setMostPreferredNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2597
    :goto_0
    return v1

    .line 2596
    :catch_0
    move-exception v0

    .line 2597
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWagAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "addr"

    .prologue
    .line 2571
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWagAddress(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2573
    :goto_0
    return v1

    .line 2572
    :catch_0
    move-exception v0

    .line 2573
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWagAsUserDefined(Z)Z
    .locals 2
    .parameter "set"

    .prologue
    .line 2579
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWagAsUserDefined(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2581
    :goto_0
    return v1

    .line 2580
    :catch_0
    move-exception v0

    .line 2581
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 2642
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2644
    :goto_0
    return v1

    .line 2643
    :catch_0
    move-exception v0

    .line 2644
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 1341
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    const/4 v1, 0x1

    .line 1344
    :goto_0
    return v1

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1235
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    const/4 v1, 0x1

    .line 1238
    :goto_0
    return v1

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 2725
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2727
    :goto_0
    return v1

    .line 2726
    :catch_0
    move-exception v0

    .line 2727
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 2650
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2652
    :goto_0
    return v1

    .line 2651
    :catch_0
    move-exception v0

    .line 2652
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 2667
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2669
    :goto_0
    return v1

    .line 2668
    :catch_0
    move-exception v0

    .line 2669
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 2675
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2677
    :goto_0
    return v1

    .line 2676
    :catch_0
    move-exception v0

    .line 2677
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .locals 3
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    const/4 v1, 0x0

    .line 1105
    if-nez p2, :cond_0

    .line 1111
    :goto_0
    return v1

    .line 1109
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiDisplayConfigure(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;[BI)Z
    .locals 3
    .parameter "channel"
    .parameter "BSSID"
    .parameter "guest_key"
    .parameter "transId"

    .prologue
    const/4 v1, 0x0

    .line 1116
    if-nez p2, :cond_0

    .line 1122
    :goto_0
    return v1

    .line 1120
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/wifi/IWifiManager;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWifiDisplayUnscan(Z)Z
    .locals 2
    .parameter "disabled"

    .prologue
    .line 1137
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDisplayUnscan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    const/4 v1, 0x1

    .line 1140
    :goto_0
    return v1

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1005
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1007
    :goto_0
    return v1

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabledPersist(ZZ)Z
    .locals 2
    .parameter "enabled"
    .parameter "persist"

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1053
    :goto_0
    return v1

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiOffloadEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2466
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiOffloadEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2468
    :goto_0
    return v1

    .line 2467
    :catch_0
    move-exception v0

    .line 2468
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiPowerSavingMode(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 2434
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiPowerSavingMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2436
    :goto_0
    return v1

    .line 2435
    :catch_0
    move-exception v0

    .line 2436
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1039
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplay: setWifidisplayApEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    const/4 v1, 0x1

    .line 1043
    :goto_0
    return v1

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifidisplayEnabled(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1030
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplay: setWifidisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifidisplayEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1033
    :goto_0
    return v1

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWpsPbcMode()Z
    .locals 1

    .prologue
    .line 2539
    const/4 v0, 0x0

    return v0
.end method

.method public setWpsPinMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bssid"

    .prologue
    .line 2550
    const/4 v0, 0x0

    return-object v0
.end method

.method public startDongleScan()Z
    .locals 3

    .prologue
    .line 1060
    const-string v1, "WifiManager"

    const-string v2, "[Simon] startDongleScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startDongleScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    const/4 v1, 0x1

    .line 1065
    :goto_0
    return v1

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startDongleSingleCscan(I)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 1070
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Simon] startDongleSingleCscan at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startDongleSingleCscan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    const/4 v1, 0x1

    .line 1075
    :goto_0
    return v1

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startDongleWakeUp(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    .line 1089
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startDongleWakeUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    const/4 v1, 0x1

    .line 1092
    :goto_0
    return v1

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startScan()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 858
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    const/4 v1, 0x1

    .line 861
    :goto_0
    return v1

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startScanActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 877
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return v1

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWifi()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1362
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 1363
    const-string v2, "WifiManager"

    const-string/jumbo v3, "startWiFi() called when mService = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :goto_0
    return v1

    .line 1367
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    const/4 v1, 0x1

    goto :goto_0

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V
    .locals 4
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1891
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1892
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1894
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500a

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1895
    return-void
.end method

.method public declared-synchronized startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 1859
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiManager"

    const-string v2, "[Simon] startWpsRegistrar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    :goto_0
    monitor-exit p0

    return-void

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1859
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopWifi()Z
    .locals 2

    .prologue
    .line 1387
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    const/4 v1, 0x1

    .line 1390
    :goto_0
    return v1

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopWps()V
    .locals 0

    .prologue
    .line 2529
    return-void
.end method

.method public declared-synchronized stopWpsRegistrar()V
    .locals 3

    .prologue
    .line 1874
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiManager"

    const-string v2, "[Simon] stopWpsRegistrar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWpsRegistrar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    :goto_0
    monitor-exit p0

    return-void

    .line 1876
    :catch_0
    move-exception v0

    .line 1877
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1874
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 694
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 695
    :cond_0
    const/4 v0, -0x1

    .line 697
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method
