.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Landroid/net/HtcIfConnectivityManager;


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final ADMIN_DNS1_Priority:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADMIN_DNS2_Priority:I = 0x96
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADMIN_Priority:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADMIN_RTB:Ljava/lang/String; = "admin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CMMail_Priority:I = 0x2bc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CMMail_RTB:Ljava/lang/String; = "cmmail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CMail_RTB:Ljava/lang/String; = "cmail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final CW_Priority:I = 0x50
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CW_RTB:Ljava/lang/String; = "cw"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x0

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_HTC_CURRENT_ACTIVE_NETWORK:Ljava/lang/String; = "htcCurrentActiveNetwork"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final FOTA_DNS1_Priority:I = 0x6a4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOTA_DNS2_Priority:I = 0x73a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOTA_Priority:I = 0x76c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOTA_RTB:Ljava/lang/String; = "fota"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAME_Priority:I = 0xd48
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAME_RTB:Ljava/lang/String; = "game"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GPRS_Priority:I = 0xce4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GPRS_RTB:Ljava/lang/String; = "gprs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HIPRI_DNS1_Priority:I = 0x640
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HIPRI_DNS2_Priority:I = 0x672
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HIPRI_Priority:I = 0x6a4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HIPRI_RTB:Ljava/lang/String; = "hipri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTC_CHECK_TETHER_BT:I = -0x24

.field public static final HTC_CHECK_TETHER_HOTSPOT:I = -0x23

.field public static final HTC_CHECK_TETHER_USB:I = -0x22

.field public static final HTC_NETWORK_AVALIBILITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.htcNetworkAvalibilityChange"

.field public static final HTC_PERMITTED_TETHER_ACTION:Ljava/lang/String; = "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

.field public static final HTC_PERMITTED_TETHER_ALLOW:I = 0x0

.field public static final HTC_PERMITTED_TETHER_DENY:I = 0x1

.field public static final HTC_PERMITTED_TETHER_NOT_REQUESTED:I = 0x3

.field public static final HTC_PERMITTED_TETHER_PROGRASSING:I = 0x2

.field public static final HTC_REQUEST_TETHER_BT:I = -0x14

.field public static final HTC_REQUEST_TETHER_HOTSPOT:I = -0x13

.field public static final HTC_REQUEST_TETHER_USB:I = -0x12

.field public static final HTC_RESET_TETHER_BT:I = -0x44

.field public static final HTC_RESET_TETHER_HOTSPOT:I = -0x43

.field public static final HTC_RESET_TETHER_USB:I = -0x42

.field public static final HTC_TETHER:I = -0x2

.field public static final HTC_TETHER_BT:I = 0x2

.field public static final HTC_TETHER_CHECK:I = 0x20

.field public static final HTC_TETHER_HOTSPOT:I = 0x1

.field public static final HTC_TETHER_REQUEST:I = 0x10

.field public static final HTC_TETHER_RESET:I = 0x40

.field public static final HTC_TETHER_TYPE_ALL:I = 0x3

.field public static final HTC_TETHER_USB:I = 0x0

.field public static final HTTP_Priority:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMS_Priority:I = 0xa8c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMS_RTB:Ljava/lang/String; = "ims"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final INTERNET_Priority:I = 0xc80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNET_RTB:Ljava/lang/String; = "internet"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final J2ME_Priority:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final J2ME_RTB:Ljava/lang/String; = "j2me"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_NETWORK_TYPE:I = 0x24

#the value of this static final field might be set in the static constructor
.field public static final MAX_RADIO_TYPE:I = 0x0

.field public static final MMS_DNS1_Priority:I = 0x12c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MMS_DNS2_Priority:I = 0x15e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MMS_Priority:I = 0x190
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MMS_RTB:Ljava/lang/String; = "mms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MobileMarket_Priority:I = 0x7d0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MobileMarket_RTB:Ljava/lang/String; = "MM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETSHARE_Priority:I = 0x834
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETSHARE_RTB:Ljava/lang/String; = "netshare"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTHER_Priority:I = 0xe10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String; = "domestic"

.field public static final ROAMING_PROVIDER_GSM:Ljava/lang/String; = "gsm"

.field public static final ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String; = "international"

.field public static final STREAM_Priority:I = 0xdac
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPL_DNS1_Priority:I = 0x578
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPL_DNS2_Priority:I = 0x5aa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPL_Priority:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPL_RTB:Ljava/lang/String; = "supl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_ADMIN:I = 0x10

.field public static final TYPE_MOBILE_BIP:I = 0x21

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_CDMA:I = 0x1a

.field public static final TYPE_MOBILE_CDMA_ADMIN:I = 0x22

.field public static final TYPE_MOBILE_CDMA_MMS:I = 0x1b

.field public static final TYPE_MOBILE_CMMail:I = 0x15

.field public static final TYPE_MOBILE_CMail:I = 0x17

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_ENTITLE:I = 0x18

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_GSM:I = 0x1c

.field public static final TYPE_MOBILE_GSM_ADMIN:I = 0x23

.field public static final TYPE_MOBILE_GSM_MMS:I = 0x1d

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_HTTPPROXY:I = 0xf

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_INTERNET:I = 0x13

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_MobileMarket:I = 0x14

.field public static final TYPE_MOBILE_OTASP:I = 0x19

.field public static final TYPE_MOBILE_SUB_GSM:I = 0x1e

.field public static final TYPE_MOBILE_SUB_GSM_ADMIN:I = 0x24

.field public static final TYPE_MOBILE_SUB_GSM_MMS:I = 0x1f

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_Verizon800:I = 0x20

.field public static final TYPE_MOBILE_VerizonApp:I = 0x16

.field public static final TYPE_MOBILE_WAPGATEWAY:I = 0xe

.field public static final TYPE_MOBILE_WIMAX:I = 0x6

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_USBNET:I = 0x12

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_HOTSPOT:I = 0x11

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field public static final VPN_DNS1_Priority:I = 0x960
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VPN_DNS2_Priority:I = 0x992
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VPN_Priority:I = 0x9c4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VPN_RTB:Ljava/lang/String; = "vpn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VZWAPP_DNS1_Priority:I = 0x898
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VZWAPP_DNS2_Priority:I = 0x8ca
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VZWAPP_Priority:I = 0x8fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VZWAPP_RTB:Ljava/lang/String; = "vzwapp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WAP_CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.WAP_CONN_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WAP_DISCONNECT_ACTION:Ljava/lang/String; = "android.net.conn.WAP_CONN_DISCONNECT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WAP_Priority:I = 0x258
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WAP_RTB:Ljava/lang/String; = "wap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_Priority:I = 0xbb9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_RTB:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIMAX_Priority:I = 0xc1c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIMAX_RTB:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final other_RTB:Ljava/lang/String; = "other"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final stream_RTB:Ljava/lang/String; = "stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x12

    .line 499
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_USBNET_flag:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    .line 524
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_USBNET_flag:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    sput v1, Landroid/net/ConnectivityManager;->DEFAULT_NETWORK_PREFERENCE:I

    return-void

    .line 499
    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    .line 524
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1296
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 1297
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 1301
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 748
    packed-switch p0, :pswitch_data_0

    .line 833
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 750
    :pswitch_0
    const-string v0, "MOBILE"

    goto :goto_0

    .line 752
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 754
    :pswitch_2
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 756
    :pswitch_3
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 758
    :pswitch_4
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 760
    :pswitch_5
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 762
    :pswitch_6
    const-string v0, "WIMAX"

    goto :goto_0

    .line 764
    :pswitch_7
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 766
    :pswitch_8
    const-string v0, "DUMMY"

    goto :goto_0

    .line 768
    :pswitch_9
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 770
    :pswitch_a
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    .line 772
    :pswitch_b
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    .line 774
    :pswitch_c
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    .line 776
    :pswitch_d
    const-string v0, "WIFI_P2P"

    goto :goto_0

    .line 780
    :pswitch_e
    const-string v0, "MOBILE_WAPGATEWAY"

    goto :goto_0

    .line 782
    :pswitch_f
    const-string v0, "MOBILE_HTTPPROXY"

    goto :goto_0

    .line 784
    :pswitch_10
    const-string v0, "MOBILE_ADMIN"

    goto :goto_0

    .line 786
    :pswitch_11
    const-string v0, "WIFI_HOTSPOT"

    goto :goto_0

    .line 788
    :pswitch_12
    const-string v0, "USBNET"

    goto :goto_0

    .line 790
    :pswitch_13
    const-string v0, "MOBILE_INTERNET"

    goto :goto_0

    .line 792
    :pswitch_14
    const-string v0, "MOBILE_MobileMarket"

    goto :goto_0

    .line 794
    :pswitch_15
    const-string v0, "MOBILE_CMMail"

    goto :goto_0

    .line 796
    :pswitch_16
    const-string v0, "MOBILE_VerizonApp"

    goto :goto_0

    .line 798
    :pswitch_17
    const-string v0, "MOBILE_CMail"

    goto :goto_0

    .line 800
    :pswitch_18
    const-string v0, "MOBILE_ENTITLE"

    goto :goto_0

    .line 802
    :pswitch_19
    const-string v0, "MOBILE_OTASP"

    goto :goto_0

    .line 807
    :pswitch_1a
    const-string v0, "MOBILE_CDMA"

    goto :goto_0

    .line 809
    :pswitch_1b
    const-string v0, "MOBILE_CDMA_MMS"

    goto :goto_0

    .line 811
    :pswitch_1c
    const-string v0, "MOBILE_CDMA_ADMIN"

    goto :goto_0

    .line 813
    :pswitch_1d
    const-string v0, "MOBILE_GSM"

    goto :goto_0

    .line 815
    :pswitch_1e
    const-string v0, "MOBILE_GSM_MMS"

    goto :goto_0

    .line 817
    :pswitch_1f
    const-string v0, "MOBILE_GSM_ADMIN"

    goto :goto_0

    .line 819
    :pswitch_20
    const-string v0, "MOBILE_SUB_GSM"

    goto :goto_0

    .line 821
    :pswitch_21
    const-string v0, "MOBILE_SUB_GSM_MMS"

    goto :goto_0

    .line 823
    :pswitch_22
    const-string v0, "MOBILE_SUB_GSM_ADMIN"

    goto :goto_0

    .line 828
    :pswitch_23
    const-string v0, "MOBILE_Verizon800"

    goto :goto_0

    .line 830
    :pswitch_24
    const-string v0, "MOBILE_BIP"

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 839
    packed-switch p0, :pswitch_data_0

    .line 883
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 881
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 743
    if-ltz p0, :cond_0

    const/16 v0, 0x24

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubTypeCDMA(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, isCDMAType:Z
    packed-switch p0, :pswitch_data_0

    .line 902
    :goto_0
    :pswitch_0
    return v0

    .line 899
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActiveApnState()[Lcom/htc/net/ApnState;
    .locals 2

    .prologue
    .line 1268
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveApnState()[Lcom/htc/net/ApnState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1270
    :goto_0
    return-object v1

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 965
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 967
    :goto_0
    return-object v1

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 933
    :goto_0
    return-object v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "uid"

    .prologue
    .line 940
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 942
    :goto_0
    return-object v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    .prologue
    .line 1138
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1140
    :goto_0
    return-object v1

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 956
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 958
    :goto_0
    return-object v1

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1111
    const/4 v0, 0x1

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1608
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1610
    :goto_0
    return-object v1

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "receivedNetworkInfo"

    .prologue
    .line 1189
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1191
    :goto_0
    return-object v1

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 1447
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1449
    :goto_0
    return v1

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 974
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 976
    :goto_0
    return-object v1

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 1152
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1154
    :goto_0
    return v1

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMobileDataPhoneType()I
    .locals 2

    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataPhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1216
    :goto_0
    return v1

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataPhoneType(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1243
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    packed-switch p1, :pswitch_data_0

    .line 1258
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v0

    .line 1261
    :goto_0
    return v0

    .line 1248
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1252
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1256
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1261
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1244
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 948
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 950
    :goto_0
    return-object v1

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkNameServers(I)[Ljava/lang/String;
    .locals 2
    .parameter "networkType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1180
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkNameServers(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1182
    :goto_0
    return-object v1

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 917
    :goto_0
    return v1

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPhoneMobileDataEnabled(I)Z
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1203
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getPhoneMobileDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1205
    :goto_0
    return v1

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyEnable(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "slot"

    .prologue
    .line 1285
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getPolicyEnable(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1287
    :goto_0
    return v1

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1620
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1622
    :goto_0
    return-object v1

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1399
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1401
    :goto_0
    return-object v1

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1309
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1311
    :goto_0
    return-object v1

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1377
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1379
    :goto_0
    return-object v1

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1388
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1390
    :goto_0
    return-object v1

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1320
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1322
    :goto_0
    return-object v1

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1331
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1333
    :goto_0
    return-object v1

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public htcRegisterPermittedTether(IILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "internalIface"
    .parameter "externalIface"

    .prologue
    const/4 v7, 0x1

    .line 1529
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1531
    :goto_0
    return v0

    .line 1530
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    move v0, v7

    .line 1531
    goto :goto_0
.end method

.method public htcRequestPermittedTether(IILjava/lang/String;)I
    .locals 2
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "iface"

    .prologue
    .line 1513
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1515
    :goto_0
    return v1

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "iface"
    .parameter "permission"

    .prologue
    .line 1558
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    return-void

    .line 1559
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public htcUnRegisterPermittedTether(IILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "internalIface"
    .parameter "externalIface"

    .prologue
    .line 1545
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1547
    :goto_0
    return v0

    .line 1546
    :catch_0
    move-exception v6

    .line 1547
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .prologue
    .line 1665
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1667
    :goto_0
    return v1

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1651
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1653
    :goto_0
    return v0

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 2

    .prologue
    .line 1366
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1368
    :goto_0
    return v1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 1
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 1586
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    :goto_0
    return-void

    .line 1587
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)Z
    .locals 2
    .parameter "forWhom"

    .prologue
    .line 1572
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    const/4 v1, 0x1

    .line 1575
    :goto_0
    return v1

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestRouteToHost(II)Z
    .locals 4
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 1053
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1055
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 1057
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v1, 0x0

    .line 1062
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHost(ILjava/net/InetAddress;)Z
    .locals 1
    .parameter "networkType"
    .parameter "hostIpAddress"

    .prologue
    .line 1087
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 1076
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1078
    .local v0, address:[B
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v0}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1080
    :goto_0
    return v2

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .parameter "allowBackgroundData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1127
    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 1
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1633
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    :goto_0
    return-void

    .line 1634
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1597
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    :goto_0
    return-void

    .line 1598
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1167
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataPhoneType(I)Z
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1226
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataPhoneType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1228
    :goto_0
    return v1

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 908
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPhoneMobileDataPhoneType(I)Z
    .locals 1
    .parameter "phoneType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1236
    const/4 v0, 0x0

    return v0
.end method

.method public setPolicyEnable(IZI)V
    .locals 1
    .parameter "networkType"
    .parameter "enabled"
    .parameter "slot"

    .prologue
    .line 1278
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setPolicyEnable(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRadio(IZ)Z
    .locals 2
    .parameter "networkType"
    .parameter "turnOn"

    .prologue
    .line 992
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 994
    :goto_0
    return v1

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 2
    .parameter "turnOn"

    .prologue
    .line 983
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 985
    :goto_0
    return v1

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 1410
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1412
    :goto_0
    return v1

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1013
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
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
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1035
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1037
    :goto_0
    return v1

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 1343
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1345
    :goto_0
    return v1

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 1355
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1357
    :goto_0
    return v1

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method
