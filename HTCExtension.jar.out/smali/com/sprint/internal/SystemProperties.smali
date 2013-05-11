.class public Lcom/sprint/internal/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/SystemProperties$CmdThread;,
        Lcom/sprint/internal/SystemProperties$SettingProp;,
        Lcom/sprint/internal/SystemProperties$Prop;
    }
.end annotation


# static fields
.field private static final APN0:I = 0x1b0

.field private static final APN1:I = 0x1b1

.field private static final APN2:I = 0x1b2

.field private static final APN3:I = 0x1b3

.field private static final APN4:I = 0x1b4

.field private static final APN5:I = 0x1b5

.field private static final APN6:I = 0x1b6

.field private static final APN7:I = 0x1b7

.field private static final A_Key:I = 0x190

.field private static final A_Key_new:I = 0x18f

.field private static final BC10:I = 0x1a5

.field private static final BROWSER_ACCEPT_HEADER:I = 0xc

.field private static final BROWSER_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Browser"

.field private static final BROWSER_FORCECHANGE_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/force_change_Browser"

.field private static final BROWSER_HOME_URL:I = 0x8

.field private static final BROWSER_USER_AGENT:I = 0x9

#the value of this static final field might be set in the static constructor
.field public static final DBG:Z = false

.field private static final DEVICE_MODEL:I = 0x15

.field private static final DEVID:I = 0x121

.field private static final DEVINFO_DM_VER:I = 0x92

.field private static final DEVINFO_LANG:I = 0x93

.field private static final DEVINFO_MAN:I = 0x91

.field private static final DM_ADDR:I = 0x7b

.field private static final DM_ADDR_TYPE:I = 0x7c

.field private static final DM_NAME:I = 0x7a

.field private static final DSA_Operation_Mode:I = 0x1a2

.field private static final DSA_SERVER_PROXY_IP:I = 0x195

.field private static final DSA_SERVER_PROXY_PORT:I = 0x196

.field private static final DSA_SERVER_URL:I = 0x192

.field private static final EHRPD:I = 0x1af

.field private static final ENABLELTE:I = 0x1ad

.field private static final FORCELTE:I = 0x1ae

.field private static final HTTPPD_PROXY_ADDR:I = 0x19e

.field private static final HTTPPD_PROXY_PORT:I = 0x19f

.field private static final INTL_ROAM_GUARD:I = 0x1a8

#the value of this static final field might be set in the static constructor
.field public static final IS_BOOST_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NOT_SPC_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_SPRINT_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_VM_PROJECT:Z = false

.field private static final MDN:I = 0x1

.field private static final MEID:I = 0x1e

.field private static final MSID:I = 0x23

.field private static final NETWORK_TYPE:I = 0x34

.field private static final PRL_Version:I = 0x19b

.field public static final PROP_MEDIA_HttpProxyHost:Ljava/lang/String; = "streamplayer_httpproxyip_HTC"

.field public static final PROP_MEDIA_HttpProxyPort:Ljava/lang/String; = "streamplayer_httpproxyport_HTC"

.field public static final PROP_MEDIA_RtspProxyHost:Ljava/lang/String; = "streamplayer_rtspproxyip_HTC"

.field public static final PROP_MEDIA_RtspProxyPort:Ljava/lang/String; = "streamplayer_rtspproxyport_HTC"

.field private static final Pseudo_ESN:I = 0x3

.field private static final ROAM_GUARD:I = 0x48

.field private static final RTSP_PROXY_ADDR:I = 0x19c

.field private static final RTSP_PROXY_PORT:I = 0x19d

.field private static final SELLER_NAME_420:I = 0x1a4

.field static final SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp; = null

.field private static final SIWA_Key:I = 0x10000001

.field private static final SIWA_Key_new_440:I = 0x1b8

.field private static final SO68:I = 0x1a7

.field static final SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop; = null

.field private static final Slot_1_AAA_Auth_Algo:I = 0x5d

.field private static final Slot_1_AAA_SPI:I = 0x5e

.field private static final Slot_1_HA_Auth_Algo:I = 0x5a

.field private static final Slot_1_HA_Password:I = 0x5c

.field private static final Slot_1_HA_SPI:I = 0x5b

.field private static final Slot_1_Mobile_IP_Address:I = 0x57

.field private static final Slot_1_NAI:I = 0x2

.field private static final Slot_1_NAI_Password:I = 0x2b

.field private static final Slot_1_Primary_HA:I = 0x32

.field private static final Slot_1_Reverse_Tunnel:I = 0x56

.field private static final Slot_1_Secondary_HA:I = 0x33

.field private static TAG:Ljava/lang/String; = null

.field private static final UAProf:I = 0xe

.field private static final VOICEMAIL_COUNT:I = 0x16d

.field private static final WIMAX_MACID:I = 0x1a0

.field private static final WIMAX_PASSWORD:I = 0x1cc

.field private static final WIMAX_WORKMODE:I = 0x1cd

.field private static final countLock:Ljava/lang/Object;

.field private static dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

.field public static flagLoad:Z


# instance fields
.field private APNCa:[Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

.field private mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspendLock_set:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field message:Ljava/lang/String;

.field private signaturePass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v7, 0xc

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    const-string v0, "HTC-DSA-SystemProperties"

    sput-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->DBG:Z

    .line 38
    sput-boolean v2, Lcom/sprint/internal/SystemProperties;->flagLoad:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 46
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    .line 47
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    .line 48
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v7, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    .line 49
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    .line 1037
    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/sprint/internal/SystemProperties$Prop;

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "MDN"

    invoke-direct {v3, v1, v4, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "Slot1 NAI"

    invoke-direct {v3, v8, v4, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "Pseudo ESN"

    invoke-direct {v3, v9, v4, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v8

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v4, 0x8

    const-string v5, "Browser Home URL"

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v9

    const/4 v3, 0x4

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x9

    const-string v6, "Browser User Agent"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/4 v3, 0x5

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v5, "Browser Accept Header"

    invoke-direct {v4, v7, v5, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0xe

    const-string v6, "UAProf"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x15

    const-string v6, "Device Model Name"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1e

    const-string v6, "MEID"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x23

    const-string v6, "MSID"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x2b

    const-string v6, "Slot1 NAI Password"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x32

    const-string v6, "Slot1 Primary HA"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v4, 0x33

    const-string v5, "Slot1 Secondary HA"

    invoke-direct {v3, v4, v5, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v7

    const/16 v3, 0xd

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x34

    const-string v6, "Network Type"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x48

    const-string v6, "Domestic Data Roam Guard"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x56

    const-string v6, "Slot1 Reverse Tunneling"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x57

    const-string v6, "Slot1 Mobile IP"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x11

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5a

    const-string v6, "Slot1 HA Auth Algorithm"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x12

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5b

    const-string v6, "Slot1 HA SPI"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x13

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5c

    const-string v6, "Slot1 HA Password"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x14

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5d

    const-string v6, "Slot1 AAA Auth Algorithm"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x15

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5e

    const-string v6, "Slot1 AAA SPI"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x16

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x7a

    const-string v6, "DM Name"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x17

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x7b

    const-string v6, "DM Address"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x18

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x7c

    const-string v6, "DM Address Type"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x19

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x91

    const-string v6, "Manufacturer"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x92

    const-string v6, "DM Version"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x93

    const-string v6, "Language"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x121

    const-string v6, "DEVID"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x16d

    const-string v6, "Voice Mail Count"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x18f

    const-string v6, "A-Key"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x190

    const-string v6, "A-Key"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x20

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x192

    const-string v6, "DSA Server URL"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x21

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x195

    const-string v6, "DSA Server Proxy IP"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x22

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x196

    const-string v6, "DSA Server Proxy Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x23

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x197

    const-string v6, "MS-Assisted Timout"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x24

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19b

    const-string v6, "PRL Version"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x25

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19c

    const-string v6, "RTSP Proxy Address"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x26

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19d

    const-string v6, "RTSP Proxy Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x27

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19e

    const-string v6, "RTSP HTTPPD Address"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x28

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19f

    const-string v6, "RTSP HTTPPD Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x29

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a0

    const-string v6, "WIMAX Mac ID"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a2

    const-string v6, "DSA Operation Mode"

    invoke-direct {v4, v5, v6, v2, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a4

    const-string v6, "Seller Name"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x2c

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a5

    const-string v6, "BC10"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x2d

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a7

    const-string v6, "SO68"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x2e

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a8

    const-string v6, "International Data Roam Guard"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x2f

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const v5, 0x10000001

    const-string v6, "SIWA Key"

    sget-boolean v7, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x30

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b8

    const-string v6, "SIWA Key"

    sget-boolean v7, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x31

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x12c

    const-string v6, "MobileSync Enabled"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x32

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1ad

    const-string v6, "Enable/Disable LTE"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x33

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1ae

    const-string v6, "Force LTE on/off"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x34

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1af

    const-string v6, "EHRPD Enable/Disable"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x35

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b0

    const-string v6, "APN0"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x36

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b1

    const-string v6, "APN1"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x37

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b2

    const-string v6, "APN2"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x38

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b3

    const-string v6, "APN3"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x39

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b4

    const-string v6, "APN4"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x3a

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b5

    const-string v6, "APN5"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x3b

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b6

    const-string v6, "APN6"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x3c

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b7

    const-string v6, "APN7"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    sput-object v0, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    .line 1113
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sprint/internal/SystemProperties$SettingProp;

    new-instance v3, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v4, 0x19c

    const-string v5, "streamplayer_rtspproxyip_HTC"

    invoke-direct {v3, v4, v5}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    new-instance v2, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v3, 0x19d

    const-string v4, "streamplayer_rtspproxyport_HTC"

    invoke-direct {v2, v3, v4}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v2, 0x19e

    const-string v3, "streamplayer_httpproxyip_HTC"

    invoke-direct {v1, v2, v3}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v2, 0x19f

    const-string v3, "streamplayer_httpproxyport_HTC"

    invoke-direct {v1, v2, v3}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/sprint/internal/SystemProperties;->SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp;

    return-void

    :cond_0
    move v0, v2

    .line 46
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 47
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 48
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 49
    goto/16 :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctxt"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->message:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    .line 319
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    .line 63
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemProperties - Caller: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 70
    iget-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "htctelephony"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    .line 79
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 80
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 81
    invoke-static {p1}, Lcom/sprint/internal/ExtInterfaceConnector;->getSingleton(Landroid/content/Context;)Lcom/sprint/internal/ExtInterfaceConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

    goto :goto_0
.end method

.method private GetATAgent()Lcom/sprint/internal/dm/DMAgentConnector;
    .locals 5

    .prologue
    .line 85
    sget-object v2, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Release AT agent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/sprint/internal/SystemProperties;->ReleaseATAgent()V

    .line 91
    :cond_1
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-nez v1, :cond_2

    .line 92
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "nul: Initial AT agent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v3, ":IDOMADM"

    invoke-direct {v1, v3}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 94
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_2
    :try_start_1
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dmATAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countLock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    monitor-exit v2

    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 102
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static declared-synchronized ReleaseATAgent()V
    .locals 4

    .prologue
    .line 106
    const-class v1, Lcom/sprint/internal/SystemProperties;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    sget-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 116
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    monitor-exit v1

    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 114
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 114
    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    :try_start_5
    sput-object v3, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/internal/SystemProperties;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties;->getStringViaDMagent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    return-object v0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1258
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1259
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1262
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1263
    const/4 v0, 0x0

    .line 1267
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 1266
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getBrowserAcceptHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1410
    const-string v0, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    return-object v0
.end method

.method private getBrowserHomepage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1402
    const-string v0, "content://customization_settings/SettingTable/application_Browser"

    const-string v1, "homepage"

    const-string v2, "url"

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/internal/SystemProperties;->queryValueFromDabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBrowserUAProfile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1414
    const-string v0, "content://customization_settings/SettingTable/force_change_Browser"

    const-string v1, "ua_profile"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/internal/SystemProperties;->queryValueFromDabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBrowserUAString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1406
    const-string v0, "content://customization_settings/SettingTable/force_change_Browser"

    const-string v1, "ua_string"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/internal/SystemProperties;->queryValueFromDabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDMVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1427
    const-string v0, "1.2"

    return-object v0
.end method

.method private getDSA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1195
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1196
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, ""

    .line 1197
    .local v1, strDSAURL:Ljava/lang/String;
    const-string v2, "dsa_server_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    if-nez v1, :cond_0

    .line 1199
    const-string v1, ""

    .line 1201
    :cond_0
    return-object v1
.end method

.method private getDSAProxyIP()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_proxy_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, proxyUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 123
    const-string v2, ""

    .line 128
    .end local v1           #proxyUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 125
    .restart local v1       #proxyUrl:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 126
    .end local v1           #proxyUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const-string v2, ""

    goto :goto_0
.end method

.method private getDSAProxyPort()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_proxy_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, proxyUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 135
    const-string v2, "0"

    .line 140
    .end local v1           #proxyUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 137
    .restart local v1       #proxyUrl:Ljava/lang/String;
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 138
    .end local v1           #proxyUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const-string v2, ""

    goto :goto_0
.end method

.method private getDeviceModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1431
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private getNetworkType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1439
    const-string v2, "UNKNOWN"

    .line 1440
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1441
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1442
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1443
    .local v1, networkType:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1444
    const-string v2, "WIFI"

    .line 1451
    .end local v1           #networkType:I
    :cond_0
    :goto_0
    return-object v2

    .line 1445
    .restart local v1       #networkType:I
    :cond_1
    if-nez v1, :cond_2

    .line 1446
    const-string v2, "CDMA"

    goto :goto_0

    .line 1447
    :cond_2
    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 1448
    const-string v2, "WIMAX"

    goto :goto_0
.end method

.method private getPRLVer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1496
    const-string v1, "ro.cdma.prl"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, prl_prop:Ljava/lang/String;
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPRLVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_0
    return-object v0
.end method

.method private getSIWA_Key()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 1284
    const/4 v2, 0x0

    .line 1285
    .local v2, isException:Z
    const-string v3, ""

    .line 1286
    .local v3, result:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1287
    .local v5, s_Key:Ljava/lang/String;
    sget-object v7, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1288
    :try_start_0
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->GetATAgent()Lcom/sprint/internal/dm/DMAgentConnector;

    move-result-object v0

    .line 1289
    .local v0, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 1290
    const-string v6, "AT+HTC_SIWA_KEY=?"

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1291
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 1292
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    if-nez v5, :cond_0

    .line 1294
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v7, "s_Key is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v2, 0x1

    .line 1314
    :goto_0
    if-eqz v2, :cond_2

    .line 1315
    new-instance v6, Lcom/sprint/internal/SystemPropertiesException;

    const-string v7, "SystemProperty readable exception: not allow to read"

    invoke-direct {v6, v7}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1292
    .end local v0           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1299
    .restart local v0       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :cond_0
    :try_start_2
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1301
    .local v4, sKey:[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 1302
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIWA_Key result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v2, 0x1

    .line 1307
    :cond_1
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1308
    .end local v4           #sKey:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1309
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v7, "s_Key[1].toString().trim() ERROR !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/4 v2, 0x1

    goto :goto_0

    .line 1318
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-object v3
.end method

.method private getSellerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    if-eqz v0, :cond_0

    .line 1324
    const-string v0, "Sprint"

    .line 1350
    :goto_0
    return-object v0

    .line 1326
    :cond_0
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    if-eqz v0, :cond_1

    .line 1327
    const-string v0, "Virgin"

    goto :goto_0

    .line 1329
    :cond_1
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    if-eqz v0, :cond_2

    .line 1330
    const-string v0, "Boost"

    goto :goto_0

    .line 1350
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 1206
    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringViaDMagent(I)Ljava/lang/String;
    .locals 23
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 322
    const-string v16, ""

    .line 323
    .local v16, result:Ljava/lang/String;
    const/4 v7, 0x0

    .line 329
    .local v7, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const v18, 0x10000001

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1b8

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 331
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sprint/internal/SystemProperties;->getSIWA_Key()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    move-object/from16 v6, v16

    .line 558
    :goto_0
    return-object v6

    .line 332
    :catch_0
    move-exception v10

    .line 333
    .local v10, e:Lcom/sprint/internal/SystemPropertiesException;
    throw v10

    .line 337
    .end local v10           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_1
    const/16 v18, 0x1a5

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 338
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "getBC10"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v7, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v7           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v18, ":IDOMADM"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v7       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v7, :cond_6

    .line 342
    :try_start_1
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 343
    const-string v18, "C8265507"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, aTemp:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BC10 get "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v18, 0x8

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "0740"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_3

    .line 346
    const-string v16, "1"

    .line 349
    :goto_1
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BC10"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 356
    if-eqz v7, :cond_2

    .line 357
    :try_start_2
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 362
    :cond_2
    :goto_2
    const/4 v7, 0x0

    .end local v5           #aTemp:Ljava/lang/String;
    :goto_3
    move-object/from16 v6, v16

    .line 364
    goto :goto_0

    .line 348
    .restart local v5       #aTemp:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v16, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 359
    :catch_1
    move-exception v10

    .line 360
    .local v10, e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 351
    .end local v5           #aTemp:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 353
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 356
    if-eqz v7, :cond_4

    .line 357
    :try_start_4
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 362
    :cond_4
    :goto_4
    const/4 v7, 0x0

    .line 363
    goto :goto_3

    .line 359
    :catch_3
    move-exception v10

    .line 360
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 355
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 356
    if-eqz v7, :cond_5

    .line 357
    :try_start_5
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 362
    :cond_5
    :goto_5
    const/4 v7, 0x0

    throw v18

    .line 359
    :catch_4
    move-exception v10

    .line 360
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "close Connection fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 366
    .end local v10           #e:Ljava/lang/Exception;
    :cond_6
    const-string v6, "0"

    goto/16 :goto_0

    .line 368
    :cond_7
    const/16 v18, 0x1a7

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 369
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "getSO68"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v7, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v7           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v18, ":IDOMADM"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 371
    .restart local v7       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v7, :cond_c

    .line 373
    :try_start_6
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 374
    const-string v18, "C82606100"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 375
    .restart local v5       #aTemp:Ljava/lang/String;
    const/16 v18, 0x8

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 376
    .local v4, aInt:I
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSO68 get "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    .line 378
    const-string v16, "1"

    .line 381
    :goto_6
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SO68"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 388
    if-eqz v7, :cond_8

    .line 389
    :try_start_7
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 394
    :cond_8
    :goto_7
    const/4 v7, 0x0

    .end local v4           #aInt:I
    .end local v5           #aTemp:Ljava/lang/String;
    :goto_8
    move-object/from16 v6, v16

    .line 396
    goto/16 :goto_0

    .line 380
    .restart local v4       #aInt:I
    .restart local v5       #aTemp:Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v16, "0"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    .line 391
    :catch_5
    move-exception v10

    .line 392
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 383
    .end local v4           #aInt:I
    .end local v5           #aTemp:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v10

    .line 385
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 388
    if-eqz v7, :cond_a

    .line 389
    :try_start_9
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 394
    :cond_a
    :goto_9
    const/4 v7, 0x0

    .line 395
    goto :goto_8

    .line 391
    :catch_7
    move-exception v10

    .line 392
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 387
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    .line 388
    if-eqz v7, :cond_b

    .line 389
    :try_start_a
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 394
    :cond_b
    :goto_a
    const/4 v7, 0x0

    throw v18

    .line 391
    :catch_8
    move-exception v10

    .line 392
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "close Connection fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 398
    .end local v10           #e:Ljava/lang/Exception;
    :cond_c
    const-string v6, "0"

    goto/16 :goto_0

    .line 400
    :cond_d
    const/16 v18, 0x1ae

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 401
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "getFLTE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v18

    const-string v19, ":DMD:PROVISION:GET_LTE_FORCE_FLAG"

    invoke-virtual/range {v18 .. v19}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, CMD_getresult:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GetForceLTE first:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    .line 406
    goto/16 :goto_0

    .line 409
    .end local v3           #CMD_getresult:Ljava/lang/String;
    :cond_e
    const/16 v18, 0x1af

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 410
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "getEHRPD"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v7, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v7           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v18, ":IDOMADM"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v7       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v7, :cond_13

    .line 414
    :try_start_b
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 415
    const-string v18, "C8266413"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 416
    .restart local v5       #aTemp:Ljava/lang/String;
    const/16 v18, 0x8

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 417
    .restart local v4       #aInt:I
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getEHRPD get "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v4, v0, :cond_10

    .line 419
    const-string v16, "1"

    .line 422
    :goto_b
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EHRPD"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 429
    if-eqz v7, :cond_f

    .line 430
    :try_start_c
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 435
    :cond_f
    :goto_c
    const/4 v7, 0x0

    .end local v4           #aInt:I
    .end local v5           #aTemp:Ljava/lang/String;
    :goto_d
    move-object/from16 v6, v16

    .line 437
    goto/16 :goto_0

    .line 421
    .restart local v4       #aInt:I
    .restart local v5       #aTemp:Ljava/lang/String;
    :cond_10
    :try_start_d
    const-string v16, "0"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_b

    .line 432
    :catch_9
    move-exception v10

    .line 433
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 424
    .end local v4           #aInt:I
    .end local v5           #aTemp:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v10

    .line 426
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 429
    if-eqz v7, :cond_11

    .line 430
    :try_start_e
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 435
    :cond_11
    :goto_e
    const/4 v7, 0x0

    .line 436
    goto :goto_d

    .line 432
    :catch_b
    move-exception v10

    .line 433
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 428
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v18

    .line 429
    if-eqz v7, :cond_12

    .line 430
    :try_start_f
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 435
    :cond_12
    :goto_f
    const/4 v7, 0x0

    throw v18

    .line 432
    :catch_c
    move-exception v10

    .line 433
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "close Connection fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 439
    .end local v10           #e:Ljava/lang/Exception;
    :cond_13
    const-string v6, "0"

    goto/16 :goto_0

    .line 441
    :cond_14
    const/16 v18, 0x1ad

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 449
    :try_start_10
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "rlte"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-string v19, "isUserSettingLTE"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 451
    .local v12, isUserSettingLTE:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 452
    .local v11, isEnableLTE:Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 453
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "rlte 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v6, "1"

    goto/16 :goto_0

    .line 457
    :cond_15
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "rlte 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v6, "0"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    goto/16 :goto_0

    .line 461
    .end local v11           #isEnableLTE:Ljava/lang/Boolean;
    .end local v12           #isUserSettingLTE:Ljava/lang/reflect/Method;
    :catch_d
    move-exception v10

    .line 462
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "rlte exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v6, "0"

    goto/16 :goto_0

    .line 474
    .end local v10           #e:Ljava/lang/Exception;
    :cond_16
    const/16 v18, 0x1b0

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_18

    const/16 v18, 0x1b7

    move/from16 v0, p1

    move/from16 v1, v18

    if-gt v0, v1, :cond_18

    .line 475
    move/from16 v0, p1

    add-int/lit16 v2, v0, -0x1b0

    .line 476
    .local v2, APNnum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    if-eqz v18, :cond_17

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, p1

    add-int/lit16 v0, v0, -0x1b0

    move/from16 v19, v0

    aget-object v6, v18, v19

    .line 479
    .local v6, atemp:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "read c"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 483
    .end local v6           #atemp:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sprint/internal/APNCtl;->getInstance(Landroid/content/Context;)Lcom/sprint/internal/APNCtl;

    move-result-object v13

    .line 484
    .local v13, mAPNCtl:Lcom/sprint/internal/APNCtl;
    invoke-virtual {v13}, Lcom/sprint/internal/APNCtl;->dumpQUERYAPNStructure()V

    .line 485
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/sprint/internal/APNCtl;->ParseAPNStructureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 486
    .restart local v6       #atemp:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "read "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    .end local v2           #APNnum:I
    .end local v6           #atemp:Ljava/lang/String;
    .end local v13           #mAPNCtl:Lcom/sprint/internal/APNCtl;
    :cond_18
    new-instance v7, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v7           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v18, ":XCMD"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 507
    .restart local v7       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v7, :cond_1b

    .line 509
    :try_start_11
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 510
    const/16 v18, 0x23

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 512
    const-string v18, "C018"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 513
    .local v14, min1:Ljava/lang/String;
    invoke-static {v14}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 514
    .local v8, dwMin1:Ljava/lang/Long;
    invoke-static {v8}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v14

    .line 517
    const-string v18, "C019"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 518
    .local v15, min2:Ljava/lang/String;
    invoke-static {v15}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 520
    .local v9, dwMin2:Ljava/lang/Long;
    const-string v18, "%03d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-wide/16 v21, 0x3

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 521
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    move-result-object v16

    .line 549
    .end local v8           #dwMin1:Ljava/lang/Long;
    .end local v9           #dwMin2:Ljava/lang/Long;
    .end local v14           #min1:Ljava/lang/String;
    .end local v15           #min2:Ljava/lang/String;
    :cond_19
    :goto_10
    if-eqz v7, :cond_1a

    .line 550
    :try_start_12
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 555
    :cond_1a
    :goto_11
    const/4 v7, 0x0

    :cond_1b
    :goto_12
    move-object/from16 v6, v16

    .line 558
    goto/16 :goto_0

    .line 523
    :cond_1c
    :try_start_13
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 529
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    if-eqz v16, :cond_1e

    .line 530
    invoke-static/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 539
    :cond_1d
    :goto_13
    if-nez v16, :cond_19

    .line 540
    const-string v16, ""

    goto :goto_10

    .line 532
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v18

    if-eqz v18, :cond_1f

    if-eqz v16, :cond_1f

    .line 533
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    .end local v16           #result:Ljava/lang/String;
    .local v17, result:Ljava/lang/String;
    move-object/from16 v16, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v16       #result:Ljava/lang/String;
    goto :goto_13

    .line 535
    :cond_1f
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v18

    if-eqz v18, :cond_20

    if-eqz v16, :cond_20

    .line 536
    invoke-static/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_13

    .line 537
    :cond_20
    const/16 v18, 0x56

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    .line 538
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    move-result-object v16

    goto :goto_13

    .line 552
    :catch_e
    move-exception v10

    .line 553
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 544
    .end local v10           #e:Ljava/lang/Exception;
    :catch_f
    move-exception v10

    .line 546
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 549
    if-eqz v7, :cond_21

    .line 550
    :try_start_14
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    .line 555
    :cond_21
    :goto_14
    const/4 v7, 0x0

    .line 556
    goto :goto_12

    .line 552
    :catch_10
    move-exception v10

    .line 553
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close Connection fail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 548
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v18

    .line 549
    if-eqz v7, :cond_22

    .line 550
    :try_start_15
    invoke-virtual {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    .line 555
    :cond_22
    :goto_15
    const/4 v7, 0x0

    throw v18

    .line 552
    :catch_11
    move-exception v10

    .line 553
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "close Connection fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private getWimaxMacId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1479
    const/4 v2, 0x0

    .line 1480
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    const-string v4, "fourG_wimax"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 1481
    .local v1, manager:Lcom/htc/net/wimax/HTCWimax4GManager;
    invoke-virtual {v1}, Lcom/htc/net/wimax/HTCWimax4GManager;->getConnectionInfo()Lcom/htc/net/FourG/FourGInfo;

    move-result-object v0

    .line 1482
    .local v0, info:Lcom/htc/net/FourG/FourGInfo;
    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 1485
    :cond_0
    return-object v2
.end method

.method private isDomDataRoamGuardEnabled()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1456
    .local v0, enabled:Z
    if-eqz v0, :cond_0

    const-string v1, "true"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method private isIntDataRoamGuardEnabled()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1468
    .local v0, enabled:Z
    if-eqz v0, :cond_0

    const-string v1, "true"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method private isMainThread()Z
    .locals 6

    .prologue
    .line 1557
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1558
    .local v2, myLooper:Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1559
    .local v1, mainLooper:Landroid/os/Looper;
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 1560
    .local v0, bIsMainLooper:Z
    :goto_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bIsMainLooper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return v0

    .line 1559
    .end local v0           #bIsMainLooper:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v11, 0x0

    .line 1218
    const/4 v7, 0x0

    .line 1219
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1222
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1223
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1224
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1226
    if-nez v7, :cond_1

    .line 1227
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    if-eqz v7, :cond_0

    .line 1247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1248
    const/4 v7, 0x0

    :cond_0
    move-object v2, v11

    .line 1252
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1231
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1232
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1234
    const/4 v7, 0x0

    .line 1246
    if-eqz v7, :cond_2

    .line 1247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1248
    const/4 v7, 0x0

    :cond_2
    move-object v2, v11

    goto :goto_0

    .line 1238
    :cond_3
    :try_start_2
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1240
    .local v10, idValue:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 1241
    .local v8, data:[B
    invoke-direct {p0, v8}, Lcom/sprint/internal/SystemProperties;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 1246
    if-eqz v7, :cond_4

    .line 1247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1248
    const/4 v7, 0x0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    :cond_4
    :goto_1
    move-object v2, v6

    .line 1252
    goto :goto_0

    .line 1242
    :catch_0
    move-exception v9

    .line 1243
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Quering browser customization database failed with exception, abort performing customization"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1244
    const/4 v6, 0x0

    .line 1246
    if-eqz v7, :cond_4

    .line 1247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1248
    const/4 v7, 0x0

    goto :goto_1

    .line 1246
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 1247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1248
    const/4 v7, 0x0

    :cond_5
    throw v2
.end method

.method public static mappingItem(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 1125
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 1162
    :goto_0
    return-object v0

    .line 1126
    :cond_0
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 1128
    :sswitch_0
    const-string v0, "C001"

    goto :goto_0

    .line 1132
    :sswitch_1
    const-string v0, "C004"

    goto :goto_0

    .line 1134
    :sswitch_2
    const-string v0, "C003"

    goto :goto_0

    .line 1136
    :sswitch_3
    const-string v0, "C005"

    goto :goto_0

    .line 1138
    :sswitch_4
    const-string v0, "C005"

    goto :goto_0

    .line 1140
    :sswitch_5
    const-string v0, "C006"

    goto :goto_0

    .line 1142
    :sswitch_6
    const-string v0, "C007"

    goto :goto_0

    .line 1144
    :sswitch_7
    const-string v0, "C008"

    goto :goto_0

    .line 1146
    :sswitch_8
    const-string v0, "C009"

    goto :goto_0

    .line 1148
    :sswitch_9
    const-string v0, "C010"

    goto :goto_0

    .line 1150
    :sswitch_a
    const-string v0, "C011"

    goto :goto_0

    .line 1152
    :sswitch_b
    const-string v0, "C012"

    goto :goto_0

    .line 1154
    :sswitch_c
    const-string v0, "C013"

    goto :goto_0

    .line 1156
    :sswitch_d
    const-string v0, "C014"

    goto :goto_0

    .line 1158
    :sswitch_e
    const-string v0, "C015"

    goto :goto_0

    .line 1160
    :sswitch_f
    const-string v0, "C016"

    goto :goto_0

    .line 1126
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x1e -> :sswitch_1
        0x2b -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x56 -> :sswitch_e
        0x57 -> :sswitch_f
        0x5a -> :sswitch_9
        0x5b -> :sswitch_a
        0x5c -> :sswitch_b
        0x5d -> :sswitch_c
        0x5e -> :sswitch_d
        0x18f -> :sswitch_4
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method private queryValueFromDabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "uriString"
    .parameter "bundleKey"
    .parameter "valueKey"

    .prologue
    .line 1354
    const/4 v8, 0x0

    .line 1355
    .local v8, c:Landroid/database/Cursor;
    const-string v14, "NULL"

    .line 1358
    .local v14, result:Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1359
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1360
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1362
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1365
    const-string v3, "value"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1366
    .local v11, idValue:I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1370
    .local v9, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1371
    .local v13, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v9

    invoke-virtual {v13, v9, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1372
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1373
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1374
    .local v7, bundle:Landroid/os/Bundle;
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1377
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 1378
    .local v12, nameBundle:Landroid/os/Bundle;
    if-nez v12, :cond_1

    .line 1379
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find bundle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #data:[B
    .end local v11           #idValue:I
    .end local v12           #nameBundle:Landroid/os/Bundle;
    .end local v13           #parcel:Landroid/os/Parcel;
    :goto_0
    if-eqz v8, :cond_0

    .line 1392
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1393
    const/4 v8, 0x0

    .line 1397
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-object v14

    .line 1381
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v9       #data:[B
    .restart local v11       #idValue:I
    .restart local v12       #nameBundle:Landroid/os/Bundle;
    .restart local v13       #parcel:Landroid/os/Parcel;
    :cond_1
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1384
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #data:[B
    .end local v11           #idValue:I
    .end local v12           #nameBundle:Landroid/os/Bundle;
    .end local v13           #parcel:Landroid/os/Parcel;
    :cond_2
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying database failed. URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1387
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 1388
    .local v10, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "Querying database failed with exception. "

    invoke-static {v3, v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1391
    if-eqz v8, :cond_0

    .line 1392
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1393
    const/4 v8, 0x0

    goto :goto_1

    .line 1391
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_3

    .line 1392
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1393
    const/4 v8, 0x0

    :cond_3
    throw v3
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 918
    return-void
.end method

.method private setDSAProxyIP(Ljava/lang/String;)V
    .locals 5
    .parameter "strIP"

    .prologue
    .line 145
    const-string v2, ""

    .line 146
    .local v2, proxyUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyPort()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, port:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 149
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    :goto_0
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_proxy_url"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    :goto_1
    return-void

    .line 152
    :cond_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setDSAProxyPort(Ljava/lang/String;)V
    .locals 5
    .parameter "strPort"

    .prologue
    .line 161
    const-string v1, ""

    .line 162
    .local v1, proxyUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyIP()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, strIP:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 165
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_0
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_proxy_url"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    :goto_1
    return-void

    .line 168
    :cond_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setDomDataRoamGuardEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "strEnabled"

    .prologue
    .line 1460
    if-eqz p1, :cond_0

    .line 1461
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1462
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1464
    .end local v0           #enabled:Z
    :cond_0
    return-void
.end method

.method private setIntDataRoamGuardEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "strEnabled"

    .prologue
    .line 1472
    if-eqz p1, :cond_0

    .line 1473
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1474
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1476
    .end local v0           #enabled:Z
    :cond_0
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "lang"

    .prologue
    .line 1435
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1436
    return-void
.end method

.method private setSettingValue(Landroid/content/ContentResolver;ILjava/lang/String;)V
    .locals 3
    .parameter "cr"
    .parameter "id"
    .parameter "value"

    .prologue
    .line 1211
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1213
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/sprint/internal/SystemProperties;->getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 178
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 314
    :cond_0
    :goto_0
    return-object v1

    .line 179
    :cond_1
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") 04211700"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    iget-boolean v3, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v3, :cond_3

    .line 181
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_3
    invoke-static {p1}, Lcom/sprint/internal/SystemProperties$Prop;->getReadable(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 184
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not allowed to read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "SystemProperty readable exception: not allow to read"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_4
    const-string v3, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-static {v3}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 198
    const-string v1, ""

    .line 199
    .local v1, result:Ljava/lang/String;
    const/16 v3, 0x5a

    if-eq p1, v3, :cond_5

    const/16 v3, 0x5d

    if-ne p1, v3, :cond_7

    .line 200
    :cond_5
    const-string v1, "MD5"

    .line 313
    :goto_1
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    .end local v1           #result:Ljava/lang/String;
    :cond_6
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "****** require SYSTEMPROPERTIES permission-getString!!****** "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "Current process does not hascom.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    .restart local v1       #result:Ljava/lang/String;
    :cond_7
    const/16 v3, 0x192

    if-ne p1, v3, :cond_8

    .line 203
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSA()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 205
    :cond_8
    const/16 v3, 0x195

    if-ne p1, v3, :cond_9

    .line 206
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyIP()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 208
    :cond_9
    const/16 v3, 0x196

    if-ne p1, v3, :cond_a

    .line 209
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyPort()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 211
    :cond_a
    const/16 v3, 0x19c

    if-lt p1, v3, :cond_b

    const/16 v3, 0x19f

    if-gt p1, v3, :cond_b

    .line 212
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/sprint/internal/SystemProperties;->getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 214
    :cond_b
    const/16 v3, 0x19b

    if-ne p1, v3, :cond_c

    .line 215
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getPRLVer()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 217
    :cond_c
    const/16 v3, 0x1a4

    if-ne p1, v3, :cond_d

    .line 218
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getSellerName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 220
    :cond_d
    const/16 v3, 0x8

    if-ne p1, v3, :cond_e

    .line 221
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getBrowserHomepage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 223
    :cond_e
    const/16 v3, 0x9

    if-ne p1, v3, :cond_f

    .line 224
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getBrowserUAString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 226
    :cond_f
    const/16 v3, 0xc

    if-ne p1, v3, :cond_10

    .line 227
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getBrowserAcceptHeader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 229
    :cond_10
    const/16 v3, 0xe

    if-ne p1, v3, :cond_11

    .line 230
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getBrowserUAProfile()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 232
    :cond_11
    const/16 v3, 0x15

    if-ne p1, v3, :cond_12

    .line 233
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDeviceModelName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 235
    :cond_12
    const/16 v3, 0x34

    if-ne p1, v3, :cond_13

    .line 236
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 238
    :cond_13
    const/16 v3, 0x48

    if-ne p1, v3, :cond_14

    .line 239
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isDomDataRoamGuardEnabled()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 241
    :cond_14
    const/16 v3, 0x91

    if-ne p1, v3, :cond_15

    .line 242
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 244
    :cond_15
    const/16 v3, 0x92

    if-ne p1, v3, :cond_16

    .line 245
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDMVersion()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 247
    :cond_16
    const/16 v3, 0x93

    if-ne p1, v3, :cond_17

    .line 248
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 250
    :cond_17
    const/16 v3, 0x121

    if-ne p1, v3, :cond_18

    .line 252
    const/16 v3, 0x1e

    invoke-virtual {p0, v3}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 254
    :cond_18
    const/16 v3, 0x16d

    if-ne p1, v3, :cond_19

    .line 255
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 257
    :cond_19
    const/16 v3, 0x1a0

    if-ne p1, v3, :cond_1a

    .line 258
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getWimaxMacId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 263
    :cond_1a
    const/16 v3, 0x1a8

    if-ne p1, v3, :cond_1b

    .line 264
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isIntDataRoamGuardEnabled()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 266
    :cond_1b
    const/16 v3, 0x7a

    if-ne p1, v3, :cond_1c

    .line 267
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

    invoke-virtual {v3}, Lcom/sprint/internal/ExtInterfaceConnector;->getDMName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 269
    :cond_1c
    const/16 v3, 0x7b

    if-ne p1, v3, :cond_1d

    .line 270
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

    invoke-virtual {v3}, Lcom/sprint/internal/ExtInterfaceConnector;->getDMAddr()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 272
    :cond_1d
    const/16 v3, 0x7c

    if-ne p1, v3, :cond_1e

    .line 273
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

    invoke-virtual {v3}, Lcom/sprint/internal/ExtInterfaceConnector;->getDMAddrType()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 277
    :cond_1e
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isMainThread()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 279
    new-instance v2, Lcom/sprint/internal/SystemProperties$1;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties$1;-><init>(Lcom/sprint/internal/SystemProperties;)V

    .line 297
    .local v2, t:Lcom/sprint/internal/SystemProperties$CmdThread;
    iget-object v4, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 298
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;->setID(I)V

    .line 299
    invoke-virtual {v2}, Lcom/sprint/internal/SystemProperties$CmdThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :try_start_1
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/sprint/internal/SystemProperties$CmdThread;->getStrResult()Ljava/lang/String;

    move-result-object v1

    .line 307
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "wait><"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 309
    .end local v0           #ie:Ljava/lang/InterruptedException;
    .end local v2           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_1f
    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties;->getStringViaDMagent(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public isRevert(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 1187
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return v0

    .line 1188
    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_0

    .line 1190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransHexid(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1179
    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1180
    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_0

    :cond_2
    move v0, v1

    .line 1183
    goto :goto_0
.end method

.method public isTransIPid(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 1168
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v0

    .line 1169
    :cond_1
    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    const/16 v1, 0x33

    if-eq p1, v1, :cond_0

    const/16 v1, 0x57

    if-eq p1, v1, :cond_0

    .line 1175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDSA(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 1272
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1273
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 1275
    .local v0, blStore:Z
    :try_start_0
    const-string v3, "dsa_server_url"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1279
    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1276
    :catch_0
    move-exception v2

    .line 1277
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1279
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setString(ILjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 822
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setString("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-boolean v3, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v3, :cond_2

    .line 825
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 827
    :cond_2
    invoke-static {p1}, Lcom/sprint/internal/SystemProperties$Prop;->getWritable(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 828
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not allowed to write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "SystemProperty writable exception: not allow to write"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 833
    :cond_3
    const-string v3, "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    invoke-static {v3}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 834
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "****** require SYSTEMPROPERTIES_WRITE permission-setString!!****** "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "Current process does not hascom.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 839
    :cond_4
    const/4 v0, 0x1

    .line 840
    .local v0, bPropNoDMAgent:Z
    const/16 v3, 0x192

    if-ne p1, v3, :cond_5

    .line 841
    invoke-virtual {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSA(Ljava/lang/String;)I

    .line 874
    :goto_1
    if-nez v0, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isMainThread()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 880
    new-instance v2, Lcom/sprint/internal/SystemProperties$2;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties$2;-><init>(Lcom/sprint/internal/SystemProperties;)V

    .line 899
    .local v2, t:Lcom/sprint/internal/SystemProperties$CmdThread;
    iget-object v4, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    monitor-enter v4

    .line 900
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;->setID(I)V

    .line 901
    invoke-virtual {v2, p2}, Lcom/sprint/internal/SystemProperties$CmdThread;->setValue(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v2}, Lcom/sprint/internal/SystemProperties$CmdThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    :try_start_1
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 909
    :goto_2
    :try_start_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 843
    .end local v2           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_5
    const/16 v3, 0x19c

    if-lt p1, v3, :cond_6

    const/16 v3, 0x19f

    if-gt p1, v3, :cond_6

    .line 844
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/sprint/internal/SystemProperties;->setSettingValue(Landroid/content/ContentResolver;ILjava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_6
    const/16 v3, 0x195

    if-ne p1, v3, :cond_7

    .line 847
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSAProxyIP(Ljava/lang/String;)V

    goto :goto_1

    .line 849
    :cond_7
    const/16 v3, 0x196

    if-ne p1, v3, :cond_8

    .line 850
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSAProxyPort(Ljava/lang/String;)V

    goto :goto_1

    .line 852
    :cond_8
    const/16 v3, 0x48

    if-ne p1, v3, :cond_9

    .line 853
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDomDataRoamGuardEnabled(Ljava/lang/String;)V

    goto :goto_1

    .line 855
    :cond_9
    const/16 v3, 0x93

    if-ne p1, v3, :cond_a

    .line 856
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setLanguage(Ljava/lang/String;)V

    goto :goto_1

    .line 858
    :cond_a
    const/16 v3, 0x1a8

    if-ne p1, v3, :cond_b

    .line 859
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setIntDataRoamGuardEnabled(Ljava/lang/String;)V

    goto :goto_1

    .line 861
    :cond_b
    const/16 v3, 0x7a

    if-ne p1, v3, :cond_c

    .line 862
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

    invoke-virtual {v3, p2}, Lcom/sprint/internal/ExtInterfaceConnector;->setDMName(Ljava/lang/String;)V

    goto :goto_1

    .line 864
    :cond_c
    const/16 v3, 0x7b

    if-ne p1, v3, :cond_d

    .line 865
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

    invoke-virtual {v3, p2}, Lcom/sprint/internal/ExtInterfaceConnector;->setDMAddr(Ljava/lang/String;)V

    goto :goto_1

    .line 867
    :cond_d
    const/16 v3, 0x7c

    if-ne p1, v3, :cond_e

    .line 868
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mExtInterfaceConnector:Lcom/sprint/internal/ExtInterfaceConnector;

    invoke-virtual {v3, p2}, Lcom/sprint/internal/ExtInterfaceConnector;->setDMAddrType(Ljava/lang/String;)V

    goto :goto_1

    .line 871
    :cond_e
    const/4 v0, 0x0

    goto :goto_1

    .line 905
    .restart local v2       #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :catch_0
    move-exception v1

    .line 906
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "wait><"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 911
    .end local v1           #ie:Ljava/lang/InterruptedException;
    .end local v2           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/sprint/internal/SystemProperties;->setStringViaDMAgent(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setStringViaDMAgent(ILjava/lang/String;)V
    .locals 37
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 562
    const/16 v32, 0x1a5

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 563
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "setBC10"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v32, ":IDOMADM"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 565
    .local v16, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v16, :cond_1

    .line 567
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 568
    const-string v32, "1"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 569
    const-string v32, "C82755070740"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 570
    .local v12, aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BC10 set 1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    if-eqz v16, :cond_0

    .line 583
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    :cond_0
    :goto_1
    const/16 v16, 0x0

    .line 819
    .end local v12           #aTemp:Ljava/lang/String;
    .end local v16           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :cond_1
    :goto_2
    return-void

    .line 573
    .restart local v16       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :cond_2
    :try_start_2
    const-string v32, "C82755070007"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 574
    .restart local v12       #aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BC10 set 0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 577
    .end local v12           #aTemp:Ljava/lang/String;
    :catch_0
    move-exception v32

    .line 582
    if-eqz v16, :cond_3

    .line 583
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 588
    :cond_3
    :goto_3
    const/16 v16, 0x0

    .line 589
    goto :goto_2

    .line 585
    .restart local v12       #aTemp:Ljava/lang/String;
    :catch_1
    move-exception v21

    .line 586
    .local v21, e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 585
    .end local v12           #aTemp:Ljava/lang/String;
    .end local v21           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v21

    .line 586
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 581
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v32

    .line 582
    if-eqz v16, :cond_4

    .line 583
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 588
    :cond_4
    :goto_4
    const/16 v16, 0x0

    throw v32

    .line 585
    :catch_3
    move-exception v21

    .line 586
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v33, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v34, "close Connection fail"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 594
    .end local v16           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    .end local v21           #e:Ljava/lang/Exception;
    :cond_5
    const/16 v32, 0x1a7

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 595
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "setSO68"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v32, ":IDOMADM"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 597
    .restart local v16       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v16, :cond_1

    .line 599
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 600
    const-string v32, "1"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 601
    const-string v32, "C827061001"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 602
    .restart local v12       #aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SO68 set 1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 614
    :goto_5
    if-eqz v16, :cond_6

    .line 615
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 620
    :cond_6
    :goto_6
    const/16 v16, 0x0

    .line 621
    goto/16 :goto_2

    .line 605
    .end local v12           #aTemp:Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v32, "C827061000"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 606
    .restart local v12       #aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SO68 set 0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 609
    .end local v12           #aTemp:Ljava/lang/String;
    :catch_4
    move-exception v32

    .line 614
    if-eqz v16, :cond_8

    .line 615
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 620
    :cond_8
    :goto_7
    const/16 v16, 0x0

    .line 621
    goto/16 :goto_2

    .line 617
    .restart local v12       #aTemp:Ljava/lang/String;
    :catch_5
    move-exception v21

    .line 618
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 617
    .end local v12           #aTemp:Ljava/lang/String;
    .end local v21           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v21

    .line 618
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 613
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v32

    .line 614
    if-eqz v16, :cond_9

    .line 615
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 620
    :cond_9
    :goto_8
    const/16 v16, 0x0

    throw v32

    .line 617
    :catch_7
    move-exception v21

    .line 618
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v33, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v34, "close Connection fail"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 626
    .end local v16           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    .end local v21           #e:Ljava/lang/Exception;
    :cond_a
    const/16 v32, 0x1ae

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 627
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SetForceLTE:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v5, ""

    .line 629
    .local v5, CMD_getresult:Ljava/lang/String;
    const-string v6, ""

    .line 630
    .local v6, CMD_setresult:Ljava/lang/String;
    const-string v7, ":DMD:PROVISION:GET_LTE_FORCE_FLAG"

    .line 631
    .local v7, DMD_LTE_FORCE_FLAG_GET:Ljava/lang/String;
    const-string v8, ":DMD:PROVISION:SET_LTE_FORCE_FLAG"

    .line 632
    .local v8, DMD_LTE_FORCE_FLAG_SET:Ljava/lang/String;
    const-string v11, "com.htc.omadm.LTE_FORCE_FLAG_STATE_CHANGE"

    .line 633
    .local v11, LTE_FORCE_FLAG_STATE_CHANGE:Ljava/lang/String;
    const-string v10, "1"

    .line 634
    .local v10, Enable:Ljava/lang/String;
    const-string v9, "0"

    .line 636
    .local v9, Disable:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 638
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "GetForceLTE first:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 641
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 642
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 643
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "CMD_setresult:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 645
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Broadcast intent: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v23, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 652
    .end local v23           #i:Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 653
    invoke-static {}, Lcom/sprint/internal/dm/Dmdcmd;->getInstance()Lcom/sprint/internal/dm/Dmdcmd;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sprint/internal/dm/Dmdcmd;->SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 654
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "CMD_setresult:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 656
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Broadcast intent: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .restart local v23       #i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 669
    .end local v5           #CMD_getresult:Ljava/lang/String;
    .end local v6           #CMD_setresult:Ljava/lang/String;
    .end local v7           #DMD_LTE_FORCE_FLAG_GET:Ljava/lang/String;
    .end local v8           #DMD_LTE_FORCE_FLAG_SET:Ljava/lang/String;
    .end local v9           #Disable:Ljava/lang/String;
    .end local v10           #Enable:Ljava/lang/String;
    .end local v11           #LTE_FORCE_FLAG_STATE_CHANGE:Ljava/lang/String;
    .end local v23           #i:Landroid/content/Intent;
    :cond_c
    const/16 v32, 0x1af

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 670
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "setEHRPD"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v32, ":IDOMADM"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 672
    .restart local v16       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v16, :cond_1

    .line 674
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 675
    const-string v32, "1"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 676
    const-string v32, "C827641304"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 677
    .restart local v12       #aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EHRPD set 1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 689
    :goto_9
    if-eqz v16, :cond_d

    .line 690
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 695
    :cond_d
    :goto_a
    const/16 v16, 0x0

    .line 696
    goto/16 :goto_2

    .line 680
    .end local v12           #aTemp:Ljava/lang/String;
    :cond_e
    :try_start_c
    const-string v32, "C827641301"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 681
    .restart local v12       #aTemp:Ljava/lang/String;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EHRPD set 0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_9

    .line 684
    .end local v12           #aTemp:Ljava/lang/String;
    :catch_8
    move-exception v32

    .line 689
    if-eqz v16, :cond_f

    .line 690
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 695
    :cond_f
    :goto_b
    const/16 v16, 0x0

    .line 696
    goto/16 :goto_2

    .line 692
    .restart local v12       #aTemp:Ljava/lang/String;
    :catch_9
    move-exception v21

    .line 693
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 692
    .end local v12           #aTemp:Ljava/lang/String;
    .end local v21           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v21

    .line 693
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v33, "close Connection fail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 688
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v32

    .line 689
    if-eqz v16, :cond_10

    .line 690
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 695
    :cond_10
    :goto_c
    const/16 v16, 0x0

    throw v32

    .line 692
    :catch_b
    move-exception v21

    .line 693
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v33, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v34, "close Connection fail"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 701
    .end local v16           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    .end local v21           #e:Ljava/lang/Exception;
    :cond_11
    const/16 v32, 0x1ad

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 703
    :try_start_f
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "slte"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    const-string v33, "changeUserSettingLTE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    sget-object v36, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v36, v34, v35

    invoke-virtual/range {v32 .. v34}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 705
    .local v15, changeUserSettingLTE:Ljava/lang/reflect/Method;
    const-string v32, "1"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_2

    .line 712
    .end local v15           #changeUserSettingLTE:Ljava/lang/reflect/Method;
    :catch_c
    move-exception v21

    .line 713
    .restart local v21       #e:Ljava/lang/Exception;
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "exception "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 709
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v15       #changeUserSettingLTE:Ljava/lang/reflect/Method;
    :cond_12
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_2

    .line 727
    .end local v15           #changeUserSettingLTE:Ljava/lang/reflect/Method;
    :cond_13
    const/16 v32, 0x1b0

    move/from16 v0, p1

    move/from16 v1, v32

    if-lt v0, v1, :cond_16

    const/16 v32, 0x1b7

    move/from16 v0, p1

    move/from16 v1, v32

    if-gt v0, v1, :cond_16

    .line 728
    move/from16 v0, p1

    add-int/lit16 v4, v0, -0x1b0

    .line 729
    .local v4, APNnum:I
    const/4 v3, 0x0

    .line 730
    .local v3, APNcontent:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->APNCa:[Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object p2, v32, v4

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sprint/internal/APNCtl;->getInstance(Landroid/content/Context;)Lcom/sprint/internal/APNCtl;

    move-result-object v24

    .line 733
    .local v24, mAPNCtl:Lcom/sprint/internal/APNCtl;
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->init_InputCMD()V

    .line 734
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->dumpQUERYAPNStructure()V

    .line 735
    const-string v32, "0"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    .line 736
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "insert"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->InputAPNString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 738
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/sprint/internal/APNCtl;->SetApnStructure([Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->dumpCMDAPNStructure()V

    .line 740
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->SetAPN()I

    goto/16 :goto_2

    .line 743
    :cond_14
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->CheckAPNStructureExist(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 744
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "erase"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->ParseAPNStructureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sprint/internal/APNCtl;->InputAPNString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 746
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/sprint/internal/APNCtl;->ReplaceEnabldToDisable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/sprint/internal/APNCtl;->SetApnStructure([Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {v24 .. v24}, Lcom/sprint/internal/APNCtl;->SetAPN()I

    goto/16 :goto_2

    .line 751
    :cond_15
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "already erase"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 756
    .end local v3           #APNcontent:[Ljava/lang/String;
    .end local v4           #APNnum:I
    .end local v24           #mAPNCtl:Lcom/sprint/internal/APNCtl;
    :cond_16
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v32, ":XCMD"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 757
    .restart local v16       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    new-instance v16, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v16           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v32, ":XCMD"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 758
    .restart local v16       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 760
    const/16 v32, 0x23

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 761
    const/16 v32, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 763
    .local v25, min1:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toCharArray()[C

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 764
    .local v17, dwCdmaMin1:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v28

    .line 765
    .local v28, strHexCdmaMin1:Ljava/lang/String;
    const/16 v32, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 766
    invoke-static/range {v28 .. v28}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 767
    .local v13, cdmaMin1:Ljava/lang/String;
    const-string v32, "C018"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 769
    const/16 v32, 0x0

    const/16 v33, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 771
    .local v26, min2:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 772
    .local v19, dwCdmaMin2:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-wide/16 v33, 0x3

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 773
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v29

    .line 774
    .local v29, strHexCdmaMin2:Ljava/lang/String;
    const/16 v32, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 775
    invoke-static/range {v29 .. v29}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 777
    .local v14, cdmaMin2:Ljava/lang/String;
    const-string v32, "C019"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 778
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_2

    .line 781
    .end local v13           #cdmaMin1:Ljava/lang/String;
    .end local v14           #cdmaMin2:Ljava/lang/String;
    .end local v17           #dwCdmaMin1:J
    .end local v19           #dwCdmaMin2:J
    .end local v25           #min1:Ljava/lang/String;
    .end local v26           #min2:Ljava/lang/String;
    .end local v28           #strHexCdmaMin1:Ljava/lang/String;
    .end local v29           #strHexCdmaMin2:Ljava/lang/String;
    :cond_17
    const/16 v32, 0x2b

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 782
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 783
    .local v22, haString:Ljava/lang/String;
    const-string v32, "C007"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 784
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_2

    .line 788
    .end local v22           #haString:Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 790
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transIPtoHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 806
    :cond_19
    :goto_d
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 807
    .local v27, result:Z
    sget-object v32, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "setString("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "):"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/16 v32, 0x1

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/sprint/internal/SystemProperties;->refreshUI()V

    .line 814
    :cond_1a
    const/16 v30, 0x1

    .line 815
    .local v30, tag:Z
    if-eqz v30, :cond_1

    .line 816
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_2

    .line 793
    .end local v27           #result:Z
    .end local v30           #tag:Z
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 795
    move-object/from16 v31, p2

    .line 796
    .local v31, tmp:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/sprint/internal/dm/DMAgentConnector;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 797
    goto :goto_d

    .line 799
    .end local v31           #tmp:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 800
    const/16 v32, 0x5b

    move/from16 v0, p1

    move/from16 v1, v32

    if-eq v0, v1, :cond_1d

    const/16 v32, 0x5e

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 801
    :cond_1d
    const/16 v32, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 803
    :cond_1e
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_d
.end method
